create database LOGITpe24baas;
use LOGITpe24baas;
--tabeli loomine
CREATE TABLE opilane(
opilaneId int Primary Key identity(1,1),
eesnimi varchar(25),
perekonnanimi varchar(30) not null,
synniaeg date,
pohitoetus bit,
aadress TEXT,
keskmineHinne decimal(2, 1));

SELECT * FROM opilane;

--andmete lisamine tabelisse
INSERT INTO opilane(perekonnanimi, eesnimi, synniaeg)
VALUES ('Punane', 'Sall','2000-10-23'),
('Roheline', 'Pall', '2001-10-1')

--uuendame tabeliandmeid
UPDATE opilane SET aadress='Tallinn, Eesti'
UPDATE opilane SET pohitoetus=1 --1 on true
UPDATE opilane SET keskmineHinne=4.5;
--kui soovime kõik veerud täita - ei pea need nimetama
INSERT INSERT INTO opilane
VALUES ('Nimi', 'perenimi', '2003-10-23', 0, 'Tartu, Eesti', 3.5)

--teine tabel
CREATE TABLE opilaneTunnis(
opilaneTunnisId int Primary Key identity(1,1),
kuupaev date not Null,
opilaneId int,
Foreign Key (opilaneId) References opilane(opilaneId), --tabel(PK veerg)
oppeaine varchar(25),
hinne int);
Select * from opilane;
Select * from opilaneTunnis;

--lisame andmeid opilaneTunnis tabelisse
INSERT INTO opilaneTunnis
VALUES ('2025-04-14', 2, 'keemia', 4);
--testTabel
Create table testTabel(
id int primary key);
--tabeli kustutamine
DROP TABLE testTabel
DROP Database TARpv23

--tabelirida kustutamine
select * from opilane;
DELETE FROM opilane WHERE opilaneId=4;



CREATE TABLE opetaja(
opetajaId int Primary Key identity(1,1),
eesnimi varchar(25),
ruum int)

SELECT * FROM opetaja;


INSERT INTO opetaja(eesnimi, ruum)
VALUES('Kaja', '201'),
('Jüri', '202')



CREATE TABLE opetamine(
    opetamineId int PRIMARY KEY IDENTITY(1,1),
    opetajaId int,
    oppeaine varchar(30),
    maht int
);


INSERT INTO opetamine(opetajaId,oppeaime, maht)
Values (1, Matemaatika', '120')

SELECT * FROM opetamine;
