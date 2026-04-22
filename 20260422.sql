Create table Docenti(
	DocenteId INT not null primary key identity (1,1),
	Nome nvarchar(50) not null,
	Cognome nvarchar(50) not null,
	Email nvarchar(150) unique null,
	Specializzazione nvarchar(100)
)

Select * from Docenti

--tabella aula
Create table Aule(
	AulaId Int not null Primary key identity(1,1),
	NomeAula nvarchar (50) not  null,
	Capacita int not null
)
 select * from Aule

 --Modifica colonna StudentiID a StudenteId

 EXEC sp_rename 'Studenti.StudentiID','StudenteId';


  Create table Iscrizioni(
	--Id iscrizione
	IscrizioneId int not null primary key identity(1,1),

	--collegamento allo studente
	StudenteId int not null,
	--Collegamento al corso
	CorsoId int not null,
	--Data Iscrizione
	DataIscrizione Date null,
	--Vincoli di relazioni
	foreign key (StudenteId) references Studenti(StudenteId),
	foreign key (CorsoId) references Corso(CorsoId)
 )

 select * from Iscrizioni