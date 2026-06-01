## Triger - trigger -päästik

[Select laused](select.md) | [Kasutaja loomine XAMPP-is](kasutajaXampp.md) | [Kasutaja loomine SQL Server](kasutaja.md) | [Triggerid](trigerid.md) | [Kodutöö - Keys](keys.md)

### Triger - andmebaasi objekt, mis käivitub automaatselt, kui toimub teatud sündmus (nt INSERT, UPDATE, DELETE).
Trigerite loomine - automatseerub protsessid SQL Serveris.

Tabelid mis tuleb luua enna trigerit!
```sql
Create database trigerLogitpe24;

use trigerLogitpe24;
CREATE TABLE linnad(
linnId int primary key identity(1,1),
linnanimi varchar(30) unique,
maakond varchar(50),
rahvaarv int);
select * from linnad;
INSERT INTO linnad(linnanimi, maakond, rahvaarv)
VALUES ('Tallinn', 'Harjumaa', 600000);

--tabel logi - tabel, mis täidab triger, kui kasutaja täidab tabeli linnad!
CREATE TABLE logi(
id int primary key identity(1,1),
kasutaja varchar(50),
aeg DATETIME,
andmed TEXT);
```

```sql
--1. Triger lisatud andmete jälgimeseks tabelis linnad.
--jälgib linna sisestamine tabelisse ja teeb vastava kirje logi-tabelis
CREATE TRIGGER linnaLisamine
ON linnad -- tabel, mida triger jälgib
FOR INSERT
AS
INSERT INTO logi(kasutaja, aeg, andmed)
SELECT 
SYSTEM_USER, --siselogitud user
GETDATE(), 
CONCAT('lisatud: ',inserted.linnanimi,', ',
inserted.maakond,', ',inserted.rahvaarv)
FROM inserted;

--kontrollimiseks tuleb lisada linna tabelisse linnad
INSERT INTO linnad(linnanimi, maakond, rahvaarv)
VALUES ('Viljandi', 'Viljandimaa', 50000);

SELECT * FROM linnad;
SELECT * FROM logi;
```
<img width="646" height="367" alt="{25A079C5-3DA9-44AC-9D57-12F5D476D956}" src="https://github.com/user-attachments/assets/94aa5c38-af20-4b96-bf10-1ca58a771990" />

```sql
--2. DELETE triger - jälgib kustutamine tabelis linnad 
--ja teeb vastava kirje logi tabelisse
CREATE TRIGGER linnaKustutamine
ON linnad -- tabel, mida triger jälgib
FOR DELETE
AS
INSERT INTO logi(kasutaja, aeg, andmed)
SELECT 
SYSTEM_USER, --siselogitud user
GETDATE(), 
CONCAT('kustutatud: ',deleted.linnanimi,', ',
deleted.maakond,', ',deleted.rahvaarv)
FROM deleted;
```
<img width="893" height="547" alt="{724D58EE-1F4F-4A83-A4AA-B39B828CDC42}" src="https://github.com/user-attachments/assets/cdc5d093-23f7-4190-81d9-1d6709615bd6" />

## XAMPP / mariaDB päästikud / trigerid
### INSERT TRIGER

<img width="907" height="640" alt="{C73C9B0E-693A-4095-9A61-2893E554E601}" src="https://github.com/user-attachments/assets/433f16f6-5512-418a-ba1a-bfb5c71f9422" />

1. Kontrollimiseks <img width="1133" height="385" alt="{CB086B15-2895-4064-BF13-DE97E02033A8}" src="https://github.com/user-attachments/assets/4653c3a7-6380-4d55-89e1-1ef2c7389c46" />
2. Tulemus logi tabelist -
   <img width="734" height="164" alt="{7F23EA47-EB01-4123-99A7-93CDC13F4C0E}" src="https://github.com/user-attachments/assets/afe62d50-2128-4c0a-bf5d-fa3bfec8be21" />

### DELETE TRIGER
   <img width="745" height="484" alt="{98F09C6A-E020-4976-9358-DBCA2501B175}" src="https://github.com/user-attachments/assets/008cfbb2-e321-4d45-a91e-42396b64c489" />

### UPDATE TRIGER

<img width="858" height="573" alt="{00226B4C-EDE1-4DC5-82BB-86E3BF213839}" src="https://github.com/user-attachments/assets/d7fce817-26bc-46b3-9b43-f038df2a1cba" />













