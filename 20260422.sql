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