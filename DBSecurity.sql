#truncate table recensione;
#truncate table notizia;

#drop schema universogames;

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
insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("CYBERPUNK 2077 ATTENDE I DLC E LE ESPANSIONI: NUMERI E DETTAGLI AVVISTATI DA DATAMINER:",
"Mentre una grande patch da 38 GB di Cyberpunk 2077 appare su Epic Games Store, emergono in rete interessanti
dettagli sulla possibile struttura del supporto post lancio in programma per il titolo.Come noto da tempo, 
i prossimi mesi dovrebbero vedere CD Projekt RED pronta ad ampliare l'universo di Night City, tramite DLC gratuiti ed espansioni a 
pagamento. Per il momento, la software house si è limitata a confermare che i primi 
contenuti aggiuntivi esordiranno nel corso del 2021, ma manca ancora un calendario preciso. 
Assenti anche dettagli più specifici su quelli che saranno i contenuti proposti: 
circostanza che ha condotto diversi dataminer a dedicarsi alla ricerca di indizi 
tra le maglie del codice di Cyberpunk 2077.Tra questi ultimi, trova spazio anche un utente Reddit dall'occhio particolarmente attento, 
che afferma di essere riuscito a recuperare diversi dati, tra cui i nomi provvisori dei DLC del GDR. Secondo il dataminer, 
questi ultimi sarebbero 17 e risponderebbero alle seguenti nomenclature:
dlc1_swp,
dlc2_jposes,
dlc3_kab01,
dlc4_quartz,
dlc5_jackets,
dlc6_apart,
dlc7_pwp,
dlc8_mirror,
dlc9_arr06,
dlc10_monster,
dlc11_jlook,
dlc12_mfinish,
dlc13_twp,
dlc14_arr12,
dlc15_ngplus,
dlc16_jpn06
dlc17_bwp.
In aggiunta, prosegue l'indagatore di codici, sarebbero previste due grandi espansioni a pagamento, 
indicate come EP1 ed EP2. Se su quest'ultima il dataminer afferma di non aver scovato indizi, per quanto riguarda invece la prima, 
l'utente afferma che amplierà l'area di Pacifica e aggiungerà una Combat Zone. A livello narrativo, inoltre, EP1 dovrebbe
veder aggiungersi altre quest all'elenco di attività proposte da Mr. Hands.
Ricordiamo tuttavia che quanto avvistato dal dataminer potrebbe non rappresentare correttamente i piani di CD Projekt RED. Per saperne 
di più, non resta che attendere eventuali conferme da parte del team polacco. Nel frattempo, 
a dispetto delle polemiche che hanno accompagnato il lancio del gioco, Cyberpunk 2077 è stato il gioco più venduto su PS4 a giugno.", "2021-7-20", false, 1, 1, 18);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("CYBERPUNK 2077 È DI NUOVO DISPONIBILE SUL PLAYSTATION STORE!",
"Cyberpunk 2077 fa il suo ritorno sul PlayStation Store ed è ora disponibile in tutto il mondo.
Potete giocarlo su PlayStation 4 Pro e PlayStation 5. In aggiunta, un upgrade per le console next gen 
sarà disponibile gratuitamente nella seconda metà del 2021, per tutti i possessori della versione PS4 di Cyberpunk 2077. 
Questo upgrade permetterà al titolo di sfruttare appieno l’hardware più potente presente nelle console di nuova generazione.
Gli utenti potrebbero ancora riscontrare dei problemi di prestazioni con la versione PS4 del gioco mentre continuiamo 
a rilasciare aggiornamenti per migliorare la stabilità su tutte le piattaforme. Potete avere la migliore esperienza 
di gioco su PlayStation, giocando su PS4 Pro e PS5.", "2021-7-13", true, 1, 1, 19);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("ANIMAL CROSSING NEW HORIZONS TRASFORMA NINTENDO SWITCH: LE SPETTACOLARI DOCK DEI FAN",
"Dopo aver conquistato i giocatori diventando un fenomeno pop di portata mondiale, 
Animal Crossing New Horizons conquista anche gli appassionati dei celebri mattoncini danesi grazie 
al lavoro di OrangeTeam, uno dei LEGO User Group (LUG) più attivi in Italia e riconosciuto ufficialmente da LEGO.Oltre 6.000 mattoncini
e tre mesi di realizzazione in pieno lockdown, che hanno visto la nascita del diorama di un’isola di Animal Crossing 
New Horizons con i personaggi più iconici del videogioco, dal cane musicista K.K. Slider al gabbiano marinaio Gulliver.
Un’isola reale con tutti gli elementi che i fan della serie hanno imparato a conoscere: dal Banco da lavoro agli alberi, 
fino a un immancabile falò con panchine pronte ad accogliere gli Abitanti dell’Isola. Nonostante le complicazioni dovute al lockdown, 
dopo tre mesi di lavoro Animal Crossing New Horizons è finalmente giunto nel mondo reale e oltre ai personaggi 
già realizzati altri personaggi come Tom Nook sbarcheranno presto sull'isola LEGO.Sui canali ufficiali di 
OrangeTeamLug arriveranno presto delle pratiche guide alla costruzione, che consentiranno di riprodurre 
fedelmente i personaggi entrati nell’immaginario collettivo nell’anno trascorso dall’uscita del gioco.
Animal Crossing New Horizons ha venduto oltre 35 milioni di copie dal marzo 2020 ad oggi, sette milioni delle quali sono in Europa.", "2021-6-30",true, 1,5, 3);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("ANIMAL CROSSING NEW HORIZONS FESTEGGIA I CAMPIONATI EUROPEI DI CALCIO",
"L'isola di Calciopea debutta su Animal Crossing New Horizons: uno spazio pensato per vivere i campionati europei di calcio con spogliatoi,
uno stadio, postazioni fotografica e Il Viale delle Nazioni, una zona dedicata alle 24 nazionali che prenderanno parte a UEFA EURO 2020.
L’isola è accessibile anche attraverso un sito web che offre in aggiunta a un tour virtuale delle aree visitabili, 
anche un kit per il tifoso da indossare in-game con maglia di gioco, bandierina e makeup,
utile per supportare gli Azzurri e le altre compagini impegnate nella fase finale della competizione.
Animal Crossing New Horizons è il videogioco Nintendo venduto più velocemente in Europa, 
con oltre 7 milioni di copie vendute e si dimostra ancora una volta simbolo della creatività per eccellenza, 
un luogo di incontro ideale per settori e ambiti più disparati, dentro e fuori dal mondo dei videogiochi.
Animal Crossing New Horizons ha venduto più di 35 milioni di copie dal marzo 2020 ad oggi diventando un vero 
e proprio fenomeno di costume e conquistando anche attori, cantanti e personaggi del mondo dello spettacolo.
Questa è solo l'ultima delle numerose collaborazioni tra Animal Crossing e il mondo reale come dimostra l'arrivo delle jersey 
NSS x Puma x StockX dedicate a Napoli o il diorama Animal Crossing x LEGO realizzato da OrangeTeam.", "2021-7-1", false, 1,5, 4);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("THE LAST OF US: STAY UN CORTO FANMADE CON UN FINALE STRAZIANTE",
"Un artista VFX che ha già dato il suo prezioso contributo alla realizzazione di kolossal cinematografici
quali Deadpool 2 e Star Wars: Episodio IX - L'ascesa di Skywalker ha dato vita ad un impressionante
corto fanmade ispirato a The Last of Us, capolavoro di Naughty Dog e uno dei titoli più iconici
all'interno della lineup Sony.Stay è il titolo del sorprendente corto che, pur includendo il
noto personaggio di Ellie, racconta l'emozionante storia di due volti completamente originali,
Emily e Sean, qui condensata in circa 7 minuti di filmato. Se inizialmente troviamo i due amanti
in una situazione di calma e complicità, in seguito le cose diventano estremamente più drammatiche
alla prima apparizione dei clicker, forse le creature che più sono in grado di mettere in stato 
di ansia i giocatori (in questo gli spettatori) di The Last of Us. Sfortunatamente, 
sarà Emily a pagare per prima le conseguenze degli eventi venendo infettata da parte
di una delle mostruose creature. Vi invitiamo a prendere visione del video che trovate in cima
per dare uno sguardo al finale a dir poco straziante con cui si conclude il corto.
Come precisato all'interno della descrizione del filmato, Stay è un'idea di Joshua Toonen 
e realizzata grazie alla collaborazione di 40 artisti. Non è la prima volta in cui assistiamo
ad un tributo questo genere: in passato abbiamo già avuto la fortuna di ammirare in azione un 
altro corto ispirato al gioco, The Last of Us Ellie's Revenge. Tutto questo, in attesa di conoscere
la data di uscita della serie TV di HBO dedicata a The Last of Us che si dipanerà nel corso di 10 episodi.", "2021-7-18", false, 1,13, 59);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("THE LAST OF US 2: IN ARRIVO UN TAGLIO DI PREZZO PERMANENTE? INDIZI DAL PS STORE USA",
"Sul PlayStation Store americano, il capolavoro di Naughty Dog viene proposto ad un prezzo inferiore, ma senza alcuna indicazione su sconti applicati o promozioni in atto. L'ipotesi del taglio di prezzo permanente di The Last of Us 2 sta già alimentando un acceso dibattito sui social e sui forum più frequentati.
Come segnalato dagli appassionati che stanno affollando di messaggi le bacheche dei portali online e dei social, l'edizione Standard di The Last of Us Parte 2 viene venduta sul PlayStation Store americano a 39,99 dollari. 
Allo stesso modo, anche la Digital Deluxe è interessata da questo cambio di prezzo inatteso e viene proposta all'utenza PS4 e PS5 statunitense a 49,99 dollari.
A differenza delle altre promozioni in corso, la piattaforma digitale di Sony non riporta alcuna indicazione sulla conclusione dello sconto, da qui la ridda di commenti della community che spera nell'annuncio imminente di un taglio di prezzo definitivo per TLOU 2.
Nel momento in cui scriviamo, nelle diverse versioni europee del PlayStation Store il prezzo indicato per le edizioni Standard e Digital Deluxe di The Last of Us 2 continua ad essere rispettivamente di 69,99 e 79,99 euro. Anche il PS Store britannico riporta un prezzo in sterline rapportabile a quello italiano e degli altri mercati del Vecchio Continente.Rimaniamo perciò in attesa di ricevere delle informazioni esaustive da parte di Naughty Dog e Sony Interactive Entertainment.
Nel frattempo, ricordiamo a chi ci segue che sulle nostre pagine potete leggere lo speciale sull'update PS5 di The Last of Us 2 e la differenza dei 60fps.", "2021-7-14",true, 2, 13, 60);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("FALLOUT 76: DENTRO IL VAULT - AGGIORNAMENTI DI LUGLIO 2021",
"Viene difficile credere che l’aggiornamento Regno d’acciaio sia già stato pubblicato da un’intera settimana! Ci siamo divertiti un mondo ad affrontare la nuova serie di missioni della Confraternita d’Acciaio, a salire di grado sul tavoliere della stagione 5 e a creare oggetti leggendari insieme a voi. Con queste nuove missioni e funzionalità finalmente disponibili, stiamo già guardando al nostro prossimo aggiornamento importante di Fallout 76, la cui pubblicazione è prevista a settembre.
Non abbiamo ancora discusso di cosa ci sarà nell’aggiornamento di settembre, ma includerà una nuova e significativa funzionalità che offrirà ai giocatori ancora più varietà nel modo di vivere Fallout 76. Stiamo lavorando per riaprire il server pubblico di test questo mese affinché la community possa collaudare questa nuova funzionalità e condividere il proprio feedback il prima possibile. Anche se non possiamo ancora fornire tutti i dettagli, tenete d’occhio Fallout.com la prossima settimana per aggiornamenti su contenuti e modalità di accesso al PTS.
Questa settimana abbiamo riscontrato un volume insolitamente elevato di movimenti sotterranei. Al momento, crediamo che i minatori talpa cacciatori di tesori si stiano preparando ancora una volta a uscire in superficie. Sventate i loro piani di saccheggio cercando e abbattendo quanti più cacciatori di tesori possibile nel fine settimana. Ognuno di loro lascerà a terra del bottino leggendario e un contenitore da minatore talpa che potete aprire per ottenere alcuni dei tesori che hanno trovato.
Inoltre, i commercianti presso le stazioni ferroviarie vi venderanno contenitori da minatore talpa vuoti in cambio di qualche tappo. Usateli per creare e aprire contenitori pieni e ottenere ancora più bottino. L’evento inizia oggi. Qui sotto, gli orari di inizio e fine.", "2021-7-10", false, 5, 8, 23);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("FALLOUT 76: CREAZIONI C.A.M.P.: MINATORI TALPA",
"Il tema per le creazioni C.A.M.P. di giugno era “Minatori talpa”! Da condotti minerari abbandonati a rifugi sventrati, passando per scavi in piena regola, la community si è dimostrata in grado di realizzare qualsiasi cosa, utilizzando solo qualche attrezzo e un’abbondante quantità di pietre e fango.
La sfida più difficile di ogni mese è scegliere solo alcuni tra i meravigliosi C.A.M.P. e rifugi che avete condiviso. Consigliamo quindi di ammirare TUTTE le creazioni sul nostro canale Discord ufficiale. Se non siete riusciti a inviare il materiale in tempo l’ultima volta, nessun problema! Luglio è già qui! Il tema di questo mese è “Circo”. Ricordatevi di inviare le foto dei vostri C.A.M.P. o rifugi tramite Discord entro il 28 luglio per avere modo di partecipare ed essere selezionati nell’articolo del prossimo mese.
Non vediamo l’ora di goderci i vostri C.A.M.P.!", "2021-7-13",true, 6,8, 24);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("MONSTER HUNTER RISE RICEVE LA NUOVA MISSIONE EVENTO: ECCO I BONUS E LE SFIDE DA COMPLETARE",
"Il supporto post-lancio di Monster Hunter Rise prosegue con la nuova Missione Evento organizzata da Capcom per spronare tutti gli appassionati dell'ultimo kolossal action ruolistico su Switch a proseguire la propria avventura.
L'ultima attività ingame introdotta dalla software house giapponese è già disponibile dal 9 luglio e può essere sbloccata semplicemente recandosi al banco delle missioni della base di caccia.
Una volta acquisita, la Missione Evento Furia: Festa del Fango sprona gli utenti a recarsi presso la Fortezza Rossa per difendere il cancello finale dagli assalti delle creature del posto.Per partecipare a questa attività, è richiesto il raggiungimento del livello GC 4 o superiore.
Come ricompensa per i servizi resi al villaggio di Kamura e agli abitanti degli insediamenti limitrofi, gli avventurieri di Monster Hunter Rise maggiormente dediti alla causa potranno sbloccare il Set Adesivi Festival per customizzare ulteriormente il proprio alter-ego.
In calce alla notizia trovate un'immagine che mostra in anteprima alcuni dei set di cui si compone il nuovo pacchetto come bonus per il completamento dell'ultima attività endgame.
Se vi state avventurando solo adesso nelle lande dell'ultimo capolavoro di Capcom, o intendete farlo a breve, vi tornerà certamente comodo leggere questo nostro speciale su armi e armature più indicate per i novizi di MH Rise.", "2021-6-1", true, 3, 4, 43);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("MONSTER HUNTER RISE: A CACCIA DEL LEVIATANO ALMUDRON NELLA NUOVA MISSIONE EVENTO",
"Dopo aver svelato i nuovi contenuti di giugno e luglio di Monster Hunter Rise, gli sviluppatori di Capcom arricchiscono ulteriormente la già enorme esperienza ludica del loro action GDR lanciando una nuova Missione Evento con sfide di caccia e bonus per chi sarà in grado di avere la meglio su Almudron.La nuova attività ingame di MH Rise è attiva dal 25 giugno e sprona gli appassionati del kolossal ruolistico per Nintendo Switch a partecipare all'evento Almudron, Vittima della Moda, una sfida di alto livello per cacciatori di livello GC8 e superiore.Una volta accettata la sfida attraverso l'apposita opzione accessibili dal banco delle missioni evento del villaggio,
gli esploratori della dimensione fantasy di Monster Hunter Rise devono recarsi nelle Piane Sabbiose e cacciare il possente leviatano Almudron per ottenere i materiali per forgiare lo stile armatura speciale Pelle Nera.
Ma non è tutto.Chi desidera mettersi alla prova in sfide altrettanto impegnative, può infatti partecipare a diverse missioni introdotte di recente da Capcom per rimpolpare di contenuti l'endgame di Monster Hunter Rise:
Wyvern rapaci della rovina? - caccia Gran Baggi, Gran Izuchi e Kulu-Ya-Ku nell'Arena per ricevere i materiali con cui sbloccare la skin di Tsukino per il companion
Cuore di ninja - caccia Tobi-Kadachi, Barrioth e Nargacuga nell'Arena per ottenere i titoli speciali Ninja, Esca, Duprrr-lica, Spedito, Tecnica, Fianco, Il codice, Prepara!, È così e Avanzata!
Parasole danzante, aria nevosa - caccia un Aknosom nelle Isole Ghiacciate per ottenere gli Adesivi \Set Gufufo
Un'alleanza danzante - caccia un Somnacanth nelle Isole Ghiacciate per sbloccare il gesto Mandare un Bacio
La fretta è cattiva consigliera - caccia un Arzuros Apex nella Foresta inondata per ottenere Occhiali arguti
A chi si sta avventurando solo adesso nelle pericolose lande del capolavoro di Capcom, consigliamo di leggere questo nostro approfondimento sulle armi e le armature più indicate per i novizi di MH Rise.", "2021-7-17", false, 4, 4, 44);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("WATCH DOGS LEGION BLOODLINE: UN VIDEO DIETRO LE QUINTE PER L'ATTESA ESPANSIONE",
"Ubisoft ha pubblicato un video dietro le quinte di Watch Dogs: Legion - Bloodline per svelare alcuni dettagli sullo sviluppo. Per chi non sapesse di cosa stiamo parlando, si tratta della nuova espansione del gioco con protagonista Aiden Pearce. Sarà pubblicata il 6 luglio 2021 su PC, Xbox One, Xbox Series X e S, PS4 e PS5.
Legion sarà acquistabile singolarmente come DLC o scaricabile come parte del Season Pass di Watch Dogs Legion.", "2021-7-21", true, 6, 2, 69);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("WATCH DOGS LEGION: L'ESPANSIONE BLOODLINE CON AIDEN PEARCE ARRIVA A LUGLIO",
"Nelle fasi finali del pre-show dell'Ubisoft Forward è stato mostrato lo story trailer di Watch Dogs Legion Bloodline, la nuova espansione del terzo capitolo della serie che sarà disponibile a partire dal prossimo 6 luglio.
Il nuovo contenuto, parte del Season Pass relativo a Watch Dogs Legion, vedrà il ritorno come personaggio principale di Aiden Pearce, protagonista del primo capitolo della serie uscito nel 2014. Assieme a lui farà il suo ritorno anche Wrench, già visto in Watch Dogs 2.
Pearce si trova nella Londra post-Brexit dopo aver ricevuto una chiamata di una sua vecchia conoscenza, Jordi Chin, che gli ha chiesto aiuto per creare una nuova organizzazione DedSec operativa nel Regno Unito. Bloodline promette di offrire una storia carica di tensione e coinvolgimento, con Aiden che rischierà spesso la sua vita ritrovandosi coinvolto in qualcosa di ancora più grande di quanto immaginato.
Dovrà quindi fare affidamento su tutte le sue abilità di hacker e con le armi da fuoco per sopravvivere alle minacce di una Londra ostile.
Ricordiamo che Ubisoft ha di recente diffuso l'update 4.5 di Watch Dogs Legion che aggiunge diversi nuovi contenuti al gioco base, incluso l'arrivo della nonnina hacker Helen come Operatrice aggiuntiva gratis a partire da martedì 15 giugno.", "2021-6-13", false, 6, 2, 70);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("LITTLE NIGHTMARES 2: TARSIER STUDIOS PASSERà AD ALTRO, MA BANDAI NAMCO POTREBBE PROSEGUIRE LA SERIE",
"Little Nightmares 2 ha confermato ulteriormente la validità della serie e le capacità del team Tarsier Studios, ma il team svedese in ogni caso ha concluso l'impegno sulla serie, volendo ora passare a nuovi progetti, lasciando però aperta la porta a ulteriori sviluppi da parte di Bandai Namco.
Non abbiamo nulla da annunciare in questo momento, ma visto che abbiamo ricevuto così tanto supporto da parte dei fan in tutto il mondo con il rilascio di Little Nightmares 2, ci sentiamo propensi a portare nuovi contenuti in futuro, ha infatti scritto il publisher Bandai Namco con una comunicazione ufficiale.", "2021-5-11", true, 3, 3, 38);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("LITTLE NIGHTMARES 2: L'ORRORE AI FORNELLI, ANNUNCIATO COOKING MONO",
"Con oltre 1 milione di copie vendute per Little Nightmares II, Bandai Namco festeggia il traguardo con un succulento annuncio legato all'inquietante e cupa avventura.Nonostante una Tarsier Studio al lavoro su nuove IP, l'universo dei Piccoli Incubi è infatti pronto ad offrire ancora un'ulteriore gustosa avventura.
Come potete verificare direttamente in calce a questa news, Bandai Namco ha infatti annunciato ufficialmente Little Nightmares 2: Cooking Mono. Al momento non sono stati diffusi trailer dedicati, ma dagli account social ufficiali della serie è stata diffusa la key art del prodotto, la cui natura non è però al momento del tutto chiara: si tratterà di un titolo stand-alone oppure di un DLC?
In attesa di saperne di più sulle modalità di distribuzione, si apprende che Little Nightmares 2: Cooking Mono vedrà il giocatore impegnato a rifornire di manicaretti la caffetteria di una scuola rimasta orfana di Lunch Lady. La cuoca dell'istituto è infatti inspiegabilmente assente e toccherà proprio al povero Mono destreggiarsi tra le richieste di un gruppo di bulli affamati. 
Fallire è fuori discussione: significherebbe infatti divenire il pasto degli spietati studenti! Ancora restia a comunicare la data di uscita di Little Nightmares 2: Cooking Mono, Bandai Namco ha comunque invitato i videogiocatori con la passione per la cucina a inviare le proprie ricette per essere si da ora d'aiuto a Mono: i migliori 3 cuochi riceveranno un premio via mail.", "2021-6-10", false, 2, 3, 39);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("GRAN TURISMO SPORT: POLYPHONY CI PRESENTA IL NUOVO UPDATE GRATIS CON UN TRAILER",
"Al netto del work in progress attualmente in corso per dare vita al settimo capitolo numerato della serie automobilistica, Katsunori Yamauchi e Polyphony Digital non si sono dimenticati di Gran Turismo Sport. 
Il titolo PlayStation si aggiornerà nella giornata di domani e vedrà l'introduzione di una nuova auto di una celebre casa giapponese.L'auto che si prepara ad entrare nei box degli appassionati è la Toyota GR 86 '21, che in realtà non avevamo faticato a riconoscere già con il criptico teaser pubblicato qualche giorno fa da Polyphony.
Il nuovo bolide sarà introdotto da domani e potrà essere ottenuto da chiunque in via del tutto gratuita.Grazie al trailer che vi abbiamo riportato in cima possiamo dare un primo sguardo al design dell'auto ed apprezzare i ruggiti del suo motore.
I piloti di Gran Turismo Sport potranno già posare le proprie mani sul volante della Toyota GR 86 '21, che ancora non è stata lanciata ufficialmente sul mercato e che si appresta a debuttare durante questo weekend al Goodwood Festival of Speed.Ricordiamo che l'aggiornamento sarà preceduto da una fase di manutenzione che si terrà domani, giovedì 8 luglio, dalle ore 08:00 alle 10:00, e che renderà temporaneamente fuori servizio le funzionalità online del gioco.
In attesa che il settimo capitolo arrivi su PlayStation 5, vi invitiamo a ripercorrere insieme a noi la storia dell'iconica serie di Gran Turismo.", "2021-06-19", true, 5, 10, 33);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("GRAN TURISMO: ANNUNCIATA LA COLLABORAZIONE CON FANATEC PER LO SVILUPPO DI NUOVE PERIFERICHE DA GIOCO!",
"Fanatec, marchio leader nell'hardware per corse simulate, ha annunciato il 13 luglio una nuova collaborazione con Gran Turismo per lo sviluppo di nuove periferiche che utilizzeranno tecnologie avanzate di force feedback.
L'azienda di hardware per corse simulate ha dichiarato che la collaborazione punta a ridurre il divario tra corse simulate e reali.
Informazioni su Fanatec:
Fondata nel 1997, Fanatec ha portato nel mondo delle corse simulate diverse innovazioni, come l'incorporazione della tecnologia a cinghia nelle basi per volanti commerciali, la tecnologia delle celle di carico e dei sensori contactless nelle pedaliere commerciali e il primo sistema ad azionamento diretto per PlayStation®4. Le collaborazioni con i costruttori automobilistici di punta e le serie di corse più famose hanno aumentato la visibilità delle corse simulate, rendendole parte integrante degli sport motoristici moderni.
Thomas Jackermeier, Amministratore delegato di Endor AG:
Per molti anni Kazunori Yamauchi ha esplorato nuove frontiere sul fronte software, ricoprendo un ruolo fondamentale nell'ascesa delle corse simulate. Ora lavoriamo insieme con l'obiettivo comune di continuare verso l'unione di corse virtuali e reali. Abbiamo in programma diversi progetti, che sono impaziente di vedere attuati in Gran Turismo.
Kazunori Yamauchi, Produttore della serie Gran Turismo:Fanatec è da molti anni un pioniere della tecnologia per simulazioni. Qualità e prestazioni dei suoi prodotti sono impressionanti, ma è il suo desiderio di innovare negli sport motoristici a essere particolarmente in sintonia con noi. Polyphony Digital e Fanatec condividono lo stesso spirito e le stesse ambizioni di lungo periodo. Sono impaziente di scoprire ciò che potremo creare insieme. ", "2021-09-07", false, 4, 10, 34);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("RATCHET & CLANK RIFT APART: SUCCESSO NEGLI USA, È IL GIOCO PIÙ VENDUTO DI GIUGNO 2021",
"Dopo aver saputo delle ottime vendite di Xbox Series X/S, Switch e PS5 da NPD, gli analisti della società di ricerche di mercato statunitense segnalano anche le classifiche in ambito software relativi al mese di giugno 2021, con la prima posizione saldamente nelle mani di Sony.A guidare la lista dei titoli più venduti è infatti Ratchet & Clank: Rift Apart, nuovo capitolo della storica serie firmata Insomniac Games disponibile in esclusiva PlayStation 5 dallo scorso 10 giugno. In meno di un mese la nuova avventura del dinamico duo ha scalato le vette della classifica,superando un peso massimo del mercato a stelle e strisce come Call of Duty Black Ops Cold War, che arriva alla seconda posizione.
Sul terzo gradino del podio troviamo invece Mario Golf: Super Rush per Nintendo Switch, che dopo alcuni anni ha riportato Mario e i suoi compagni sui verdi campi da golf.
Per Sony è stato un mese di successo, considerato che nella Top 10 trovano spazio anche MLB The Show 21 (titolo di Sony San Diego, al quarto posto) e Marvel's Spider-Man Miles Morales (sempre di Insomniac, al nono). Di seguito ecco la classifica delle prime 10 posizioni:
Ratchet & Clank Rift Apart
Call of Duty Black Ops Cold War
Mario Golf Super Rush
MLB The Show 21
Scarlet Nexus
Resident Evil Village
Mario Kart 8
Minecraft
Marvel's Spider-Man Miles Morales
Mortal Kombat 11
Rift Apart segna inoltre un altro importante record per il suo longevo franchise di appartenenza: ha segnato il miglior lancio di sempre per la serie, raddoppiando i risultati del precedente episodio per PS4 del 2016 (che era stato tra l'altro venduto a prezzo budget negli Stati Uniti).
L'ultima avventura degli eroi Insomniac continua quindi ad ottenere grandi consensi: Ratchet & Clank Rift Apart è il gioco del 2021 preferito dal boss di PlayStation, oltre ad essere nuovamente tornato al vertice delle classifiche di vendita UK.", "2021-08-12", false, 1, 11, 49);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("RATCHET & CLANK RIFT APART: È IL GIOCO DEL 2021 PREFERITO DEL BOSS DI PLAYSTATION",
"Sono numerosi gli spunti emersi nell'ambito di una corposa intervista che Jim Ryan, il boss di PlayStation, ha concesso a TMTPost, portale tecnologico e finanziario tra i più influenti in Cina. L'esecutivo non ha però parlato solamente della strategia gaming di Sony, ma ha anche espresso alcuni suoi pensieri personali.
In più di un punto dell'intervista, l'esecutivo ha tessuto le lodi di Ratchet & Clank Rift Apart, recente esclusiva per PlayStation 5 che ha stimolato le sue emozioni e lo ha reso felice. Ryan lo considera il miglior gioco dell'ultimo anno: Ratchet & Clank Rift Apart è il mio gioco preferito dell'ultimo anno, quello più piacevole.
Anche se non è un titolo dai ritmi lenti i giochi preferiti del boss di PlayStation, ndr, la piacevolezza dell'esperienza e le performance su PS5 mi hanno sorpreso.
L'opera di Insomniac Games lo ha anche reso estremamente ottimista per il futuro: Ho pensato, se un nostro team è in grado di crearequesto 6 mesi dopo il lancio di PS5, cosa saranno in grado di fare fra tre o quattro anni? Questo pensiero mi eccita tantissimo.
Secondo Ryan, Ratchet & Clank Rift Apart è un dei migliori giochi in circolazione poiché è in grado di scatenare un'ampia varietà di emozioni nei videogiocatori,facendoli eccitare, dando loro una scarica di adrenalina, oppure facendoli sentire felici o tristi.
In questo modo, riesce a raggiungere anche gli amanti dei film hollywoodiani. Lo shooter platform rappresenta anche un eccellente showcase tecnico per PS5, poiché mostra cosa è in grado di fare la console con il suo SSD, il controller, ecc. Scoprite come se la cava il gioco nella nostra recensione di Ratchet & Clank Rift Apart per PS5.", "2021-06-29", true, 1, 11 , 50);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("NEW SUPER MARIO BROS 3 PER NINTENDO SWITCH È IN DIRITTURA DI ARRIVO?",
"Siamo nel pieno dei festeggiamenti per i 35 anni di Super Mario, alla fine dello scorso anno Nintendo ha lanciato Super Mario 3D All-Stars, Super Mario Bros 35, il Game & Watch Super Mario Bros e siamo in attesa di Super Mario 3D World + Bowser's Fury. Le sorprese però potrebbero non essere finite qui...Apparentemente sono stati trovati dei riferimenti a New Super Mario Bros 3 per Nintendo Switch sul sito ufficiale di Nintendo USA, con data di uscita TBD (da definire) e senza alcuna cover art, neanche una immagine provvisoria. Che la compagnia di Kyoto stia pensando dunque di lanciare anche un nuovo episodio della serie New Super Mario Bros?A parte i presunti avvistamenti in questione non ci sono riscontri concreti su questa possibilità e il materiale trapelato potrebbe anche essere falso, da considerare come non provenga da fonti note e nessun insider legato al mondo Nintendo ha ricondiviso il leak, dunque prendete tutto con le dovute precauzioni.La serie New Super Mario Bros è nata su Nintendo DS nel 2006 ed è proseguita poi su Wii (New Super Mario Bros Wii), Nintendo 3DS (New Super Mario Bros 2) e su Wii U con New Super Mario Bros U, quest'ultimo oggetto di un porting Deluxe per Nintendo Switch.", "2021-07-11",true, 2, 12, 54);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("SUPER MARIO BROS. 3: IL PORTING PER PC DI ID SOFTWARE FINISCE IN UN MUSEO",
"L'esistenza di id Software è in gran parte dovuta alla volontà da parte dei suoi membri fondatori di creare un porting per PC di Super Mario Bros. 3. Nintendo (manco a dirlo) rifiutò la demo, e gli sviluppatori utilizzarono la medesima tecnologia per dare forma a Commander Keen... il resto, è storia.Nel 2015 John Romero condivise sul web un video tratto dalla versione PC di Super Mario Bros. 3, mentre oggi scopriamo che quella demo è stata consegnata nelle mani dei curatori del museo Strong National Museum of Play di Rochester (nello Stato di New York), dove verrà preservata per sempre come un importante pezzo di storia videoludica.Il Digital Games Curator Andrew Borman afferma di aver trovato il floppy disk della demo in mezzo ad altri oggetti donati al museo da uno sviluppatore anonimo. Dopo averne testato il funzionamento, verificando la validità del materiale mediante DOSBox, Borman ha conservato il codice sia in formato fisico, sia in formato digitale. Al momento non ci sono piani per mostralo al pubblico, ma in futuro le cose potrebbero cambiare. In ogni caso, adesso la demo è a disposizione su richiesta per tutti i ricercatori interessati. In calce trovate il video gameplay condiviso da John Romero sei anni or sono.", "2021-07-13", false, 2, 12, 55);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("ASSASSIN's CREED VALHALLA: PROSSIMO AGGIORNAMENTO POTREBBE INTRODURRE LE SPADE AD UNA MANO",
"Il prossimo aggiornamento di Assassin's Creed Valhalla potrebbe aggiungere una caratteristica richiestissima dai giocatori: le spade a una mano. Sì, attualmente i vichinghi protagonisti dell'avventura non dispongono di questa opzione per il loro arsenale.
Qualche mese fa Ubisoft aveva confermato di volerla implementare, ma poi non aveva più dato notizie in merito. Aggiornamenti ed espansioni sono stati lanciati, ma delle spade a una mano non si era saputo più nulla, almeno fino a oggi, in cui l'account Twitter ufficiale del franchise ha pubblicato un messaggio dal testo inequivocabile:
Che ne dite se con il prossimo aggiornamento introducessimo le spade a una mano?
Purtroppo non c'è ancora una data per l'arrivo del nuovo aggiornamento, anche se immaginiamo che non manchi molto, vista la pubblicazione del messaggio. Forse potrebbe uscire insieme a L'assedio di Parigi, la nuova espansione del gioco prevista per questa estate.", "2021-05-17", false, 6, 6, 8);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("ASSASSIN's CREED VALHALLA: SU PC SUPPORTA IL CONTROLLER DUALSENSE DI PS5",
"Assassin's Creed Valhalla per PC supporta il controller DualSense di PS5 e le sue tante funzionalità, dai trigger adattivi al feedback aptico, proprio come sulla console Sony.
Non è dato sapere quando Ubisoft ha reso disponibili queste feature anche nella versione PC del gioco, ma non si tratta di un caso isolato: qualche tempo fa anche Metro Exodus Enhanced Edition ha introdotto il supporto al DualSense su PC tramite una patch.
Per il momento il controller di PlayStation 5 funziona e viene riconosciuto in automatico su PC, a patto però di utilizzarlo in modalità cablata. La modalità wireless non è ancora supportata, ma lo sarà in futuro.
L'aggiornamento consente dunque di sfruttare il feedback extra fornito dal dispositivo, in particolare durante i combattimenti: i trigger esprimono maggiore resistenza a seconda della situazione o dell'arma utilizzata, e così via.
A proposito dell'ultimo episodio della serie Ubisoft, il DLC L'Assedio di Parigi è stato mostrato con un primo trailer all'Ubisoft Forward e arriverà questa estate, sebbene non ci sia ancora una data di uscita ufficiale.", "2021-06-02", true, 5, 6, 9);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("CRASH BANDICOOT 4 IT’S ABOUT TIME: ATTUALMENTE SCONTATO PER CONSOLE DEL 43% GRAZIE AL PRIME DAY",
"Crash Bandicoot 4: It’s About Time si inserisce a gamba tesa tra i videogiochi che Amazon ha deciso di scontare per il Prime Day che si terrà nella giornata odierna (il 21 giugno) e domani (22 giugno). Le offerte sono tantissime e molte di esse sono incredibilmente pazze. Quindi ti consigliamo di agire subito se vuoi accaparrarti un qualsiasi prodotto per non perdere l’offerta!
Inoltre, ogni prodotto che ti indicheremo come “scontato per il Prime Day” è riservato solo ai clienti di Amazon Prime, come deciso dalla piattaforma. Non hai l’abbonamento annuale o mensile? Potresti pensare di approfittare del primo mese di prova gratuita, con inclusi Prime Video e Twitch Prime/Prime Game con tantissimi giochi e contenuti extra ogni mese.
Si tratta del nuovo gioco della saga Crash Bandicoot! Muovi il diavoletto della Tazmania in compagnia di tantissimi compagni per salvare il Multiverso da Neo Cortex e N. Tropy. Dovrai dare sfogo a tutte le tue abilità e capacità per andare avanti nelle sfide e raggiungere l’obiettivo finale.
L’edizione di cui stiamo parlando è per PlayStation 4 con l’aggiornamento gratuito per chi possiede la console next-gen: PlayStation 5. Ti basterà inserire il disco fisico del gioco nello scomparto della console e il gioco è fatto: partirà l’aggiornamento automatico!
Le novità non sono finite qui, in quanto lo sconto è previsto anche per la console portatile di , ma con una piccola percentuale in meno. Infatti presenta solo il 20% di sconto e il prezzo passa da €49,99 a €39,99.
Ti ricordiamo che essendo un prodotto venduto sulla piattaforma di Amazon potrebbe essere soggetto a variazioni di prezzo improvvise, specialmente durante il Prime Day che le offerte si alzano o si abbassano repentinamente.Il prezzo sul mercato per PlayStation 4 del titolo è di €69,99, ma lo andrai a pagare solo €39,99. Un grandissimo affare, conoscendo il titolo in questione.", "2021-08-20", true, 2, 7, 13);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("CRASH BANDICOOT 4 IT’S ABOUT TIME: ACTIVISION SMENTISCE LICENZIAMENTO DEL TEAM",
"Activision ha smentito la notizia relativa ai licenziamenti che avrebbero colpito Toys for Bob, il team di sviluppo che ha realizzato di recente Crash Bandicoot 4: It's About Time.
Stando alle parole del character designer Nicholas Kole, Activision avrebbe licenziato quasi tutti coloro che hanno lavorato a Crash Bandicoot 4 e Spyro Trilogy, ma il publisher ha rilasciato un comunicato che nega tale ricostruzione.Le notizie circa i licenziamenti di Toys for Bob non sono veritiere, ha dichiarato un rappresentante di Activision ai microfoni di GamesIndustry.biz.Non c'è stata alcuna riduzione del personale di recente presso lo studio.
Il team di sviluppo continua a operare a pieno regime e anzi ci sono diverse posizioni aperte in questo momento per l'assunzione di nuovo personale, ha aggiunto il portavoce.Toys for Bob è entusiasta di continuare a supportare Crash Bandicoot 4:It's About Time, e più di recente a fornire supporto aggiuntivo per Call of Duty: Warzone.", "2021-08-29", false,2, 7, 14);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("FAR CRY 5: UBISOFT HA RIMOSSO LA MAPPA FAN-MADE 007 GOLDENEYE SU RICHIESTA DI MGM",
"Ubisoft ha rimosso i livelli fan made di Far Cry 5 ispirati a 007 GoldenEye, a quanto pare su richiesta di MGM per infrazione dei diritti d'autore, che per quanto riguarda la serie di 007 appartengono alla compagnia cinematografica in questione.
La mappa in questione era opera soprattutto dello youtuber Krollywood, che ha impiegato circa due anni e mezzo per ricostruire buona parte del celebre sparatutto in prima persona per Nintendo 64 attraverso l'editor di livelli all'interno di Far Cry 5, raggiungendo risultati davvero impressionanti, come testimoniato dal video riportato qui sotto.
Tutti i 18 livelli di GoldenEye ricreati in maniera artigianale con l'editor di Far Cry 5 erano stati messi a disposizione di tutti nella modalità arcade del gioco Ubisoft con il consenso della casa francese, ma evidentemente MGM non era d'accordo con l'iniziativa.
Krollywood si è detto ovviamente rattristato dalla notizia che il suo lavoro è stato completamente rimosso, sostenendo che Ubisoft è stata contattata da MGM per l'infrazione del copyright su 007 GoldenEye. Il publisher francese ha confermato di aver effettuato l'eliminazione dei livelli a causa dell'infrazione sui diritti d'autore legati alla serie 007, pur senza menzionare nello specifico proprio MGM:Rispettiamo la richiesta di adesione ai diritti sulla proprietà intellettuale effettuate da chi li detiene e ci aspettiamo che anche i nostri utenti facciano lo stesso, ha riferito Ubisoft, contattata da Kotaku.
Questa faccenda ha a che fare con il creatore della mappa e chi detiene i diritti e non abbiamo nient'altro da riferire al momento. L'azione è indubbiamente drastica, se si pensa oltretutto al fatto che si trattava di una creazione originale senza riciclo di asset e che era distribuita in forma gratuita. D'altra parte, non è la prima volta che MGM si dimostra estremamente protettiva sulle questioni riguardanti 007, anzi.
L'anno scorso, la compagnia cinematografica ha richiesto la cancellazione di un progetto di remake di GoldenEye 007 su Unreal Engine 4, allo stesso modo questioni relative alla gestione dei diritti hanno impedito l'uscita del remaster di 007 GoldenEye su Xbox Live Arcade che era praticamente pronto nel 2007. Nel frattempo, IO Interactive sta sviluppato il nuovo gioco ufficiale identificato al momento come Project 007.", "2020-01-05", false, 4, 9, 28);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("FAR CRY 5: LA DATA DEL PRIMO DLC",
"Finalmente conosciamo la data di uscita del primo contenuto scaricabile incluso nel Season Pass di Far Cry 5: Ore di Tenebra sarà disponibile su tutte le piattaforme dal 5 giugno.
Il Season Pass, ovviamente, non sarà l'unico modo per accedere al DLC, che sarà scaricabile e acquistabile anche singolarmente a un prezzo non ancora precisato.
Per tutte le novità su Far Cry 5, restate sintonizzati su IGN Italia.", "2021-02-03", true, 3, 9, 29);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("ZELDA BREATH OF THE WILD: ARRESTATO IN GIAPPONE PER AVER VENDUTO SALVATAGGI TRUCCATI",
"Giunge direttamente dal Giappone la storia di un ragazzo cinese di 27 anni che ad aprile aveva messo in vendita su un sito di e-commerce dei salvataggi personalizzati di The Legend of Zelda Breath of the Wild.
Ichimin Sho, residente nel quartiere Toshima Ward di Tokyo, ha reso disponibile per l'acquisto online i cosiddetti Ultimate Save Data dell'iconico open world di Nintendo. 
Ma cosa rendeva questi file così tanto appetibili? Un po' tutto ciò che richiedeva l'acquirente, dal momento che l'hacker cinese prometteva di aumentare statistiche e sbloccare qualsiasi abilità utili a recuperare gli oggetti 
più preziosi del gioco. Messi in vendita al prezzo di 3.500 yen (circa 26 euro), i salvataggi hanno attirato l'attenzione di due clienti, ma non solo.
L'articolo non è passato inosservato agli occhi della Polizia di Niigata che ha arrestato il ragazzo per aver violato l'Unfair Competition Prevention Act. 
Sho ha ammesso le proprie colpe ed ha svelato di aver iniziato a vendere salvataggi truccati dal dicembre del 2019, riuscendo a guadagnare la bellezza di 10 milioni di yen (oltre 7.600 euro).
Si potrebbe pensare che l'arresto sia ingiustificato, dal momento che si tratta di andare ad alterare un titolo single player, tuttavia il problema sussiste nei metodi adottati dall'hacker. 
La violazione specifica di Sho è stata quella di aver fornito servizi per aggirare le restrizioni tecniche di Switch applicate da Nintendo.
Come sappiamo, esistono dei sotterfugi legittimi per ottenere rapidamente gli oggetti più desiderati di Breath of the Wild: un glitch, ad esempio, consente sbloccare subito la Master Sword.", "2019-07-09", false,2, 14, 64);

insert into notizia (titolo,contenuto,datapubblicazione,bozza,idutente,idvideogioco,idimmagine) values
("ZELDA BREATH OF THE WILD: UN GLITCH PERMETTE DI SBLOCCARE SUBITO LA MASTER SWORD",
"Sono passati più di quattro anni dalla sua uscita, eppure The Legend of Zelda: Breath of the Wild continua a stupire, in un modo o nell'altro. 
Il mastodontico GDR per Nintendo Switch ha attirato a sé una fanbase estremamente affezionata, che proprio non vuole saperne di lasciare il mondo di Hyrule.Gli speedrunner, in particolare, sono alla continua ricerca di modi per velocizzare il gameplay. 
Di recente, hanno scoperto un nuovo glitch che consente di acquisire la Master Sword molto presto, (subito dopo il completamento dell'are tutorial del Great Plateau, con Link dotato di soli 3 cuori) e in maniera molto semplice. 
Servono appena due cose: un pezzo di legno e una fonte per il fuoco, come un freccia infiammata. Dopodiché, tutto ciò che bisogna fare è attraversare Lost Woods e ottenere la Master Sword nel modo illustrato nel video in cima a questa notizia: 
posizionarsi vicino alla spada, creare un falò, puntare la telecamera verso il cielo, dormire fino al mattino e, quando lo schermo diventa nero, premere il pulsante A.
Il gioco non reputa questo metodo come legittimo. Ad esempio, non viene sbloccato lo slot aggiuntivo, inoltre anche se il giocatore possiede la spada, il gioco è come se non lo sapesse. 
Più avanti, quando Link ottiene i 13 cuori, è possibile persino completare la quest in maniera regolare. Fondamentalmente la Master Sword non conferisce neppure dei grandi vantaggi agli speedrunner, 
ma almeno offre una sana dose di divertimento per coloro ai quali piace andare in giro e perdersi nel mondo di Hyrule.Lo sapete che di recente i giocatori sono riusciti ad aprire l'ultimo dei forzieri impossibili di The Legend of Zelda: Breath of the Wild?", "2019-10-10", false, 1, 14, 65);
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
insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - CYBERPUNK 2077",
"Sentirete parlare a lungo di Cyberpunk 2077. Il lancio dai connotati disastrosi 
(non certo per numero di copie vendute) non gli rende sicuramente giustizia, 
anche se di problemi di fondo ce ne sono. Di fronte a voi avete un'avventura ruolistica 
che sul piatto offre almeno cinquanta/sessanta ore di gioco, un cast eccezionale e un mondo aperto sconfinato, coerente e pieno di segreti capace di assorbirvi completamente facendovi dimenticare di 
tutti gli altri giochi a vostra disposizione. L'impatto grafico è sbalorditivo, tanto da spingere all'utilizzo della modalità fotografica anche chi di solito non ne fa un grande uso. 
Il vero, grosso problema di Cyberpunk 2077 in questo momento non sono l'IA, il motore fisico o i glitch: sono le performance su console e i requisiti hardware richiesti per goderlo al meglio delle possibilità su PC. Le cose andranno sicuramente a migliorare, così come il voto finale di questa recensione che tiene di conto anche di questi fattori. Ignorarlo comunque non sarebbe saggio, saprà lasciare il segno nella vostra carriera videoludica.", 4, "2021-7-5", true, true, 1, 1, 16);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - CYBERPUNK 2077",
"Cyberpunk 2077 è esattamente ciò che prometteva di essere, un RPG corposo che permette 
di vivere un’avventura enorme, divertente ed emozionante.
Night City è una città strutturalmente incredibile, ma non è una metropoli sandbox.
 È un teatro fantastico per un titolo story driven che unisce tante meccaniche già 
viste in una sinfonia densa e coinvolgente, con pochissime sbavature.
Su PC di fascia medio-alta il colpo d’occhio è fantastico e lo stile artistico 
sublime copre anche gli elementi meno riusciti. Su macchine meno potenti i compromessi possono rubare un po’ di magia.", 3, "2021-7-14", true, false, 1, 1, 17);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - ANIMAL CROSSING: NEW HORIZONS",
"Non potete immaginare quanto sia stato difficile scrivere questa recensione di
 Animal Crossing: New Horizons. Il franchise Nintendo fa praticamente genere a sé. 
Non esiste quasi nulla che gli somigli e, se c'è, non è che una pallida imitazione. 
I vari Animal Crossing che si sono susseguiti negli anni hanno continuamente costruito 
sulle fondamenta gettate dal primo Dōbutsu no Mori - è il titolo giapponese - 
nel 2001: nonostante ciò, ogni volta che dobbiamo rispiegare che cos'è e come 
funziona Animal Crossing anche ai nuovi giocatori, ci sentiamo fortemente a disagio. 
Trasmettere il suo appeal non è facile; viene voglia di appellarsi al sacro emendamento 
della Nintendo Difference e lasciare che il destino faccia il resto.
C'è poco da fare: questa non è un'esperienza adatta a tutti. Ci sarà 
sempre qualcuno che troverà profondamente ridicolo passare il tempo 
a raccogliere frutta e conchiglie per animaletti antropomorfi che sembrano usciti 
da una puntata della Melevisione. E ci sarà sempre qualcun altro che si lascerà conquistare, 
qualcuno che ritroverà in quello spensierato, eccentrico mondo alternativo, così pieno di gioia e di colore, 
un equilibrio perfetto che solo gli alchimisti di Nintendo potevano raggiungere. 
Questa recensione la dedichiamo a chi ama spiccare il volo sulle ali della fantasia.
Immaginate di aver acquistato un pacchetto vacanze per raggiungere un'isola deserta dove costruire una comunità tutta vostra: ecco, il nuovo Animal Crossing: New Horizons inizia proprio così.
In passato ci siamo trasferiti in paeselli e città, raggiungendoli via treno o via autobus, ma questa volta arriveremo in volo. Le vostre primissime decisioni riguarderanno la forma iniziale dell'isola e l'aspetto dell'abitante che vi rappresenterà nel gioco.
Il nuovo editor include una maggior varietà di segni particolari, rispetto al passato, che dovrebbe accontentare i giocatori più esigenti.
La prima cosa che scoprirete, una volta scesi a terra, è che gran parte dell'isola vi sarà temporaneamente preclusa: fiumi e dislivelli dividono la mappa in più parti, impedendovi di esplorare liberamente il territorio.
E in fondo, all'inizio, dovrete imparare a vivere nella vostra nuova casa. I primi giorni sono un gigantesco tutorial e il caro, 
vecchio Tom Nook vi darà tutti gli strumenti e vi spiegherà per filo e per segno come ambientarvi: fate attenzione, perché ci sono parecchie novità anche per i vecchi giocatori di Animal Crossing.
Una di esse è il Nook Phone, uno smartphone che, in sostanza, è un'interfaccia che potete richiamare con 
un tasto per accedere a varie app o funzionalità come la mappa dell'isola, 
la macchina fotografica con cui potrete immortalare i momenti più belli della vostra avventura,
l'editor dei modelli che potrete poi copiare su indumenti e quant'altro, e così via.", 2, "2021-6-30", true, false, 4, 5, 1);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - ANIMAL CROSSING: NEW HORIZONS",
"Ogni volta che si parla di Animal Crossing c'è qualcuno che si dice spaesato dal concetto su cui si basa la saga Nintendo,come se non riuscisse ad accettare il fatto che un videogame possa rifiutare totalmente il senso di sfida, mettere da parte azione e narrazione, e focalizzarsi invece su altre sensazioni, più placide e amene. Che Animal Crossing non sia un gioco adatto a tutti i palati  è evidente ad un primo sguardo: per rendersene conto basta osservare le cadenzate routine di personaggi che pescano, raccolgono fossili e insetti, si prendono cura dei fiori e parlano con strani vicini zoomorfi. Ma è altrettanto lampante quale sia l'idea alla base di questo garbato life simulator: quella di replicare l'operosità quotidiana di chi si fa beffe della modernità, del tran tran cittadino, del chiasso urbano. Animal Crossing traduce in linguaggio digitale il desiderio di evasione, il bisogno di prendersi cura di sé stessi e dei propri spazi, e forse persino l'urgenza, che molti avventurieri virtuali sentono di tanto in tanto, di riprendere fiato, soppesando le gioie di una vita senza mostri e senza questo.
Animal Crossing è sempre stato questo, e New Horizons non fa eccezione: è un software che come tutti i suoi predecessori si muove sul labile confine fra gioco e passatempo, offrendovi uno spazio spensierato e sicuro in cui darvi appuntamento - se non con amici 
e compagni di vita - con voi stessi.
Accettando queste premesse, decidendo di addentrarsi in questo quieto mondo alternativo (che promuove, fra le altre cose, pure una socialità fieramente diversa da quella che viviamo sul web), ci troveremo per le mani uno degli episodi più densi e completi della
saga. New Horizons non soltanto riscrive alcune meccaniche di progressione per introdurre gradualmente tutte le funzionalità a disposizione del giocatore, ma si presenta sul mercato con una quantità esorbitante di oggetti, di mobili, di creaturine e vestiti; 
con l'intenzione di riuscire a stupirvi ogni giorno, strappandovi un sorriso di fronte ad un dettaglio inatteso, un soprammobile curioso, un outfit strampalato. E poi c'è quel diavolo di Tom Nook che ha pure lanciato un suo programma fedeltà, così da convincervi a giocare
ancora, e ancora, e ancora. L'idea che ci siamo fatti è che il suo scopo ultimo sia sempre quello di mettere le mani sulle nostre Stelline; ma intanto, se le sue Miglia riescono a darci una scusa in più per tornare sulla nostra isola, che male c'è?", 5, "2021-7-15", true, true, 1, 5, 2);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - THE LAST OF US 2",
"Passano gli anni, duri e interminabili, e persino il mondo implacabile e lacerato di The Last of Us comincia a sembrare tollerabile. Perché se è vero che l'umanità è spacciata, perduta assieme alla speranza di una cura, lo scriteriato attaccamento alla vita di chi è sopravvissuto all'infezione sembra in qualche modo più tenace del cordyceps. Le masse caliginose di spore letali, le creature depravate dal parassita, deturpate e spaccate dalle sue propaggini schifose, e ancora i predoni inclementi e rabbiosi, sono tutte cose con cui in fondo è possibile convivere. Condannati al martirio di un'esistenza pericolosa e fugace, insomma, tanto vale cercare, nel tempo che si ha a disposizione, un nuovo equilibrio. È quello che Joel ed Ellie sembrano aver raggiunto, con fatica, tra le mura di Jackson. C'è voluto del tempo, e uno sforzo di dolorosa accettazione. E un po' di musica, diffusa dalle corde di una vecchia chitarra, come una profezia che parla di Giorni Futuri.
Il racconto di The Last of Us Part II comincia proprio spiegando quanto sia difficile andare avanti, sopportarsi, coltivare un rapporto nato per necessità e protetto da una bugia a cui non è possibile credere. Il gioco affronta subito l'argomento, ingombrante al punto di averci \"tormentato\" per tutto questo tempo, marchiato a fuoco nella nostra memoria di giocatori. Proprio a partire da quel dettaglio, da quella scelta così umana e al contempo così scellerata, che possiamo considerare il \"peccato originale\" di Joel, il gioco costruisce un intreccio narrativo monumentale e impeccabile: una trama travolgente, instancabile, che per trenta ore smonta e sconvolge ogni convinzione dell'utente, portandolo a rivalutare ogni personaggio, a riflettere persino su sé stesso e sui propri principi etici e morali.
Basterebbe questo per rendere The Last of Us Part II un prodotto prezioso, un altro grande tassello nel lungo percorso di maturazione del videogioco e di affermazione di una nuova autorialità, che metta in discussione il ruolo dell'immedesimazione e sfrutti l'interazione come strumento critico, e non solo come mezzo per amplificare l'immersione. Basterebbe, ma il secondo The Last of Us è molto di più di questo. Ad esempio, è un gioco più completo, diversificato e strutturato di tanti altre pietre miliari del settore, è un kolossal interminabile che esplora con instancabile curiosità una gamma impressionante di linguaggi; è una sfida continua e stimolante, e pure una lezione di vita. È un prodotto che, ancor più di quanto non lo facesse il suo predecessore, mette al centro della scena meccaniche ludiche eccezionali e rifinite, intrecciandole con una storia indelebile. Fatta di piccoli dettagli infinitesimali che ti si incollano addosso e non ti lasciano più, vera come le persone di cui racconta; spietata, tragica e spaventosa, e dolce, e piena di speranza. E immane. Come una vita.", 4, "2021-7-30", true, true, 2, 13, 57);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - THE LAST OF US 2",
"The Last of Us Parte 2 è indubbiamente un gioco ambizioso, forse il più importante mai sviluppato da Naughty Dog. Al suo interno, infatti, ci troviamo il dramma tipico del franchise, unito anche ad un “senso dell’avventura” ben noto ai fan della serie Uncharted. Attenzione, non sto dicendo che il titolo rappresenti un sunto delle due produzioni, quanto più che sia, di fatto, l’opera che rappresenti maggiormente lo studio. L’avventura di Ellie è infatti più vasta rispetto al primo capitolo ed infarcita di una serie di elementi che contribuiscono a tratteggiare un’esperienza di gioco più matura e completa sotto ogni aspetto. Una delle critiche mosse al primo The Last of Us, infatti, era proprio relativa al gameplay monotono e poco approfondito, per qualcuno addirittura anche troppo facile. Sette anni dopo l’inizio dell’epopea di Joel, Parte 2 si migliora in tutto: dal comparto narrativo, di cui parleremo in seguito, a quello puramente ludico.
L’impianto, specifico subito, è sempre quello dell’action in terza persona votato più allo stealth che alla pura azione, attorno il quale però gravitano una serie di elementi da non sottovalutare. In primo luogo, TLOU Parte 2 abbraccia la formule di macro aree più estese, esplorabili e infarcite da attività secondarie – utili allo sviluppo di Ellie, ma anche all’approfondimento narrativo. Questa novità si bilancia con alcune sezioni più circoscritte, che aiutano a non perdersi troppo e guidano il giocatore in alcune fasi chiave dell’avventura. Il risultato è però vario e ficcante, il senso di libertà è tangibile e sarete costantemente sollecitati a deviare dalla strada principale per lanciarvi in piccole scorribande esplorative. Come detto poc’anzi, il riconoscimento sarà sia narrativo che materiale, nel senso che in tutte questa serie di missioni secondarie avremo modo di recuperare materiali, integratori, collezionabili e risorse che potranno essere usate per migliorare le statistiche di Ellie. Sottovalutare questi momenti accessori significa mancare completamente alcuni oggetti fondamentali, come per esempio i Manuali di Addestramento che sbloccano nuovi aspetti potenziabili della protagonista. Ne esistono di diversi, da quello dedicato allo stealth passando per il crafting, senza dimenticare mira e abilità di combattimento.", 3, "2020-10-5", true, false, 5, 13, 58);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE FALLOUT 76",
"Fallout 76 tiene perfettamente fede al suo nome. L'assurda capacità di generare odio e desolazione nel cuore di tanti appassionati, dediti a giudicarlo in alcuni casi ancora prima di averci messo mano, si sposa in maniera ottimale con l'universo post apocalittico che ne caratterizza la narrazione e l'ambientazione. Probabilmente siamo di fronte alla più difficile delle recensioni dell'anno, ancor più rispetto a titoli come Red Dead Redemption 2, proprio per la sua capacità di dividere così fortemente l'utenza e la critica. Noi, a prescindere da tutto, abbiamo provato a fare ciò che in tanti si sono sentiti in diritto di evitare, pur volendo dare un parere secondo loro oggettivo: giocare il titolo a fondo. Cominciamo la recensione di Fallout 76 scrivendo che il nuovo gioco di Bethesda non è un capolavoro, non è il miglior Fallout di sempre e probabilmente neanche il survival più avvincente sul mercato. Ciò non toglie che le sue potenzialità in chiave futura aprono a una serie talmente estesa di contenuti di livello, affiancati alla miriade di quelli già presenti, che lo rendono quantomeno appetibile per una buona fetta di giocatori.", 
2, "2020-03-27", true, false, 3, 8, 21);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE FALLOUT 76",
"Fallout 76 è un gioco in piena crisi d'identità e drammaticamente fuori fuoco, dotato di un centro di gravità inaffidabile, squilibrato da un continuo contrapporsi di pregi e difetti. Ogni singolo aspetto della produzione rispecchia la medesima dualità conflittuale, a partire da una trama portata avanti tra le maglie avvolgenti di un'ambientazione ricca di storie da scoprire, ma non sempre in grado di coniugare al meglio racconto e necessità ludiche. Se da una parte la narrativa implicita, quel ricchissimo tesoro di ricordi post apocalittici strappati alle polveri radioattive della Virginia Occidentale, rappresenta un vero valore aggiunto per l'esperienza dei giocatori, dall'altra le lunghissime pause che frammentano lo scorrere degli olonastri ne inficiano inevitabilmente l'efficacia, anche in assenza dell'infame bug (uno dei tanti presenti nel gioco) che impedisce l'ascolto immediato quando si indossa un'armatura atomica.
Il mondo creato da Bethesda porta sullo schermo un vividissimo mosaico di storie grandi e piccole, tramandate grazie a una riserva inesauribile di appunti, registrazioni o, più semplicemente, con una messa in scena liberamente interpretabile. Osservando due scheletri abbracciati sul tetto di quella che, un tempo, era un'elegante residenza coloniale, è facile immaginare gli ultimi battiti di due amanti pronti a salutare la fine della civiltà con un bacio e una bottiglia di vino.
Briciole di vita vissuta disseminate sul percorso tracciato da una trama portante tutt'altro che rinunciataria, che affonda le radici nei misteri legati all'apparizione dei mostruosi Ardenti, una piaga che sembra aver spazzato via ogni traccia di quell'umanità sopravvissuta ai rigori dell'inverno nucleare. In linea con le considerazioni di cui sopra, però, anche l'interesse suscitato dall'intreccio perde periodicamente di vigore, a causa di una frammentazione a tratti eccessiva della narrazione, unita a una tendenza al backtracking che, specialmente nelle fasi conclusive, si fa innegabilmente tediosa. Per quanto il finale dell'avventura si dimostri inaspettatamente intrigante, aprendo efficacemente le porte all'endgame, alcune scelte di quest design lasciano più che perplessi. Una particolare missione, ad esempio, incastra i giocatori tra le spire della burocrazia robotica di Charleston, costringendoli a seguire un iter ludicamente dissennato per procurarsi un documento militare, con la piacevolezza complessiva di un sabato mattina in coda alle poste.
Di contro, tuttavia, ci sono momenti in cui un sapiente dosaggio di narrazione emergente ed esplicita finisce per trasformare una missione in un concentrato di divertimento, tra prese di coscienza sulla spaventosa ciclicità della storia umana e battaglie all'ultimo respiro contro gigantesche creature da incubo, sulle note \"death metal\" di una batteria di missili terra-aria. È proprio in questi casi, a prescindere dalla difficoltà crescente del titolo (mai veramente proibitivo per gli utenti solitari), che la natura cooperativa della produzione assume un valore prezioso: in compagnia di un gruppo di amici, Fallout 76 prende i contorni di un'esperienza condivisa, fatta di gesta personali e momenti memorabili.", 3, "2020-02-04", true, true, 2, 8, 22);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - MONSTER HUNTER RISE",
"Coloro che frequentano con regolarità la serie di Monster Hunter e ne hanno seguito lo sviluppo nel corso degli anni sapranno benissimo che ogni episodio ha sempre presentato meccaniche ed elementi esclusivi, che purtroppo assai di rado sono stati ereditati dalle successive incarnazioni. Per fare qualche esempio, se Monster Hunter Tri e MH3U introdussero il combattimento subacqueo, che in realtà non seppe convincere quasi nessuno, MH4U tentò un primo e rudimentale approccio al Mounting, mentre Generations e Generations Ultimate fecero invece leva sugli Stili di Combattimento, sulle Arti e sulle cosiddette versioni Deviant delle creature più amate dai fan (per tutti i dettagli consultate la nostra recensione di Monster Hunter Generations per Nintendo 3DS). Pubblicato nel 2018 su PC, PlayStation 4 e Xbox One, Monster Hunter: World si è invece sottratto a questa ferrea regola del franchise, poiché Capcom, anziché escogitare nuove ed entusiasmanti diavolerie legate alla lotta coi mostri, ha preferito semplificare il più possibile la formula originale dell'hunting game, concentrando le proprie risorse nella costruzione di un ambiente complesso e sterminato.
", 2, "2021-08-12", true, false, 1, 4, 41);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - MONSTER HUNTER RISE",
"Monster Hunter Rise mantiene la giocabilità meccanica della serie, un marchio di fabbrica dell’intero filone, con un’interfaccia ancora macchinosa ma sicuramente esplicativa una volta digerita. Proprio in virtù della pesantezza trasmessa dalle armi, le lotte si basano sull’anticipare quello che succederà da lì a qualche secondo, in bilico su un dubbio amletico tra lo sferrare un altro attacco o togliersi dai piedi per recuperare le forze, all’interno di un flusso di azione basato sull’osservare il comportamento del mostro.
Non a caso, pur mantenendo intatta la formula, Rise introduce delle meccaniche che rinfrescano la mobilità dell’eroe. Prendono il nome di insetti filo, ovvero un’evoluzione del rampino artiglio dell’espansione Iceborne di Monster Hunter World. Differentemente da quest’ultimo, gli insetti filo possono essere utilizzati ogni volta che lo si desidera anche in un punto in aria, previa attesa di un piccolo tempo di ricarica. Servono a velocizzare gli spostamenti, ad effettuare schivate e attacchi speciali, e persino a scalare le pareti.
Inoltre, se in World i danni effettuati in aria contribuivano a scoprire il mostro per infliggere dei colpi aggrappandosi sul suo dorso, in Rise questa dinamica è stata sostituita dalla possibilità di cavalcare le creature. Basta infliggere sufficienti danni con gli “insetti filo”, o aspettare che un mostro bisticci con un altro della zona, per fare in modo che si stordisca, cosicché possiate saltargli in groppa e comandarlo. Ovviamente i controlli sono pesantissimi e macchinosi, ma il poterlo fare è fantastico: ci si può muovere, scattare, schivare e si possono eseguire attacchi leggeri, pesanti e addirittura una super mossa una volta caricata l’apposita barra.
Monster Hunter Rise è l’ennesimo, ottimo capitolo di una saga che ha saputo rinnovarsi mantenendo integra la sua identità. Tutte le aggiunte introdotte convincono e la versatilità di Switch è un goloso valore aggiunto. Chi ha già affrontato Monster Hunter World sentirà il sapore di già visto e potrebbe soffrire di alcune mancanze, un grattacapo lecito su un prodotto comunque di eccellente fattura, che solleva dei dubbi solo su contenuti di fine gioco e su una progressione che necessita di un ripensamento in certi lati. Detto ciò, questa nuova caccia è un altro successo per la serie e per tutta Capcom.", 4, "2021-07-08", true, false, 3, 4, 42);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - WATCH DOGS LEGION",
"Dopo una lunga attesa ha finalmente fatto il suo esordio lo scorso 6 luglio Watch Dogs Legion Bloodline, prima grande espansione dell’open world di Ubisoft. Un contenuto fortemente narrativo, che vede il ritorno dell’amato Aiden Pearce e del controverso Wrench in una storia votata all’azione e che va degnamente a concludere l’epopea del vendicatore di Chicago. Un’espansione che ci ha tutto sommato convinto, anche se con qualche riserva, e che ricordiamo essere compresa all’interno del Season Pass del gioco o acquistabile a parte a 14,99 euro.
Bloodline è ambientato nella distopica Londra che abbiamo imparato a conoscere in Watch Dogs Legion, poco dopo gli attentati che hanno dato via a quanto raccontato nel gioco originale, ma prima della spirale di eventi che ha visto il DedSec scontrarsi con Albion e il clan Kelley. In Bloodline saremo chiamati a scontrarci con tale Rempart, un giovane genio della robotica, nonché ricco e spietato proprietario di una delle principali aziende del settore. Una battaglia in cui ci troveremo invischiati fin da subito a causa del furto del BicaBridge, un dispositivo pensato per trasferire la memoria umana negli automi, e che vedrà coinvolta anche la famiglia di Aiden.
Un canovaccio narrativo dalla forte impronta action, che parte fin da subito con il piglio giusto e ci porterà da una parte all’altra di Londra per missioni sempre più adrenaliniche. Ottimo, poi, il ritorno non solo di Aiden e Wrench, ma anche di uno dei più riusciti personaggi del gioco base, l’enigmatica Skye Larsen.
Bloodline va insomma a risolvere uno dei principali problemi di Watch Dogs Legion, ossia la costante mancanza di un protagonista forte e carismatico, riuscendo a ritagliarci attorno una storia non certo eccelsa ma tutto sommato solida.
Nonostante l’aspetto più corposo Watch Dogs Legion Bloodline sia proprio questa nuova avventura in compagnia di Aiden Pearce e Wrench, Ubisoft ha comunque inserito all’interno del DLC una serie di aggiunte al gameplay.
La principale di esse, nonché la più intrigante, è sicuramente quella relativa allo Spiderbot, che può ora anche volare e trasportare oggetti. Una modifica che rende ancor più essenziale il gadget simbolo di Legion, sebbene sarebbe stato lecito aspettarsene un utilizzo più dirompente. Buona anche l’aggiunta dei robot come avversari, con i freddi automi che devono prima essere indeboliti e poi colpiti alle spalle per essere eliminati.
Sia Wrench che Aiden Pearce possiedono poi delle proprie abilità. Il protagonista del primo capitolo può ad esempio scatenare un cortocircuito momentaneo in tutto quello che lo circonda e rallentare il tempo dopo un’esecuzione, mentre il mascherato chiacchierone di San Francisco possiede un proprio drone cargo modificato ed è dotato di armi i cui proiettili sono in grado di hackerare dispositivi e molto altro ancora. Due personaggi a tutto tondo anche sul piano del gameplay quindi, che ben si sposano con un ritmo di gioco molto più action rispetto a quello del gioco base. Peccato solo per delle missioni che non riescono sempre a sfruttare tutte queste caratteristiche nel modo giusto e finiscono spesso e volentieri a indirizzare il giocatore verso le imperfette meccaniche stealth del titolo.
Quello che non ci ha però veramente convinto di Watch Dogs Legion Bloodline è l’incredibile senso di vuoto che si percepisce girando per Londra. Bloodline è infatti un’espansione a sé stante, che non si porta con sé le missioni secondarie e i minigiochi del gioco originale. Ciò si traduce in una capitale inglese sprovvista di cose da fare, in cui saremo chiamati a fare avanti e indietro continuamente senza essere minimamente tentati di fermarci a fare qualcosa. Un vero peccato, che toglie molto mordente all’esperienza complessiva.", 
5, "2020-09-5", true, true, 4, 2, 67);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - WATCH DOGS LEGION",
"Watch Dogs è una serie molto interessante ma che ancora non è riuscita a trovare una quadra. Ubisoft prova a fare il colpaccio affidando il ruolo di producer di questo terzo gioco a quel pazzo di Clint Hocking, ovvero l'uomo dietro alle idee più estreme del controverso ma amatissimo Far Cry 2. Scopriamo com'è andata con la nostra recensione di Watch Dogs Legion!
Nel 2014, Ubisoft s'inventa Watch Dogs, action-drama ambientato in epoca moderna che attira immediatamente l'interesse del pubblico grazie a un trailer davvero speciale. Le cose cambiano quando l'avventura finalmente debutta nei negozi e viene sommersa di critiche, bastonata dal pubblico perché non rispetta ciò che venne mostrato nelle anteprime, almeno dal punto di vista grafico. Nonostante lo scivolone tecnico, da giocare Watch Dogs non è poi così male, e nel plot si sofferma su tutte le paure, allora nascenti, di una tecnologia onnipresente e sempre più votata al controllo delle masse. Rimane intatto anche il fascino di essere alle prese con quell'Assassin's Creed finalmente ambientato ai giorni nostri che non abbiamo mai avuto: in fondo Aiden Pearce è un po' come fosse quel Desmond rapito dall'Abstergo da cui, nella storyline che vede contrapposti assassini e templari, non è mai riuscito a fuggire. Watch Dogs è in ultima analisi, e nonostante tutto, un buon punto di inizio che però Ubisoft decide di radere al suolo con Watch Dogs 2.
Il seguito non ha più quel tono malinconico che dava vita al capostipite, è al contrario folle, coloratissimo, e sembra scritto da Skrillex e un'altra manciata di Dj too young to die e too cool for this shit. Il cast è insopportabile, per i più giovani che ne intuiscono la scarsa spontaneità e per i giocatori più grandi, orfani di quella profondità emotiva che li aveva avvicinati al primo Watch Dogs. Ed è un grandissimo peccato, perché dal punto di vista del gameplay i passi in avanti sono enormi. Watch Dogs 2 è ancora una volta uno stealth a base di hacking, dove viene concessa molta più libertà nell'affrontare le missioni principali, qui costruite per offrire un'esperienza più complessa che nel primo gioco.
Watch Dogs 2 compie insomma un netto passo indietro dal punto di vista della caratterizzazione, e un netto passo in avanti nel game design che, considerando tutto, non basta però a trasformarlo in un chiaro successo, di critica come di pubblico. Con Watch Dogs Legion, Ubisoft cambia nuovamente le carte in tavola, questa volta ricostruendo quanto di buono fatto nel secondo capitolo attorno a un'idea che possiamo considerare straordinaria: la possibilità di interpretare circa nove milioni di personaggi diversi. Per la serie è forse arrivato il momento della consacrazione? Non del tutto, ma il passo è senza dubbio nella direzione giusta.", 3, "2020-08-19", true, true, 1, 2, 68);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - LITTLE NIGHTMARES 2",
"Il bello della saga di Little Nightmares credo stia soprattutto nel suo essere così vaga, volutamente in sospeso. Difficile da definire e da comprendere, sfumata nel tempo e nello spazio, in un tripudio di simbolismi e di archetipi da sublime fiaba degenerata. Certo, è comunque possibile provare a fare delle ipotesi, a mettere un ordine alle vicende, ma - esattamente come al momento del risveglio dopo un incubo surreale - c'è sempre qualcosa di sfuggente, un dettaglio non abbastanza a fuoco che ti impedisce di afferrare davvero la visione d'insieme.
Quello che proprio non si può non cogliere nell'opera dei talentuosi Svedesi di Tarsier Studio (per approfondire, qui trovate la nostra recensione di Statik, brillante esclusiva per PlayStation VR) sono invece le sensazioni che Little Nightmares riesce puntualmente a evocare. Un grandioso tripudio di ansia, di timore, di minaccia celata nelle ombre a malapena diradate da luci forse per fortuna troppo flebili. Perché, nell'universo di Six e Mono, i mostri non soltanto esistono, ma anzi cercano spesso di agguantarti e di ucciderti in maniera crudele. Il tutto mentre vieni sovrastato dalle proporzioni gigantesche e deformi di scenari che sembrano sempre pronti a schiacciare come insetti i malcapitati bambini protagonisti.
Little Nightmares II riparte esattamente dalla formula di successo dell'originale (a proposito, eccovi la nostra recensione di Little Nightmares): l'idea è quella di un platform narrativo alla Limbo, in cui il gameplay diventa anche e soprattutto un mezzo attraverso cui evocare emozioni e raccontare una storia completamente priva di testi o dialoghi. In questo seguito diretto - ma siamo davvero sicuri che sia così? - vestiremo i panni di Mono, un ragazzino imprigionato in una dimensione corrotta dall'incessante segnale trasmesso da una titanica torre. Un assuefacente richiamo che, tramite gli schermi TV, ipnotizza le persone e diffonde nell'aria un malessere impossibile da comprendere, eppure concretamente incarnato da uno slanciato e inarrestabile uomo nero in stile Slenderman.", 4, "2021-01-03", true, true, 6, 3, 36);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - LITTLE NIGHTMARES 2",
"Il mistero attorno a Little Nightmares come franchise è uno dei motori che continuano ad alimentare il fascino della creazione di Tarsier Studios. Little Nightmares II, come avevamo già modo di intuire nelle nostre prove, era l’ennesima ode a questa sensazione di scoperta, al mettere il giocatore sotto pressione nel tentativo di trovare cosa si celi dietro la costruzione di questi incubi per “bambini”. Vivere un videogioco così, tra mille teorie e la condivisione nella community, è un rapporto davvero raro nell’epoca del tutto e subito, dove ogni cosa deve essere chiarificata e sbattuta in faccia al consumatore, tenendolo per mano in un senso lontano dall’essere solo metaforico. Little Nightmares II è l’esatto opposto di quella filosofia: niente dialoghi, niente testi, solo simboli e scenari da decifrare.
Nel primo capitolo questa sensazione appoggiava le sue basi nel grottesco, nel farci vedere l’orrore di una nave ristorante che ricordava la Città Incantata di Miyazaki in chiave distorta, trasformando il ruolo del giocatore pian piano, subdolamente ma con fermezza. Little Nightmares II ha il compito di proseguire quella linea, ma allo stesso tempo è un prodotto dal tono quasi diverso in ogni sua parte, talmente tanto da mettere in questione la sua natura di seguito. Il punto in comune è però la durata contenuta: più longevo del primo, Little Nightmares 2 ci ha accompagnato intorno alle 10 ore al massimo, che è la durata media se si procede con la dovuta calma e si esplora un po’ l’ambiente. Il gioco però si presta alla ripetizione dei capitoli (5 in tutto) per andare a caccia di collezionabili e particolari apparizioni dal ruolo chiave per il titolo.", 3, "2021-01-08", true, false, 5, 3, 37);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - ASSASSIN's CREED VALHALLA",
"La recensione di Assassin's Creed Valhalla descrive quello che a nostro avviso è un progetto coraggioso, che prova ad approcciarsi a un franchise così 
celebre e iconico cercando di raccontare una storia in maniera diversa, prendendosi tutto il tempo necessario al fine di evitare soluzioni narrative frettolose e 
\"sprecare\" in tal modo situazioni e sequenze che avrebbero altrimenti potuto tranquillamente entrare a far parte dell'immaginario videoludico collettivo, come accaduto in precedenza.
Nelle prime dieci ore il gioco soffre di ansia da prestazione, vuole mettere le carte in tavola ma lo fa in maniera caotica e così la grande novità delle battaglie corali, 
fra assedi e razzie, rivela tutti i limiti di uno sviluppo che probabilmente negli ultimi mesi è andato avanti fra i mille intoppi di questa maledetta pandemia, 
dovendo fare anche i conti con l'imprevisto e improvviso abbandono del director Ashraf Ismail.
Dopo venti ore la struttura del titolo appare chiara nella sua connotazione divisa per saghe, con il protagonista che si muove da una zona all'altra dell'Inghilterra alla ricerca 
di alleanze e fa la conoscenza di personaggi ben caratterizzati, vive avventure affascinanti e nel frattempo cresce, acquisendo consapevolezza nei confronti di un sistema 
di combattimento più profondo rispetto ad Assassin's Creed Odyssey, che gestisce la stamina quasi fosse un soulslike e interpreta in maniera effettivamente diversa ogni build: 
meglio due asce, una spada e uno scudo o un'arma a due mani?
Dopo trenta ore vengono tirati i fili di una trama che rivela finalmente i propri legami con il lore storico di Assassin's Creed, 
ma nonostante tutto continuano ad aprirsi nuove quest e possibilità: si prospettano viaggi verso terre lontane o addirittura verso altri mondi, 
mentre il villaggio che abbiamo costruito cresce man mano che lo nutriamo con le risorse indebitamente sottratte alle abbazie inglesi, 
mettendo a segno spedizioni predatorie parzialmente edulcorate (nel gioco vale sempre la regola di non uccidere dei civili, 
ma i vichinghi difficilmente si facevano di questi problemi) e, a un certo punto, inevitabilmente ripetitive.
E così, con la mappa che si rivela in tutta la sua schiacciante enormità, si entra nel vivo di un progetto coraggioso, come dicevamo in apertura. 
Perché non dà nulla per scontato, giustificando narrativamente persino il salto della fede. Perché non si concede in fretta e furia, 
ma pone delle basi molto solide e precise prima di imboccare la strada che tutti si aspettavano. Perché non ci lancia addosso decine di armi e corazzature 
riempiendo il nostro inventario di inutili fotocopie, puntando piuttosto su di un numero inferiore di oggetti che però abbiano un senso e una progressione non scontata. 
E in tutto questo si concede il lusso di affascinarci con alcuni dei panorami più belli che si siano mai visti in un videogame.", 5, "2021-3-5", true, true, 2, 6, 6);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - ASSASSIN's CREED VALHALLA",
"Leviamoci in partenza questo dente avvelenato: la struttura narrativa di questo nuovo Assassin’s Creed eredita esattamente tutte le caratteristiche dello scorso capitolo, 
apparendo dunque dispersiva e talvolta caotica. Chi si aspettava un ritorno al passato anche in questo ambito è costretto a dover fare marcia indietro. 
Più che un singolo main plot intimo e costruito attorno alle figure chiavi del racconto, come magari potrebbero lasciare intendere le prime quattro e bellissime ore ambientate in Norvegia,
 in Valhalla ci troverete tante corpose quest narrative legate da uno scopo unico, ossia conquistare l’intera Inghilterra stringendo alleanze, 
razziando e compiendo numerosi assedi nelle fortezze dei clan rivali.
Chiariamo subito però che, più che di un vero e proprio difetto, si tratta di una preferenza: diciamo che avremmo gradito un ritorno al passato e una costruzione del racconto 
in favore della linearità. Così non è, ma se avete apprezzato Odyssey e, in generale, siete dei fan della struttura a là The Witcher 3, 
non farete alcuna fatica ad incollarvi anche a questo titolo, soprattutto considerando il passo in avanti compiuto nella scrittura. 
Se infatti il lavoro svolto in Origins potremmo definirlo impeccabile, lo stesso non possiamo dire di Odyssey, che si abbandonava spesso a toni leggerissimi e inscenava rapporti 
fra personaggi sin troppo deboli. Venivano inoltre introdotte le romance, tra l’altro di ogni tipo, ma erano troppo frettolose e poco appassionanti. 
Valhalla, quindi, eredita sì la struttura del precedente, ma ne aggiusta i toni e sceneggia eventi più trascinanti e convincenti. 
Anche in questo caso, però, segnaliamo una certa pigrizia nella costruzione delle romance; fatta eccezione per uno specifico rapporto, non ci hanno mai saputo entusiasmare, 
al punto che fatichiamo a comprendere il loro ruolo all’interno del gioco: sembrano un contentino nato per scimmiottare le avventure dello Strigo.
Ciò detto, ed espresse le nostre preferenze riguardo alla struttura narrativa, ad averci colpito davvero in negativo sono i modi in cui gli eventi vengono mostrati a schermo, 
ovvero la messinscena. Eh no! Non è nostra intenzione paragonare le avventure di Eivor a colossi quali Death Stranding o The Last of Us Part II, sarebbero paragoni un po’ troppo lontani. 
Nello specifico ci riferiamo a produzioni che tentano di svolgere più o meno le stesse funzioni, esperienze come il già citato The Witcher 3, appunto. 
Da questo punto di vista Ubisoft pare sia rimasta parecchio indietro e lo testimonia più volte attraverso le sequenze d’intermezzo, le quali, escluse alcune rare eccezioni, 
sono costruite in modo da mostrare troppe spigolosità, che si traducono in animazioni un po’ rigide e un’espressività dei volti poco ingombrante. 
Tutte caratteristiche che non vanno necessariamente a sporcare la componente narrativa, ma che non le permettono di esprimersi al meglio e soprattutto di lasciare alle spalle 
tutti i limiti della generazione che sta ormai per tramontare. 
Bisogna però comprendere la mole di contenuti presenti nel gioco e l’impegno che sarebbe stato richiesto per curarli tutti a dovere. 
In Assassin’s Creed Valhalla, infatti, ci sono ottimi esempi di buona messinscena, a testimonianza del fatto che il team ne sia assolutamente capace. 
Si tratta quindi di una scelta che potrebbe far storcere il naso ai più attenti e che, per quanto riguarda la qualità narrativa ed espositiva, piazza Valhalla 
esattamente fra i due precedenti capitoli, laddove il punto più alto viene rappresentato da Origins.", 4, "2021-7-15", true, true, 3, 6, 7);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - FAR CRY 5",
"Ti ho mai detto qual è la definizione di follia, sì? Quando è stato rilanciato con il terzo capitolo, alla fine del 2012, il franchise di Far Cry si è reso protagonista di una sostanziale evoluzione che per molti versi rappresenta un caso da studio. Se infatti il protagonista dell'avventura non si vedeva quasi mai e a stento comunicava, su quali spalle poggiare il peso della narrazione? Gli sviluppatori di Ubisoft hanno avuto ai tempi una straordinaria intuizione: quella del villain carismatico, folle, che ami odiare. Declinarla in contesti differenti non è stato semplice, ed è probabilmente per questo che in tante delle sue caratteristiche Far Cry 4 è risultato tutto sommato un'esperienza derivativa, tanto da spingere la casa francese a prendersi una pausa con l'episodio preistorico di Far Cry Primal prima di elaborare una nuova e convincente strategia. Ebbene, se sotto il profilo strutturale e del gameplay Far Cry 5 non prova in alcun modo a rivoluzionare la serie, sul fronte dell'ambientazione e delle nemesi il discorso è ben diverso.
Far Cry 5 è un nuovo giro sull'entusiasmante giostra di Ubisoft, un'esperienza ricca e divertente, con davvero tante cose da fare e un set di sfide piuttosto impegnative. Non si tratta di un episodio rivoluzionario, certo: al di là dell'ambientazione e dei villain inediti, invero scritti molto bene, quello che vi ritroverete a fare nel corso della campagna avrà un sapore alquanto familiare. L'ampio sandbox di Hope County nasconde tante opportunità, tante attività con cui è possibile cimentarsi, diversi veicoli da utilizzare e NPC con cui interagire, ed è dunque un peccato che al gioco manchi quel tocco in più, in termini di rifinitura e direzione, che avrebbe potuto fare la differenza e proiettare il nuovo titolo Ubisoft in una categoria superiore: quella delle esperienze imprescindibili.", 2, "2021-7-27", true, false, 1, 9, 26);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - FAR CRY 5",
"Tra i grandi titoli di questo 2018 non ci sono solo le esclusive, tra quelle già annunciate da Sony e quelle ancora da scoprire di Microsoft, ci sono nuove IP multipiattaforma in arrivo, ma ci sono anche i grandi ritorni di serie storiche attese da fan di vecchia data e non. Questo è il caso di Far Cry 5, ultimo arrivato della stranota serie Ubisoft che si è presentato a più riprese come una versione migliorata di tutto quanto di intrigante c’era nei capitoli precedenti: un cattivo folle e molto violento, una guerriglia su larga scala in un mondo aperto e dinamico, la libertà totale sul come esplorarlo e uno shooting immediato polivalente.
Inizia così l’avventura in Montana nella valle controllata dal gruppo di fanatici, chiamati edeniti, guidati dal pazzo Joseph Seed. Sotto il nome e il ruolo di “Padre” proclama un collasso della società in cui ogni passo che viene compiuto è parte di un futuro da cui non si può scappare. Questo futuro è sostanzialmente il compiersi della nostra avventura, che ci porta per la mappa di gioco alla ricerca dei membri della famiglia Seed: John, Jacob e Faith. Ai tre fratelli è affidata rispettivamente una zona da comandare, assoggettata al loro volere secondo i metodi più congegnali a ciascuno. Per riuscire a entrare in contatto con i tre antagonisti bisogna dunque appoggiare le rivolte locali al punto da scatenarne una reazione, che si attiva una volta giunti a un numero definito di punti ribellione. A questo punto un’ellissi temporale fa da tramite tra le scorribande sulla mappa e le scene che portano avanti il racconto ed evolvono il rapporto con la famiglia Seed. Nonostante infatti Joseph sia stato presentato come l’arcinemico del gioco, avremo poco a che fare con lui durante l’avventura, ma la sua influenza sugli altri tre personaggi è costante e pervasiva per l’intera durata del titolo. Il nemico così si estende nelle figure dei suoi fedeli, piuttosto che accentrarsi in un unico personaggio, e ciò all’atto pratico funziona, perchè Far Cry 5 in qualche modo riuscirà a rimanere impresso nella vostra memoria, anche se non per forza attraverso il ricordo di Joseph Seed.
Giocare è propedeutico alla storia, missioni secondarie e esplorazione sono tanto necessarie per andare avanti quanto le missioni principali, anche perchè  non esistono particolari sequenze di gioco che linearmente ci conducono per gli eventi del gioco. Da ciò deriva una narrativa funzionale molto frammentata, tra passaggi davvero riusciti e altri meno convincenti, ma comunque poco legati fra loro. Scegliere di affrontare Far Cry 5 spinti dalla volontà lineare di scoprire l’evolversi delle vicende non è dunque un modo realmente efficace per affrontare le 20-25 ore di gioco necessarie per arrivare ai titoli di coda (anche se, qualora vi interessino solo quelli, potreste scegliere la via semplice che vi richiede solo 10 minuti…).
Far Cry 5 è l’ultimo erede di una serie, la cui fortuna costante ha permesso ad essa di evolversi senza rivoluzioni. Al termine di questo viaggio, la follia di un gruppo religioso belligerante in un’America fuori controllo è stata sicuramente un buon combustibile per ravvivare la fiamma narrativa che alimenta il gioco. Purtroppo per condurre in maniera coerente, attraverso ben 25 ore di gioco, una progressione omogenea dell’avventura in questa ampia valle del Montana, la storia ha dovuto sicuramente piegarsi a una frammentazione evidente, riuscendo comunque a comunicare tutto il suo messaggio al giocatore senza l’attaccamento all’antagonista che avevamo conosciuto nel recente passato della serie.
Non manca poi la modalità Arcade tutta da scoprire a fronte dell’apporto futuro della community, ma di cui possiamo fin da subito confermare la bontà delle basi. Far Cry 5 va a rifinire un’esperienza consolidata, e sicuramente ancora più longeva che in passato, continuando un percorso che non sembra destinato a cessarsi e che ha tutte le carte in tavola per migliorare ancora capitolo dopo capitolo.", 4, "2021-6-30", true, true, 5, 9, 27);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - GRAN TURISMO 6",
"L'ora del giudizio è infine giunta. E' da Marzo 2007 che una quantità impressionante di videogiocatori attendeva questo momento, il seguito del messia automobilistico che da sempre si è distinto per essere una vera e propria enciclopedia dell'auto, fatta di passione ma anche tanto divertimento e una completezza invidiabile, forse mai raggiunta da altre produzioni del genere. Sono stati anni di aspettative, ritardi e di nuovi amori sbocciati, ora è il momento di mandare a riposo le proprie partner e concentrarsi su Gran Turismo 5, la cui uscita, nel bene e nel male, rappresenta un momento storico per tutti gli appassionati di cui sopra. Dal canto nostro sono stati sei giorni di prove intense, costanti ed estenuanti con volante e pad, e siamo infine pronti per dire la nostra sull'ultima fatica, letterale, dei giapponesi Polyphony e di Mr. Kazunori Yamauchi. Gran Turismo 5 è un titolo contraddittorio in praticamente tutti i suoi aspetti che potenzialmente come contenuti avrebbe potuto aspirare tranquillamente alla votazione massima, ma è figlio di scelte di sviluppo e di marketing estremamente criticabili, e di un mercato giapponese che fatica ad adattarsi agli standard qualitativi e di tempistiche odierni.
Partiamo dalla fisica e dal modello di guida, i passi avanti rispetto a GT Prologue sono decisamente evidenti nel comportamento della vettura, a patto ovviamente di avere tutti gli aiuti (TCS, ABS, ESP, antipattinamento) disattivati. Il diverso tipo di trazione e il settaggio della macchina a partire da ruote e sospensioni incidono visibilmente sulla reazione dell'auto in pista, con una gestione credibile del sottosterzo e sovrasterzo e delle reazioni nervose in relazione al tipo di motore che si ha sotto il cofano, senza contare la diversa aderenza in caso di pioggia oppure su sterrato e neve. Ovviamente il realismo e il divertimento esplodono quando si ha a che fare con i bolidi più potenti, dove il senso di velocità è assolutamente appagante e dove il bilanciamento della fisica porta naturalmente a divertirsi e a voler provare le piste più e più volte. Quando a scendere in campo ci sono poi mostri sacri quali il Nurburgring Nordschleife, Suzuka o il Circuit de la Sarthe che ospita la 24 ore di Le Mans, guidare nell'ultima fatica di Polyphony è un'esperienza da ricordare in tutto e per tutto. Il pad assolve al suo scopo ed è completamente configurabile nei suoi tasti, purtroppo l'annoso problema dei grilleti del Dual Shock 3 crea qualche problema quando si vuole giocare ad esempio senza ABS e in generale non è l'ideale per apprezzare al massimo la fisica di gioco oppure ad esempio per le Nascar, dove mantenere la traiettoria è quasi vitale per ottenere l'oro. Il volante quindi è a ragione la soluzione definitiva per godere appieno di Gran Turismo 5. Nella nostra prova specifica abbiamo utilizzato il gioco grazie al Porsche 911 GT3 RS messo gentilmente a disposizione dal produttore tedesco Fanatec con tanto di pedaliera in alluminio e stand. In questa configurazione il titolo Polyphony diventa ancora più appagante ma anche più impegnativo nella gestione delle curve e nell'evitare i testacoda, dove ogni cordolo si sente maggiormente e il ritorno di forza contribuisce al realismo del tutto. Come fatto intendere più volte Polyphony ha impostato Gran Turismo 5 come un videogioco progressivo dove si sbloccano man mano le cose e si accede a gare sempre più impegnative. La stessa cosa vale per la bravura degli avversari e l'intelligenza artificiale, che nelle competizioni di livello più alto abbandona (anche se non del tutto) i famosi trenini in luogo di battaglie più credibili, fuori pista e anche qualche testacoda e sportellata nei propri confronti.
Gran Turismo 5 si porta dietro in maniera inevitabile il peso degli anni di sviluppo, l'esigenza da parte di Sony di uscire col prodotto dopo continui ritardi e l'eccessiva attenzione ai dettagli da parte di Polyphony, fattori che hanno portato a un titolo marchiato da troppe incongruenze per essere considerato in maniera universale come miglior esponente del genere. Il modello di guida estremamente appagante, la progressione eccezionale del single player e le tante opzioni a disposizione vengono purtroppo controbilanciate da collisioni vecchio stampo, la mancanza di una sovrastruttura online e alcuni problemi di bilanciamento, il tutto con lo sfondo di un comparto tecnico fatto di splendidi alti ma anche di sorprendenti bassi. Gran Turismo 5 dà quindi l'idea di essere un titolo poco rifinito sotto diversi punti di vista ma ad ogni modo trasuda passione automobilistica in tutte le sue corde ed è un inno alla gioia per gli appassionati in cerca di divertimento, a patto di chiudere un occhio sulle incongruenze di cui sopra.", 3, "2020-10-5", true, true, 4, 10, 31);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - GRAN TURISMO 6",
"Che cosa non va davvero in Gran Turismo 5? Non è facile da spiegare, ma ci proveremo… Se avrete la pazienza di rileggere la recensione di GT4 da noi scritta ormai molti anni fa (ben cinque!), vi renderete conto che avevamo allora tentato di capire la filosofia con la quale Yamauchi aveva portato a termine il suo lavoro. Questa filosofia ci faceva capire che lo sviluppatore giapponese amava le macchine quasi come oggetti d’arte, astratti, e che la precisione e pulizia del suo prodotto, privo di danni, con un’intelligenza artificiale statica e ripetitiva, riprendeva questo approccio. Ora i danni ci sono, ora l’intelligenza artificiale è più dinamica, ora tutto è più “sporco”. Che cosa è successo? Per avere la risposta, basta andare ad attivare un’altra delle modalità di GT5, la Gran Turismo TV, già presente in una versione “beta” in Prologue, qui diventata un vero canale televisivo dedicato alle auto, ricchissimo di proposte, alcune della quali a pagamento (anche se decisamente economiche). È guardando questi filmati che scopriremo che Yamauchi, dai tempi di GT4, è diventato veramente un pilota di auto da corsa, e questa esperienza ha cambiato la sua vita in modo radicale. Da semplice spettatore e ammiratore dei bolidi più affascinanti in giro sulle piste, è diventato un uomo che ha sentito il pericolo correre lungo la sua spina dorsale (credeteci, gli si legge in faccia!) e ha deciso di tentare di trasferire questa esperienza nel suo gioco. La decisione però, è evidente anche dai video, è stata presa in corsa, mentre lo sviluppo di GT5 era già in uno stadio molto avanzato. Gli interventi fatti (che comprendono anche molti micromovimenti della macchina da presa all’interno dell’auto, per accentuare la percezione delle forze in gioco durante la gara) non raggiungono il risultato desiderato.Il disappunto di Yamauchi è anche questo evidente dalla sua espressione. I limiti legati al software e all’hardware sono troppi (non basta neppure l’implementazione del 3D, per i pochi esseri umani che lo possiedono) e alla fine quello che abbiamo tra le mani è un ibrido in via di sviluppo, un simulatore di guida certamente a un passo dalla realtà, ma che ancora non l’ha raggiunta e non potrà forse mai farlo, un “vorrei ma non posso” dalla qualità superlativa, ma comunque ingabbiato in limiti che non gli appartengono. Limiti che lo stesso creatore sente l’esigenza di raccontare attraverso immagini ad alta definizione davvero emozionanti e coinvolgenti, che ci trasmettono uno spaccato sia della vita di coloro che creano videogiochi di alto livello, sia di coloro che vivono le gare automobilistiche come una professione rischiosa ma alla quale non potrebbero mai rinunciare.
Al termine di questa lunga e complessa carrellata, non ci resta che sintetizzare, dicendo che forse questo non è il GT5 che stavamo sognando, ma comunque è quanto di meglio la tecnologia umana può attualmente presentare in termini di fruizione casalinga di un simile prodotto. Correre con una vecchia 500 Fiat (quella vera!) lungo le colline toscane al tramonto è un’esperienza straordinaria che nessun “gioco” di guida ci può offrire meglio di Gran Turismo 5!", 3, "2021-4-8", true, false, 1, 10, 32);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - CRASH BANDICOOT",
"La recensione di Crash Bandicoot 4: It's About Time porta con sé, in modo del tutto naturale, un certo carico di responsabilità: parliamo pur sempre di una delle icone del mondo videoludico sin dagli '90. Aspettative da soddisfare e rimostranze da contrastare si nascondono potenzialmente dietro ogni angolo. E se questo gioco di Crash non fosse all'altezza delle aspettative? E se la recensione stesse solo tessendo le sue lodi perché, in un modo o nell'altro, bisogna pur convincere a comprarlo? Per fortuna a volte la realtà è talmente evidente da non richiedere dimostrazioni aggiuntive, né prove. Quindi noi vi spiegheremo perché Crash Bandicoot 4: It's About Time per PS4 è il miglior gioco di Crash Bandicoot mai sviluppato dagli anni 90 in poi, e perché entrerà ufficialmente nel sacro canone, occupandone un posto di tutto rispetto. Ed ecco cosa farete voi, a partire dal giorno del suo arrivo sul mercato: lo giocherete e ne tesserete le lodi, anche più di noi. Poi lo rigiocherete di nuovo, e di nuovo, e di nuovo, finché non avreste sviscerato ogni suo più piccolo segreto.
Crash Bandicoot 4: It's About Time ricomincia, con la sua trama, esattamente dove si era concluso Crash Bandicoot 3: Warped, mettendo subito in chiaro che tra un'avventura e l'altra di Crash sono passati gli stessi anni effettivamente trascorsi nel mondo reale. Da più di una decade, dunque, il dottor Neo Cortex, Uka Uka e Nefarious Tropy sono prigionieri su un pianeta sperduto, senza possibilità di tornare sulla Terra... finché Uka Uka, la maschera malvagia, non spinge al massimo i suoi poteri aprendo uno squarcio temporale.
La frattura fra le dimensioni permette ai cattivi di scappare e di riorganizzarsi, per affrontare così nuovamente Crash Bandicoot e ottenere la propria vendetta... ma non solo. Mentre il dottor Cortex non sembra particolarmente entusiasta all'idea di ricominciare da capo la sua guerra contro i Bandicoot, Tropy intuisce che Uka Uka ha risvegliato qualcosa di molto potente, tra le dimensioni: le Maschere Quantiche. La loro magia potrebbe permettere agli antagonisti, questa volta, non solo di sconfiggere i rivali, ma addirittura di diventare i dominatori dello spazio-tempo.
Ricomincia così l'avventura di Crash e Coco, che nel frattempo stavano passando in tranquillità le giornate sulla solita isola. Aku Aku, chiaramente, è a sua volta una maschera tribale magica: dunque avverte la distorsione nella realtà e avvisa i suoi amici. Ha inizio il viaggio per recuperare tutte le altre Maschere Quantiche e fermare la baldanzosa brigata di criminali, uno alla volta.
Alla dozzina di ore di gioco della campagna principale, una media che deve tenere conto sia di chi preferisce correre a perdifiato sia di chi invece adotta un approccio da completista, segue la raccolta di tutti i collezionabili di gioco e la possibilità di ripetere i singoli livelli in varie modalità differenti. Parleremo di questo più avanti: intanto sappiate che mettendosi a cercare tutto, vedere tutto, affrontare tutto e raccogliere tutto almeno 25 ore voleranno via.
Crash Bandicoot 4: It's About Time è la cosa più bella che sia accaduta al franchise del nostro (e vostro) marsupiale preferito, negli ultimi 20 anni. Dimenticatevi di tutto ciò che è stato pubblicato da Warped in poi: Crash Bandicoot, il vero Crash Bandicoot, è questo qui. Il capitolo più maturo e completo della serie, il più ricco di possibilità e divertimento; il più variegato dal punto di vista dell'offerta ludica vera e propria. Crash Bandicoot 4: It's About Time non smette mai di sorprendere, all'interno dei singoli livelli e dei suoi diversi mondi: in ogni dove c'è qualche nuova meccanica di gioco da sperimentare, qualche nuovo personaggio da provare, qualche cattivo da picchiare in modo originale. La Maschere Quantiche rappresentano la novità principale, e di per sé sarebbero bastate anche da sole; ma per Toys for Bob non bastava. E così è possibile giocare con Dingodile, Tawna e Cortex. E si possono riaffrontare i livelli con modalità mai viste prime, che a volte li modificano in modo tale da renderli irriconoscibili. E ci sono collezionabili in ogni dove. E se raccoglierete tutti i nastri Flashback, potrete rivivere addirittura la nascita di Crash e Coco, le loro origini nel laboratorio di Neo Cortex. E ci sarebbe anche altro di cui parlare, ma abbiamo già ampiamente terminato lo spazio disponibile. Budega, allora! O come diamine si scrive. Crash è tornato per davvero.", 5, "2021-7-14", true, true, 2, 7, 12);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - CRASH BANDICOOT",
"Diciamocelo: l'operazione compiuta da Activision-Blizzard con Crash Bandicoot è stata oggettivamente brillante. Nel pieno dell'ondata nostalgica che va da Stranger Things al NES Mini, il gigante americano ha deciso di mandare in brodo di giuggiole i vecchi fan - provando nel mentre a conquistarne di nuovi - con un clamoroso remake plus della trilogia originale.
È però con Crash Bandicoot 4: It's About Time che si è colta davvero tutta la grandezza del piano a lungo termine del publisher: un gioco perfettamente a cavallo tra vecchio e nuovo, che continua con talento e ispirazione il percorso interrotto decadi fa e rimette una mascotte gloriosa ma un po' attempata al centro della scena.
Come descritto dalla nostra recensione di Crash Bandicoot 4: It's About Time, l'insaziabile divoratore di frutti wumpa e il resto dello sgangherato cast di personaggi sono riusciti a dar vita, grazie alla bravura di Toys for Bob, a un platform speciale: un videogame autentico, che sembra letteralmente provenire da un'altra epoca, capace di mescolare con gusto e visione principi di game design di una volta a soluzioni decisamente moderne.
Un titolo che, dopo il successo di pubblico e critica in occasione del debutto su PlayStation 4 e Xbox One dello scorso settembre, si prepara ad approdare anche su tutte le altre piattaforme, sbarcando sui sistemi next-gen, su Nintendo Switch e su PC. Se, come illustrato nella recensione della versione PS5 di Crash Bandicoot 4: It's About Time, sull'ultima nata di casa Sony il marsupiale brilla in tutto il suo splendore fatto di 60 incrollabili frame al secondo e risoluzione 4K, la situazione su un hardware non certo all'ultimo grido come è Nintendo Switch non può che orientarsi su un polo diametralmente opposto.
Senza girarci inutilmente attorno: sull'ibrida della grande N gli sviluppatori hanno dovuto ricorrere a una serie di compromessi più o meno invasivi, arrivando a un risultato comunque apprezzabile ma non privo di qualche ombra di troppo. Perché, per l'appunto, la versione Switch delle nuove scorribande di Crash è di certo la peggiore del lotto. Un risultato che in realtà ha a ben vedere perfettamente senso, dal momento che il progetto è stato creato in origine con PS4 e Xbox One in mente (con tanto di passaggio all'Unreal Engine 4 rispetto alla N. Sane Trilogy, mossa dal motore proprietario di Vicarious Visions). Insomma, resta comunque apprezzabile il fatto che le avventure inedite di Crash siano finalmente fruibili anche su ecosistema Nintendo e volendo in modalità da passeggio, in un porting da console più potenti gestito destreggiandosi tra buone trovate e stringenti limitazioni.
Da un lato, è senza ombra di dubbio apprezzabile che un titolo di qualità come Crash 4: It's About Time sia alla fine approdato anche su un hardware meno performante quale è Nintendo Switch: l'avventura old school della mascotte che negli anni '90 rappresentava uno dei simboli di Sony è un gioco ispirato e godibilissimo, che nel suo brioso fiorire di colore e ironia meritava di affacciarsi anche ai fan della Grande N. Di fatto però, a causa delle limitazioni imposte dall'arretratezza tecnologica della console, questa edizione è da considerarsi come un'alternativa da preferire solo e soltanto per chi avesse la piattaforma Nintendo come unica opzione disponibile. Insomma, se avete modo di gustarvelo altrove, non esitate a farlo senza troppe remore, perché il proverbiale fattore Switch è in questo caso assai meno incisivo che altrove (e anzi impone il pagamento di dazi che in qualche misura compromettono la gradevolezza dell'insieme).
", 3, "2021-7-5", true, false, 3, 7, 11);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - SUPER MARIO 3",
"Il videogioco è stato ideato da Shigeru Miyamoto e distribuito in Europa nel 1991. E' il 3° sequel della serie ma sicuramente non l'ultimo gioco dedicato al nostro baffuto amico. Infatti, ogni console della Nintendo ha il suo gioco targato Mario che è ormai la mascotte della casa nipponica. Sicuramente il migliore dei 3 episodi. Tale giudizio è dovuto alle migliorie grafiche e di gameplay. Ci sono anche molte novità rispetto ai 2 predecessori: maggiori trasformazioni, costumi e relativi poteri, nuovi nemici e una difficoltà abbastanza bilanciata capace di soddisfare i più esigenti senza disdegnare ore di relax per i giocatori meno skillati.
La trama ricalca il primo Super Mario: in questo terzo e ultimo capitolo su NES, il malvagio Bowser (King Koopa) ha trasformato i re dei 7 regni in animali e li ha sostituiti con i suoi 7 pestiferi figli. Sarà compito del nostro eroe Mario eliminare i 7 figli di Bowser, ritrasformare gli altrettanti re in esseri umani e riportare pace e tranquillità nel regno. Per assolvere al suo compito dovrà attraversare 7 regni fino ad arrivare all'ottavo dove troverà il suo nemico finale: Bowser. Mario avrà una maggiore libertà di scelta per quanto riguarda i quadri rispetto ai capitoli precedenti: ogni mondo ha una mappa dove si potrà decidere in quale quadro andare con dei percorsi semi-obbligati, come potete vedere dalle immagini. Oltre ai quadri veri e propri ci sono anche dei sottogiochi che permettono di ottenere potenziamenti di ogni genere, oggetti utilizzabili in diverse situazioni e punti a volontà. Alcuni di questi potranno essere usati nella schermata della mappa e non durante il gioco effettivo. Abbiamo quindi un salto di qualità rispetto al primo capitolo, dove gli oggetti potevano essere raccolti e usati esclusivamente nei quadri effettivi e non erano cumulativi.
Non possono mancare i nemici storici di Mario tra cui ricordiamo: i mini-funghi, le tartarughe con e senza ali, e tanti altri. Tra le new entry dei cattivi si annoverano: il Categnaccio (una sorta di cane a forma di palla ferrata con tanto di catena attaccata al masso), i fratelli tartaruga che ora lanciano boomerang, fino ad arrivare ai boss degli 8 mondi: i figli di Bowser (i primi 7) e ovviamente l'immancabile tartarugone Bowser (nell'ottavo). Così come negli altri capitoli, avremo a disposizione diversi oggetti che aumenteranno i poteri di Mario e che, come abbiamo ricordato qualche rigo più su, possono essere messi in una specie di porta-oggetti ed utilizzati quando ci si trova nella mappa.
Oltre ai classici potenziamenti (super fungo, fiore di fuoco, ecc...), in questo capitolo sono state inserite nuove trasformazioni; ognuna dà a Mario una capacità diversa: nuotare più velocemente, volare, lanciare palle di fuoco e tante altre. In più ogni potere è accompagnato da un costume: rana, marmotta ecc...
Per la completezza dell'informazione bisogna dire che è stato fatto un porting del gioco anche per Game Boy Advance. Quest'ultima versione è praticamente identica a quella del 91 tranne per la grafica che risulta notevolmente migliorata.
Audio: le musiche sono in formato MIDI
Video: il gioco ha una visuale 2D a spostamento orizzontale e verticale. A differenza del primo Super Mario, è possibile tornare indietro ma non sempre: in alcuni casi, infatti, lo schermo spingerà letteralmente Mario verso un lato senza dargli la possibilità di tornare indietro e costringendolo a trovare una via d'uscita in tempi rapidi.", 3, "2019-2-2", true, false, 3, 12, 52);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - SUPER MARIO 3",
"Questa recensione potrebbe farvi male. Non tanto per la sua dubbia qualità, quanto perché tratta la versione Americana, giocata amorevolmente sul mio NES a stelle e strisce. Sono riuscito a fare qualche domanda a un rappresentante Mattel durante il SIM di Milano, sperando che almeno il distributore della console sapesse qualcosa, e a quanto pare la nuova avventura di Mario arriverà in Europa durante il prossimo anno, un ritardo francamente inspiegabile per un gioco di così alto profilo, specie considerando che in Giappone il gioco è uscito addirittura nel 1988! Ha richiesto ben due anni di sviluppo e la cartuccia contiene l’MMC3, un chip speciale che permette di spingere l’anziano hardware (ricordiamo che il Famicom è uscito nel 1983 in Giappone) oltre i suoi limiti, e si vede! Personaggi più grandi, scorrimento multidirezionale fluidissimo e un mondo di gioco enorme sono il biglietto da visita del miglior Super Mario di tutti i tempi, probabilmente il primo, vero seguito spirituale del capolavoro del 1985, se vogliamo ignorare i frustranti livelli scartati del Super Mario Bros 2 giapponese o il lifting a Doki Doki Panic che ci hanno propinato in occidente.
Ben otto mondi distinti l’uno dall’altro per aspetto e tematiche di fondo, dal campestre al deserto, arrivando a scomodare la potenza del MMC3 per dar vita al Giant Land, ovvero un mondo popolato da blocchi e nemici extra large al cui confronto Mario è una formica! Ognuno è composto da più livelli organizzati in una mappa su cui Mario può spostarsi, pianificando il percorso che porta al boss di turno: in questo modo il giocatore può decidere se puntare direttamente al completamento del mondo o attardarsi, scegliendo un’altra strada alla caccia di segreti. La libertà conferita dalla mappa è enorme, eclissata solo dalla quantità di stage e dalla varietà di situazioni e nuovi nemici. Bowser è anche stavolta il cattivo di turno, ma ha relegato il ruolo di nemico di fine livello ai koopaling, i suoi figli (!) in possesso delle bacchette magiche rubate ai legittimi monarchi del mondo dei funghi. I discoli attendono Mario alla fine di ogni mondo, ben nascosti all’interno di una fortezza volante armata fino ai denti, sostanzialmente un livello a scorrimento multidirezionale forzato, mentre tutto attorno cannoni di ogni taglia sputano piombo alla volta di coraggiosi idraulici.
Una professione più che mai determinata, dato che l’armamentario a disposizione di Mario e Luigi (è possibile giocare in due, ma non contemporaneamente) è aumentato drasticamente rispetto all’ultima volta. Sì, funghi e fiori sono al loro posto e permettono ancora di trasformare il protagonista in un gigante e fargli lanciare palle di fuoco, ma sono accompagnati da nuovi strumenti, tra cui spicca in particolar modo la foglia. Questa dona a Mario una coda con cui planare e, dopo un’opportuna rincorsa, addirittura volare liberamente, rivelando una verticalità finora inconcepibile nei singoli livelli. Oppure con un costume da rana può nuotare alla grande sott’acqua, mentre quello da procione gli dona gli stessi poteri della foglia, con in più la possibilità di trasformarsi in statua e schiacciare i nemici a terra: bizzarrie nipponiche incomprensibili quanto spiritose, e la lista non è finita. È anche possibile raccogliere e portarsi dietro le corazze dei Koopa da usare come proiettile al momento opportuno, così come scovare le case di Toad nella mappa, per ottenere oggetti misteriosi di cui, al momento, non voglio parlare. Diavolo, vi rovinerei la sorpresa, considerando che potrete giocarci tra un anno se tutto va bene!
Scherzi a parte, sappiate che, appena messe le mani sul gioco, avrete davanti uno di quei capolavori che passano una volta nella vita: Super Mario Bros 3 è il miglior gioco attualmente disponibile per Famicom, e probabilmente per qualsiasi altro sistema. È un titolo quasi irreale, è tutto davvero troppo perfetto, in ogni sfaccettatura: anche il sonoro a cura del veterano Koji Kondo, senza bisogno di dirlo, si attesta su alti livelli qualitativi e quantitativi, con una serie di brani fantastici. Il nuovo tema principale rivaleggia già da adesso con quello, ormai iconico, del primo Super Mario, mentre sono presenti addirittura motivetti da ascoltare durante la navigazione delle mappe, distinti e perfettamente caratterizzati per ogni mondo! ll canto del cigno ideale per una piattaforma che è stata in grado di far rientrare le console nelle case degli appassionati dopo il tracollo del 1983, e che speriamo venga addirittura superato dal nuovo Super Mario per Super Famicom, disponibile in Giappone tra un paio di mesi. Mi auguro solamente di non dover attendere così tanto anche stavolta con la distribuzione ufficiale…", 5, "2017-5-1", true, true, 6, 12, 53);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - RATCHET AND CLANK RIFT APART",
"Oltre a essere stato uno dei primi giochi ufficialmente annunciati per PlayStation 5, Ratchet & Clank: Rift Apart è sempre apparso il più concreto di tutti. Impressionante ed esplosiva fin dai primissimi filmati, la nuova esclusiva che Insomniac Games ha sviluppato per la console Sony segue un filotto tanto eterogeneo quanto pregiato, che dopo la tenebrosa intensità di esperienze come Demon's Souls e Returnal, porta a un deciso cambio di toni ed emozioni.
La nostra recensione di Ratchet & Clank: Rift Apart arriva in un periodo particolare, in cui lo sguardo degli appassionati di videogiochi è rivolto ai prossimi mesi, ai trailer e agli annunci di una stagione estiva costellata di presentazioni e conferenze digitali. Guai però a distrarsi, perché mentre in molti guardano al futuro, il presente di PlayStation 5 si è arricchito di un nuovo ed imperdibile tassello.
Nonostante la storia di Ratchet & Clank: Rift Apart si basi su una premessa narrativa piuttosto semplice, nell'arco di pochi minuti apre letteralmente nuovi universi e nuove possibilità per i protagonisti della saga. Dopo aver salvato la galassia innumerevoli volte, Ratchet e Clank sono ormai eroi noti e ammirati da tutti. Durante una parata realizzata in loro onore, Clank decide di stupire il suo migliore amico Ratchet regalandogli un Dimensionatore funzionante, un gadget capace di aprire squarci su altre dimensioni, e che permetterebbero al peloso protagonista di trovare altri Lombax. Peccato che il Dottor Nefarious rubi il Dimensionatore, e a seguito di un guasto che ha creato anomalie dimensionali in tutto l'universo, tutti, eroi e cattivo, finiscono in una dimensione parallela. Qui Nefarious è imperatore e la controparte di Ratchet è Rivet, una Lombax femmina arruolata nella resistenza anti imperiale. Da qui in poi prende piede una storia che vi lasciamo il piacere di scoprire da soli, e che nel corso dell'avventura ci ha divertito, emozionato e ha saputo regalarci un paio di colpi di scena molto ben assestati.
La trama prende vita tra l'esplorazione di un pianeta e l'altro, a tutti gli effetti i vari livelli di gioco, e qui va fatta una prima importante precisazione. In tutti questi mesi si è parlato a lungo di come Ratchet & Clank: Rift Apart sfruttasse la potenza di PS5 per gestire tutta la parte di viaggi dimensionali, e in prima persona abbiamo sentito gli sviluppatori parlare di Seamless teleport through stages ovvero di passaggi senza soluzione di continuità tra livelli. In realtà questo avviene solo su alcuni pianeti dove, attraverso l'uso di cristalli quantici, Ratchet e Rivet passano da una dimensione all'altra ma sempre nello stesso pianeta. Espediente già usato in passato da altre produzioni videoludiche ma spinto così al limite in Rift Apart da poter essere davvero considerato come il passaggio immediato tra un livello e l'altro vista la totale differenza che vi è tra le dimensioni. Per tutti gli altri pianeti ritorna il caricamento con l'animazione della navicella, così breve però da non essere nemmeno percepibile come tale ma semplicemente con brevissimo intermezzo. Dal menù verrà sempre indicato con quali dei due Lombax potrà essere giocato quel determinato livello, e se ve lo state chiedendo no, non c'è possibilità di scegliere il personaggio da utilizzare, mentre tutti i progressi in termini arsenale, inventario e collezionabili sono condivisi tra Ratchet e Rivet.
Ratchet & Clank: Rift Apart è, senza mezzi termini, una grandiosa esperienza, capace di emozionare davvero chiunque grazie alla sua spettacolarità e al feeling di gioco estremamente rifinito. Siamo di fronte a valori produttivi incredibili non solo per la serie Insomniac, per un gioco sorprendentemente denso di contenuti. L'avventura base si aggira tra le 12 e 15 ore se si seguono solo gli eventi della storia principale, sale tra le 20 e 25 circa se volete completare il gioco con tutti i collezionabili e cresce ulteriormente in modalità Sfida per completare tutto al 100%. Rift Apart però può anche configurarsi come un'esperienza leggera e divertente giocata a livelli di sfida meno impegnativi. Lo scompattamento delle sfide platform dall'avventura principale e gli altri cambi di struttura o semplificazioni evidenziati servono sicuramente per creare una formula più accessibile e mainstream: questo però non è una criticità perché anzi, siamo convinti sarà una scelta che avvicinerà tanti altri giocatori al franchise, incoraggiando Insomniac Games e PlayStation a continuare le avventure di Ratchet, Clank e Rivet. Perché Rift Apart, chiaramente, è solo l'inizio.", 3, "2021-7-7", true, true, 3, 11, 47);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - RATCHET AND CLANK RIFT APART",
"C’era un periodo in cui la palma del platform dell’anno era contesa, su PlayStation, sempre da due controparti: all’inizio c’erano Crash Bandicoot e Spyro, poi arrivarono Jak & Daxter e Ratchet & Clank. La strada intrapresa, poi, da Naughty Dog è sotto gli occhi di tutti, con l’uscita di Jason Rubin e Andy Gavin che portò la software house americana a una declinazione molto più matura, affrontando prima le avventure di Nathan Drake in Uncharted e poi le vicende di Joel ed Ellie in The Last of Us.
Dall’altro lato, invece, anche se Insomniac ha voluto concentrarsi su altre sperimentazioni, non ha dimenticato il suo franchise di punta, quello che gli aveva permesso di spopolare ai tempi della PlayStation 2. Con la spinta di Sony, quindi, Rift Apart, il nuovo capitolo con protagonista il Lombax e il robottino più famosi al mondo, è stato annunciato come il primo vero videogioco sviluppato pensando all’infrastruttura di PlayStation 5. Parlarvene oggi significa prepararvi a un’avventura di grande impatto, che vi restituirà tra le dieci e le quindici ore di gioco per rituffarvi nelle parate intergalattiche di Ratchet & Clank.
Ratchet & Clank Rift Apart è un tripudio di colori, di un comparto tecnico ad altissimo livello e di un'esaltazione di fondo di un arsenale in grado di distruggere una galassia intera. Con una spinta narrativa maggiore rispetto ai precedenti capitoli e l'aggiunta di qualche personaggio ben caratterizzato, oltre a una direzione artistica degna di un applauso, Rift Apart pecca in quel poco coraggio che il team di sviluppo ha voluto usare: si osa poco, si sfruttano poco le grandi idee e il core loop finisce per diventare monotono dopo la prima metà di gioco, con una curva del progresso che si sbilancia a nostro favore. Se Rift Apart ci voleva far assaporare la potenza dell'hardware di PlayStation 5 l'ha fatto, ma noi adesso da Insomniac pretendiamo una nuova trilogia che possa essere in grado di andare oltre il pregevole compito portato a termine, perché sappiamo che ne sono in grado e pretendiamo maggior varietà e qualche pizzico in più di coraggio nel gestire delle idee che per ora hanno solo scalfito la superficie della nostra meraviglia.", 2, "2020-10-5", true, false, 1, 11, 48);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - THE LEGEND OF ZELDA: BREATH OF THE WILD",
"Appena iniziata l'avventura ci sono due elementi che catturano subito l'attenzione: innanzitutto l'assenza dell'esecrabile e logorroico inizio guidato che ha afflitto gli ultimi due episodi della serie. In Breath of the Wild, dopo un brevissimo filmato introduttivo, si prende subito il controllo di Link (a proposito, a causa del doppiaggio stavolta non si potrà ribattezzarlo a piacimento). Il secondo aspetto che colpisce è l'interazione, composta essenzialmente dal vario e preciso sistema di controllo, dall'enorme libertà concessa e dal valido motore fisico, tre ottime qualità prese singolarmente che, sommate, donano una sensazione davvero sorprendente.
Link è un tutt'uno con questo mondo, e quest'ultimo può essere sperimentato in ogni sua parte: non c'è vetta o altura che non possa essere raggiunta, non c'è dislivello o roccia che non alteri il movimento del personaggio. In quest'ambito, e solo in questo, Breath of the Wild è l'autentico seguito spirituale di Super Mario 64: la libertà che dona è straordinaria. Ogni parete è scalabile, e lo è fin quando Link non esaurisce la sua barra della fatica, che naturalmente si può potenziare nel corso dell'avventura. L'attenzione al dettaglio è maniacale, ma vogliamo essere chiari: non si tratta di una compilazione certosina e claustrofobica in stile Skyward Sword, bensì di una cura preziosa di singoli elementi che, piuttosto che limitarle, ampliano le variabili. Vi facciamo un esempio pratico, introducendo prima un altro elemento, ovvero le mutevoli condizioni meteorologiche e temporali: 60 secondi nella realtà corrispondono a 60 minuti nel gioco, quindi un'intera giornata dura ventiquattro minuti, e le condizioni del tempo, escluse particolari aree, sono sempre cangianti e casuali. Sappiamo che immaginare tutte queste qualità sommate non è semplice, per questo vi raccontiamo un episodio per farvi capire come, cumulate assieme, siano in grado di originare qualcosa di unico. Qualche giorno fa stavamo esplorando un'area di montagna, chiaramente rocciosa, durante un temporale. L'acqua scorreva forte, e quindi Link non era in grado di scalare velocemente come al solito: essendo la superficie scivolosa, tendeva spesso a perdere l'appiglio e tornare verso il basso. Stando così le cose, per continuare il tragitto abbiamo dovuto cercare dei piccoli sentieri tortuosi che ci consentissero di proseguire la nostra salita nonostante la pioggia. Dopo essere avanzati un po' abbiamo raggiunto una parte di terreno maggiormente ricca di alberi, e a quel punto, a peggiorare la situazione, sono arrivati dei fulmini: i boschi, notoriamente, non rappresentano il luogo più sicuro durante un temporale. Non abbiamo fatto in tempo a metterci al riparo: una saetta ha colpito un arbusto di fronte a noi, l'albero con l'urto si è spezzato, e il suo tronco ha iniziato a rotolare verso il basso seguendo la pendenza del terreno. Essendo stato fulminato ha preso fuoco, e quindi ha causato un principio d'incendio entrando in collisione col manto erboso: il tutto però, per nostra fortuna, è stato presto sedato dall'incessante acqua caduta dal cielo. Ecco, questo è solo un episodio. Breath of the Wild garantisce una varietà dell'esperienza, e una qualità nella varietà, semplicemente eccezionale: nessuno di noi giocherà la stessa avventura, né affronterà gli stessi pericoli al medesimo momento.
La più grande sorpresa di questo The Legend of Zelda è sicuramente il livello di difficoltà: le demo antecedenti all'uscita ci avevano preparato al tipo di esperienza che avrebbe offerto, ma non lasciavano immaginare che sarebbe stato così difficile. Si, avete letto bene: dopo anni abbiamo di nuovo un capitolo della saga davvero impegnativo, talmente arduo da far risultare piuttosto facile non solo Skyward Sword, ma perfino Ocarina of Time. L'unico predecessore altrettanto ostico è proprio il capostipite a cui è dichiaratamente ispirato, ovvero il primo The Legend of Zelda.", 5, "2019-7-14", true, true, 4, 14, 62);

insert into recensione (titolo,contenuto,valutazione,datapubblicazione,approvato,bozza,idutente,idvideogioco,idimmagine) values
("RECENSIONE - THE LEGEND OF ZELDA: BREATH OF THE WILD",
"Il nome è di quelli altisonanti, di quelli che si portano dietro decenni di storia. Nel campo videoludico, poi, parlare di retaggio decennale è quasi strabiliante, ma sta di fatto che The Legend Of Zelda è questo, ovvero la base della cultura stessa dell’intrattenimento su console. Sta di fatto che se, come me, avete guardato solo qualche video e non intere sessioni di gameplay prima dell’acquisto, beh allora la prima volta che avvierete il gioco proverete una vera e propria vertigine. È uno di quei momenti che restano letteralmente impressi: come quando inserivamo le prime cartucce tanti anni fa, come quando provammo per la prima volta la grafica 3d. Ecco: metti Breath of the Wild e ti gira la testa. Alberi, cespugli, rocce, un belvedere ed un cielo sterminato. Una piccola cartuccia con dentro, letteralmente, l’infanzia tutta. E la riconosci immediatamente l’infanzia perché non appena giri l’angolo, non appena scendi giù per una piccola discesa, ti ritrovi un vecchio saggio e non puoi che pensare una cosa ben precisa:
It’s dangerous to go alone! Take this.
Ecco, l’idea è esattamente quella: sembra essere entrati nell’immaginazione dei bambini del 1986 mentre giocavano al primo The Legend of Zelda, con quella cartuccia dorata , con quella spada disegnata sopra. Sembra che le fantasie di più di trent’anni fa siano finalmente diventate reali, su schermo, con i colori di Miyazaki e suoni precisi e avvolgenti. Le musiche quasi non ci sono, ma quando fanno capolino ti stringono dentro qualcosa. Insomma: questo non è un gioco, è una macchina del tempo che colora i capelli bianchi e, forse, plasma la fantasia dei nuovi arrivati in qualcosa di poetico.", 3, "2019-9-14", true, false, 2, 14, 63);
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
