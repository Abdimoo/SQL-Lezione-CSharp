--create database ScuolaDB
--go

use ScuolaDB
go
/*
create table Studenti(
	StrudentiID int not null primary key identity (1,1),
	Nome nvarchar (50) not null,
	Cognome nvarchar (50) not null,
	DataNascita Date null,
	Email nvarchar(50) unique not null,
	Telefono varchar(50) unique not null,
	CodiceFiscale char(16) unique not null
)

create table Corso(
	CorsoId int not null primary key identity(1,1),
	NomeCorso nvarchar(250),
	DescrizioneCorso nvarchar (250),
	Crediti int,
	Durata int
)

insert into Studenti(Nome,Cognome,DataNascita,Email,Telefono,CodiceFiscale)
values
--('Mario1','Rossi1','2021-01-01','1mario.rossi@lol.it','+1123456789','123456789qwerty1'),('Mario2','Rossi2','2021-01-01','2mario.rossi@lol.it','+1223456789','223456789qwertyu'),('Mario3','Rossi3','2021-01-01','mario.rossi@lol.it3','+1234563789','123456789qwerty3')


select * from Studenti

-- Creazione tabella Corso
CREATE TABLE Corso(

    -- ID del corso (auto incrementale)
    CorsoId INT NOT NULL PRIMARY KEY IDENTITY(1,1),

    -- Nome del corso (opzionale perché non c'è NOT NULL)
    NomeCorso NVARCHAR(250),

    -- Descrizione del corso
    DescrizioneCorso NVARCHAR(250),

    -- Crediti formativi (es. CFU)
    Crediti INT,

    -- Durata del corso (es. ore o mesi)
    Durata INT
);

-- Inserimento di un corso completo
INSERT INTO Corso 
    (NomeCorso,DescrizioneCorso,Crediti,Durata)
VALUES (
    'Database SQL',             -- Nome del corso
    'Corso base di SQL',        -- Descrizione
    6,                          -- Crediti
    40                          -- Durata (es. ore)
);


INSERT INTO Studenti (Nome, Cognome, DataNascita, Email, Telefono, CodiceFiscale)
VALUES
('Mario','Rossi','2000-01-10','mario.rossi1@email.com','300000001','RSSMRA00A10H501A'),
('Luca','Bianchi','1999-03-15','luca.bianchi2@email.com','300000002','BNCLCU99C15F205B'),
('Anna','Verdi','2001-07-20','anna.verdi3@email.com','300000003','VRDANN01L20H501C'),
('Marco','Neri','1998-11-05','marco.neri4@email.com','300000004','NRIMRC98S05F205D'),
('Sara','Blu','2002-02-28','sara.blu5@email.com','300000005','BLUSRA02B28H501E'),
('Paolo','Gialli',NULL,'paolo.gialli6@email.com','300000006','GLLPLA90A01H501F'),
('Giulia','Rosa','2000-06-12','giulia.rosa7@email.com','300000007','RSOGLI00H12F205G'),
('Davide','Conti','1997-09-09','davide.conti8@email.com','300000008','CNTDVD97P09H501H'),
('Elena','Ferrari','2001-04-18','elena.ferrari9@email.com','300000009','FRRLNE01D18F205I'),
('Simone','Greco','1999-12-30','simone.greco10@email.com','300000010','GRCSMN99T30H501J'),

('Alessia','Romano','2002-08-14','alessia.romano11@email.com','300000011','RMNLSS02M14F205K'),
('Matteo','Colombo','2000-10-01','matteo.colombo12@email.com','300000012','CLMMTT00R01H501L'),
('Francesca','Ricci','1998-01-22','francesca.ricci13@email.com','300000013','RCCFNC98A22F205M'),
('Andrea','Marino','2001-05-05','andrea.marino14@email.com','300000014','MRNNDR01E05H501N'),
('Chiara','Lombardi','1999-07-17','chiara.lombardi15@email.com','300000015','LMBCHR99L17F205O'),
('Stefano','Moretti',NULL,'stefano.moretti16@email.com','300000016','MRTSFN90A01H501P'),
('Valentina','Barbieri','2000-03-03','valentina.barbieri17@email.com','300000017','BRBVLT00C03F205Q'),
('Giorgio','Fontana','1997-06-25','giorgio.fontana18@email.com','300000018','FNTGRG97H25H501R'),
('Martina','Santoro','2002-09-11','martina.santoro19@email.com','300000019','SNTMRT02P11F205S'),
('Alberto','Rinaldi','1998-02-07','alberto.rinaldi20@email.com','300000020','RNLALB98B07H501T'),

('Federica','Caruso','2001-11-19','federica.caruso21@email.com','300000021','CRSFDR01S19F205U'),
('Daniele','Leone','1999-04-23','daniele.leone22@email.com','300000022','LNEDNL99D23H501V'),
('Silvia','Serra','2000-12-12','silvia.serra23@email.com','300000023','SRRSLV00T12F205W'),
('Roberto','Testa','1997-08-30','roberto.testa24@email.com','300000024','TSTRRT97M30H501X'),
('Laura','De Luca','2002-01-09','laura.deluca25@email.com','300000025','DLCLRA02A09F205Y'),
('Antonio','Pellegrini','1998-05-16','antonio.pellegrini26@email.com','300000026','PLLNTN98E16H501Z'),
('Claudia','Fiore','2001-06-06','claudia.fiore27@email.com','300000027','FIOCLD01H06F205A'),
('Fabio','Costa',NULL,'fabio.costa28@email.com','300000028','CSTFBA90A01H501B'),
('Irene','Gatti','2000-09-27','irene.gatti29@email.com','300000029','GTTIRN00P27F205C'),
('Emanuele','Villa','1999-10-10','emanuele.villa30@email.com','300000030','VLLMNL99R10H501D');


INSERT INTO Corso (NomeCorso, DescrizioneCorso, Crediti, Durata)
VALUES
('SQL Base','Introduzione ai database e SQL',6,40),
('SQL Avanzato','Query complesse e ottimizzazione',8,60),
('C# Base','Fondamenti di programmazione C#',8,50),
('C# Avanzato','OOP e sviluppo applicazioni',10,70),
('Python Base','Introduzione a Python',6,40),
('Python Data Analysis','Analisi dati con Python',9,60),
('Java Base','Fondamenti di Java',7,45),
('Java Spring','Sviluppo backend con Spring',10,80),
('Web HTML CSS','Creazione pagine web statiche',5,30),
('JavaScript Base','Programmazione lato client',6,40),

('JavaScript Avanzato','Framework e async programming',9,65),
('React','Sviluppo frontend moderno',10,70),
('Angular','Framework Angular completo',10,75),
('Database Design','Progettazione database relazionali',8,50),
('SQL Server','Gestione database Microsoft',9,60),
('MySQL','Database open source',7,45),
('PostgreSQL','Database avanzato open source',8,55),
('Cybersecurity Base','Fondamenti sicurezza informatica',6,40),
('Cybersecurity Avanzato','Tecniche di difesa avanzate',10,80),
('Networking','Reti informatiche base',7,50),

('Cloud Computing','Introduzione al cloud',8,60),
('Azure','Servizi cloud Microsoft Azure',9,65),
('AWS','Servizi cloud Amazon',9,65),
('Docker','Containerizzazione applicazioni',8,55),
('Kubernetes','Orchestrazione container',10,75),
('Machine Learning','Introduzione ML',10,70),
('Intelligenza Artificiale','AI e modelli avanzati',10,80),
('Data Science','Analisi e visualizzazione dati',9,65),
('Git e Versioning','Controllo versione',5,30),
('DevOps','Integrazione e deployment continuo',10,75);
*/


select *
from Studenti
where DataNascita '2020'