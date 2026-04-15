alter table opilane1 ADD telefon varchar(1);

--tabeli struktuuri muutmine -veeru kustutamine
ALTER TABLE opilane1 DROP COLUMN telefon;

--tabeli muutmine - veeru andmetüübi vahetamine
ALTER TABLE opilane1 ALTER COLUMN telefon varchar(13);

sp help opilane1;


CREATE TABLE ryhm(
ryhmID int NOT NULL,
ryhmNimi varchar(10));

Select * from ryhm;
--muudame tabeli ryhm ja lisame Primary key
ALTER TABLE ryhm ADD CONSTRAINT pk_ryhm Primary key (ryhmID);


--muudame tabeli ryhm ja teeme ryhmNimi unikaalseks UNIQUE
ALTER TABLE ryhm ADD CONSTRAINT un_ryhm UNIQUE(ryhmNimi);

sp help ryhm;

--täidame tabeli ryhm
INSERT INTO ryhm(ryhmID, ryhmNimi)
Values (3, 'LOGITpe24'),(4, 'TITpe24');
Select * FROM ryhm;

--FOREIGN KEY --opilane tabelis 
--lisame opilane tabelisse uus veerg
alter table opilane1 ADD ryhmID int;
SELECT * FROM opilane1
--lisame ryhmID foreign key
alter table opilane1 ADD CONSTRAINT fk_ryhm
FOREIGN KEY (ryhmID) REFERENCES ryhm(ryhmID) --link tabel(PK veerg)

--kontrollimiseks täidame tabeli opilane1
INSERT INTO opilane1
VALUES ('Kevin', 'Allik', '2003-10-23', 0, 'Tartu, Eesti', 4.5, '+35555', 2)
