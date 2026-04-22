--AND/OR
--Studenti di nome mario e cognome Rossi
select * from Studenti
where Nome='Mario' and Cognome='Rossi'

select *
from Corso
where DescrizioneCorso IS NOT NULL and Durata>40

select * from Studenti
where Nome='Mario' or Nome='Luca'
order by Nome ASC