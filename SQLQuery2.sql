USE ScuolaDb;


-- AND / OR

-- Studenti di Nome Mario E Cognome Rossi
SELECT *
FROM Studenti 



WHERE Nome = 'Mario' AND Cognome = 'Rossi';

SELECT * 
FROM Corso 
where NomeCorso = 'Programmazione C#' and DescrizioneCorso is null

/*
	Restituire la lista dei corsi dove la descrizione è diverso da null
	con la durata maggiore di 40 ore

	 AND / Or
	 > maggiore
	 < minore
	 >= maggiore o uguale
	 <= minore o uguale
	 != /  <> diverso
*/


-- AND entrambi le condizione sono vere  
SELECT TOP 5
	*
FROM Corso
WHERE DescrizioneCorso is not null AND Durata > 40;

--  Restituire la lista degli Studenti dove il nome  = Marco o Luca 
SELECT 
	*
From Studenti 
where Nome = 'Luca' OR Nome = 'Marco'
-- OR = Almeno una condizione vera



-- Order by (Dornida per) ASC / Desc
SELECT 
	*
From Studenti 
where Nome = 'Luca' OR Nome = 'Marco'
Order by StudentiID DESC

-- IN (1,2,3-...) 
SELECT 
	*
From Studenti 
where Nome IN ( 'Luca', 'Marco', 'Anna', 'Paolo', 'Laura', 'Davide')
Order by Nome 


--Concatenazione
-- Ruolo, Nome, Cognome

select Nome + ' ' + Cognome as 'Nome Completo'
from Studenti