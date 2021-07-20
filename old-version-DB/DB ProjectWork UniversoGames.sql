create database universogames;
use universogames;

create table videogioco
(
	id int primary key auto_increment,
    titolo varchar(200),
    genere varchar(200),
    dataUscita date,
    casaProduttrice varchar(200)
);

create table immagine
(
	id int primary key auto_increment,
    pathImmagine varchar(200)
);

create table utente
(
	id int primary key auto_increment,
    username varchar(200),
    password varchar(200),
    nickname varchar(200),
    admin boolean,
    idImmagine int,
    foreign key (idImmagine) references immagine(id)
);

create table recensione
(
	id int primary key auto_increment,
    titolo varchar(200),    
    contenuto text,
    valutazione double,    
    dataPubblicazione date,
    approvato boolean,
    bozza boolean,
    idImmagine int,
    idUtente int,
    idVideogioco int,
    foreign key (idImmagine) references immagine(id),
    foreign key (idUtente) references utente(id),
    foreign key (idVideogioco) references videogioco(id)
);

create table notizia
(
	id int primary key auto_increment,
    titolo varchar(200),
    contenuto text,
    dataPubblicazione date,
    bozza boolean,
    idImmagine int,
    idUtente int,
    idVideogioco int,
    foreign key (idImmagine) references immagine(id),
    foreign key (idUtente) references utente(id),
    foreign key (idVideogioco) references videogioco(id)
);

create table piattaforma
(
	id int primary key auto_increment,
    nome varchar(200),
    produttore varchar(200)
);

create table compatibilita
(
	idPiattaforma int,
    idVideogioco int,
    primary key (idPiattaforma,idVideogioco),
    foreign key (idPiattaforma) references piattaforma(id),
    foreign key (idVideogioco) references videogioco(id)
);

insert into videogioco (titolo,genere,dataUscita,casaProduttrice) values
('Cyberpunk 2077', 'Open World', '2020-09-17', 'CD Projekt RED'),
('Watch Dogs: Legion', 'Action-Adventure', '2020-10-29', 'Ubisoft Toronto'),
('Little Nightmares', 'Survival horror', '2020-12-09', 'Tarsier Studios'),
('Monster Hunter Rise', 'Action RPG', '2021-03-26', 'Capcom');

insert into immagine (pathImmagine) values
('foto1.jpg'),
('foto2.jpg'),
('foto3.jpg'),
('foto4.jpg');

insert into utente (username,password,nickname,admin) values
('Gianpaolo Rossi', 'qwerty3', 'Paolo1', true),
('Mario Bianchi', 'youtube45', 'Biancospino67', false),
('Luigi Delle Bicocche', 'Capa888', 'HabemusLuigi90', false),
('Marco Verdi', 'Dinosauro004', 'Verdi87', true),
('Samanta Giustizia', 'statuadellaliberta2020', 's_giusta56', false);

insert into recensione (titolo,contenuto,valutazione,dataPubblicazione,approvato,bozza,idUtente,idVideogioco) values
("Cyberpunk 2077 è pronto per essere quello che ha sempre promesso di essere?",
"Dopo 7 mesi di sofferenze costellati da 'Una serie di sfortunati eventi' che a Lemony Snicket fa quasi un baffo, 
sembra che finalmente CD Projekt RED sia pronta a offrire al pubblico Cyberpunk 2077. Nono quella roba claudicante pubblicata su Xbox One e PlayStation 4, ma una versione riveduta, 
corretta e migliorata di quanto abbiamo potuto giocare su PC (e Stadia) quasi sin dall'inizio. Il grande gioco di ruolo futuristico sognato, atteso e discusso per anni.
Il gioco che 'toglieva il fiato' presentato da Keanu Reeves sul palco dell'E3, il degno erede di quel The Witcher 3 
che aveva catapultato il nome e le quotazioni dello studio polacco nell'Olimpo dei videogiochi e nel cuore dei videogiocatori. 
Si tratta di quel gioco complesso e discusso, con tanti argomenti scottanti, basato su di un gioco da tavolo altrettanto visionario. 
Un mondo nel quale perdersi, giocare di ruolo, innamorarsi dei personaggi incontrati, affezionarsi al proprio alter ego, 
sperimentare i propri limiti ed esplorare il folle mondo della braindance.
Un mondo vivo e pulsante che è stato nascosto sotto una scorza tecnicamente primitiva e una comunicazione al limite del truffaldino. 
Entrambe cose che però sono state prese di petto da CD Projekt RED, coi dovuti mea culpa e con un rimboccamento di maniche che ha portato a diverse patch correttive che hanno ripreso il gioco per le orecchie, 
tanto che sia Microsoft sia Sony lo hanno 'riammesso' nei ranghi e non lo trattano più come materiale scottante. 
Una cosa che da una parte ha consentito al gioco di ri-balzare in testa alle classifiche di vendita PlayStation 4 e dall'altra allo studio di rialzare la testa e promettere il più grande aggiornamento di sempre.
I 38 giga che sono al vaglio dell'Epic Games Store promettono mari e monti, nuovi contenuti in grado di dare maggiore vivacità alla città, nuove storie da raccontare e magari gli assets di nuova generazione per PS5 e Xbox Series X|S.
Se questo arriverà, secondo voi Cyberpunk 2077 ha ancora le carte in tavola per mantenere le promesse fatte?", 4, "2020-10-5", true, true, 1, 1),

("Watch Dogs: Legion - Bloodline - La recensione",
"Watch Dogs Legion è un prodotto divertente, su questo è giusto essere chiari fin da subito. 
Nelle 40 ore di gioco passate tra attività principali e buona parte, ma non tutte, le attività secondarie, 
non c'è stata una volta in cui abbiamo sentito il peso della ripetizione. 
Il problema non è nella visione generale, effettivamente vincente, ma in un'esecuzione che si rivela essere molto presto piuttosto ondivaga, insicura. 
Qui, ogni inizio è diverso: finita l'introduzione, il gioco ci darà modo di scegliere con chi cominciare tra quindici personaggi ad ogni nuova partita differenti. 
A seconda dell'edizione del gioco acquistata, ci verranno anche forniti degli agenti predeterminati dalle caratteristiche superiori alla media, 
per un extra carino ma di cui si può comunque fare a meno (anzi è meglio partire quasi da zero, se volete un parere personale). 
Dopo un altro paio di missioni introduttive, potremo iniziare ad arruolare nuovi agenti per rimpolpare le file del nostro gruppo di rivoluzionari informatici. 
Watch Dogs Legion è un gioco che funziona, e che saprà intrattenervi onestamente per molte ore. 
L'idea di rendere ogni passante un possibile protagonista è davvero straordinaria ma necessiterebbe di diverse migliorie. 
È davvero un peccato che l'albero delle abilità sbloccabili sia così poco fantasioso e vada in alcuni casi a rompere l'unicità dei personaggi, 
come lo è stato vedere gli approcci a nostra disposizione ridursi di quantità, e soprattutto in varietà, rispetto al passato. 
Alcune missioni principali sono molto ben congegnate, ma in Watch Dogs 2 si sono viste situazioni molto più complesse di quelle proposte in Watch Dogs Legion. 
Fortunatamente, questo gioco potrebbe davvero rappresentare un nuovo inizio, un punto di ripartenza per costruire il primo vero capolavoro di una serie 
che solo oggi sembra aver trovato una sua identità ben precisa.", 3, "2020-11-16", false, false, 4, 2),

("Little Nightmares 2 Recensione: una notte ancora più scura",
"There are many variations of passages of Lorem Ipsum available, 
but the majority have suffered alteration in some form, by injected humour, 
or randomised words which don't look even slightly believable. 
If you are going to use a passage of Lorem Ipsum, 
you need to be sure there isn't anything embarrassing hidden in the middle of text. 
All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. 
It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, 
injected humour, or non-characteristic words etc.", 4, "2021-1-9", true, true, 1, 3),

("Monster Hunter Rise | Recensione",
"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, 
making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, 
looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, 
discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of 'de Finibus Bonorum et Malorum' (The Extremes of Good and Evil) by Cicero, 
written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, 'Lorem ipsum dolor sit amet..', 
comes from a line in section 1.10.32.
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. 
Sections 1.10.32 and 1.10.33 from 'de Finibus Bonorum et Malorum' by Cicero are also reproduced in their exact original form, 
accompanied by English versions from the 1914 translation by H. Rackham.", 2, "2021-4-24", false, false, 2, 4);

insert into notizia (titolo,contenuto,dataPubblicazione,bozza,idUtente,idVideogioco) values
("Cyberpunk 2077: una grande patch da 38GB compare su Epic Games Store",
"Sembra proprio che CD Projekt RED si stia preparando 
a lanciare la prossima grande patch di Cyberpunk 2077.
Risolto il disguido legato alla patch più grande di sempre, 
la casa di sviluppo polacca potrebbe introdurre delle novità importanti per il suo open world Sci-Fi.", "2021-7-13", false, 1, 1),
  
("Watch Dogs Legion: il DLC Bloodline nasconde un easter egg di P.T. di Hideo Kojima", 
"P.T., letteralmente Playable Teaser, è la demo di quel Silent Hills che Hideo Kojima non è mai riuscito a realizzare. 
Nonostante siano ormai passati diversi anni, la demo dell'horror game (ormai non più disponibile sul PSN)
continua inesorabilmente ad influenzare giocatori e sviluppatori di tutto il mondo.", "2021-7-9", true, 4, 2),
   
("Little Nightmares: 2 milioni di copie vendute, presto gratis con Stadia Pro",
"Bandai Namco Entertainment ha appena annunciato che Little Nightmares ha raggiunto le due milioni 
di copie vendute in tutto il mondo su PlayStation 4, 
Xbox One, PC e Nintendo Switch, piattaforme sulle quali è attualmente disponibile.", "2020-5-26", false, 1, 3),
   
("Monster Hunter Rise riceve la nuova Missione Evento: ecco i bonus e le sfide da completare",  
"Il supporto post-lancio di Monster Hunter Rise prosegue con la nuova Missione Evento organizzata da
Capcom per spronare tutti gli appassionati dell'ultimo kolossal action ruolistico
su Switch a proseguire la propria avventura.", "2021-7-10", false, 4, 4);

insert into piattaforma(nome,produttore) values
("Xbox series x", "Microsoft"),
("Nintendo Switch ", "Nintendo"),
("PlayStation 5", "Sony Interactive Entertainment");

insert into compatibilita (idVideogioco,idPiattaforma) values
(1, 1),
(3, 2),
(2, 3),
(4, 3);

#drop database universogames;