# Andmebasaside Maksim Bogatšov portfoolio ||| LOGITpe24

Andmebaasidega seotud sql kood ja konspektid

[Select laused](select.md) | [Kasutaja loomine XAMPP-is](kasutaja.md) | [Kasutaja loomine SQL Server](kasutaja.md) | [Triggerid](trigerid.md) | [Kodutöö - Keys](keys.md)


- SQL - structured Query Language - struktureeritud päringukeel
- DDL - Data Definition Language -andmebaasi struktuuri loomiseks - CREATE, ALTER
- DML - Data Manipulation Language -andmete lisamine ja uuendamine tabelis - INSERT, UPDATE, DELETE
# Põhimõisted

## Andmebaas (Database)

 Tähendus: Korraldatud andmete kogum, mida hoitakse arvutis.
 Kasutus: Andmete säilitamiseks, haldamiseks ja töötlemiseks.

 Näide: ettevõtte klientide andmebaas.

## Andmebaasihaldussüsteem (DBMS)

Tähendus: Tarkvara, mis võimaldab andmebaase luua, hallata ja kasutada.
  Kasutus: Andmete lisamiseks, muutmiseks, kustutamiseks ja pärimiseks.

 Näited:

- MySQL
- PostgreSQL
- Microsoft SQL Server
- 3. Tabel (Table)

Tähendus: Andmete hoidmise põhistruktuur andmebaasis.
Kasutus: Sarnaste andmete organiseerimiseks.

Näide: tabel "Õpilased".
```sql
ID	Nimi	Vanus
1	Mari	18
4. Veerg (Atribuut, Column)
```
Tähendus: Tabeli omadus või tunnus.
Kasutus: Määrab, millist tüüpi andmeid tabel sisaldab.

Näide:

- ID
- Nimi
- Vanus
## Rida (Kirje, Record)

Tähendus: Üks konkreetne andmekogum tabelis.
Kasutus: Esindab ühte objekti või sündmust.

Näide:
| 1 | Mari | 18 |

See terve rida on üks kirje.

## Primaarvõti (Primary Key)

Tähendus: Veerg või veergude kombinatsioon, mis identifitseerib iga kirje unikaalselt.
Kasutus: Väldib duplikaatkirjeid.

Näide:

- ID = 1
- ID = 2

ID on primaarvõti.

## Võõrvõti (Foreign Key)

Tähendus: Viitab teise tabeli primaarvõtmele.
Kasutus: Seob omavahel erinevaid tabeleid.

Näide:

- Kliendid(ID)
- Tellimused(KlientID)

KlientID on võõrvõti.

## Indeks (Index)

Tähendus: Andmestruktuur, mis kiirendab otsinguid.
Kasutus: Suurte andmehulkade kiireks leidmiseks.

Näide:
```sql
CREATE INDEX idx_nimi
ON Kliendid(Nimi);
```
## Vaade (VIEW)

Tähendus: Virtuaalne tabel, mis põhineb päringul.
Kasutus: Lihtsustab keeruliste päringute kasutamist.

Näide:

- CREATE VIEW AktiivsedKliendid AS
- SELECT * FROM Kliendid
- WHERE Staatus='Aktiivne';
## Päring (SELECT)

Tähendus: Käsk andmete küsimiseks andmebaasist.
Kasutus: Andmete vaatamiseks.

Näide:

- SELECT * FROM Kliendid;
## Tingimus (WHERE)

Tähendus: Filtreerib päringu tulemusi.
Kasutus: Kuvab ainult vajalikud kirjed.

Näide:

- SELECT * FROM Kliendid
- WHERE Linn='Tallinn';
## Sorteerimine (ORDER BY)

Tähendus: Korraldab tulemused kindlas järjekorras.
Kasutus: Andmete järjestamiseks.

Näide:

- SELECT * FROM Kliendid
- ORDER BY Nimi ASC;
## Grupeerimine (GROUP BY)

Tähendus: Koondab sama väärtusega kirjed gruppidesse.
Kasutus: Statistika ja kokkuvõtete tegemiseks.

Näide:

- SELECT Linn, COUNT(*)
- FROM Kliendid
- GROUP BY Linn;
## Liitmine (JOIN)

Tähendus: Ühendab andmeid mitmest tabelist.
Kasutus: Seotud andmete kuvamiseks.

Näide:

- SELECT Kliendid.Nimi, Tellimused.Summa
- FROM Kliendid
- JOIN Tellimused
- ON Kliendid.ID = Tellimused.KlientID;
## NULL väärtus

Tähendus: Väärtus puudub või pole teada.
Kasutus: Märgib puuduvaid andmeid.

Näide:
```sql
Telefon = NULL
```
Telefoninumber pole teada.

## Piirangud (Constraints)

Tähendus: Reeglid andmete õigsuse tagamiseks.
Kasutus: Vigaste andmete sisestamise vältimiseks.

Levinud piirangud:

- PRIMARY KEY
- FOREIGN KEY
- NOT NULL
- UNIQUE
- CHECK

Näide:
```sql
Vanus INT CHECK (Vanus >= 0)
```
## Relatsioon (Relation)

Tähendus: Seos andmebaasi objektide vahel; relatsioonilises andmebaasis tähendab tavaliselt tabelit.
Kasutus: Andmete loogiliseks organiseerimiseks.

Näide:
- Klient ↔ Tellimus

## Skeem (Schema)

Tähendus: Andmebaasi struktuuri kirjeldus.
Kasutus: Määrab tabelid, väljad, seosed ja piirangud.

Näide:

- Kliendid(ID, Nimi, Linn)
- Tellimused(ID, KlientID, Summa)
## Protseduur (Stored Procedure)

Tähendus: Andmebaasi salvestatud SQL-käskude kogum.
Kasutus: Automatiseerib korduvaid tegevusi.

Näide:
```sql
CREATE PROCEDURE LisaKlient
AS
INSERT INTO Kliendid ...
```
20. Trigger

Tähendus: Automaatne tegevus, mis käivitub sündmuse korral.
Kasutus: Kontrollide ja automaatsete toimingute tegemiseks.

Näide:
```sql
AFTER INSERT
```
Käivitub pärast uue kirje lisamist.

21. Kasutaja ja õigused (GRANT, REVOKE)

Tähendus: Määravad, mida kasutajad andmebaasis teha võivad.
Kasutus: Turvalisuse tagamiseks.
```sql
GRANT – annab õigused:
```sql
GRANT SELECT ON Kliendid TO Mart;
```sql
REVOKE – eemaldab õigused:
```sql
REVOKE SELECT ON Kliendid FROM Mart;
```
## Sisukord
  - [Andmebaasihaldusüsteemid](#andmebaasihaldusüsteemid)
  - [Põhimõisted](#põhimõisted)
  - [Andmetüübid](#andmetüübid)
  - [Piirangud](#piirangud)
  - [Tabelivahelised Seosed](#tabelivahelised-seosed)




# Andmebaasihaldusüsteemid
Andmebaasidega seotud sql kood ja konspektid


### tunnis me kasutame andmebaasisüsteemid:
1.	SQL Server Management Stuudio (SQL Serveri haldamiseks) <img width="473" height="509" alt="{79478AC7-D075-462A-9853-B4658A507237}" src="https://github.com/user-attachments/assets/937671a3-70af-43c4-bf46-a21e2206fadb" />

2.	XAMPP -phpmyAdmin (mariaDB andmebaas) .vabavara

  ## Põhimõisted

- Andmebaas - struktureeritud andmete kogum
- Tabel - olem (entity)
- Veerg - väli (field)
- Rida - kirje (record)
- primaarne võti -PK-Primary Key - veerg (tavaliselt nimega id) unikaalse identifikaatoriga, mis eristab iga kirjet
- Välisvõti (võõrvõti) - FK Foreign Key - veerg, mis loob seose teise tabeli primaarvõtmega.

  ## Andmetüübid
  - INT, float, decimal(6,2) - numbrilised
  - varchar(50), char(6) -teksti/sümbolid
  -  boolean, bool, bit -loogiline tüüp
  -  date. time, datetime - kuupäeva
 
  ## Piirangud
  1. primary key
  2. foreign key
  3. unique
  4. not null
  5. check
```

  ## Tabelivahelised seosed
  - üks - ühele (nt mees --naine)
  - üks - mitmele (õpilane käib erinevates õppeainetes)
<img width="686" height="301" alt="{F3DF641B-EBE2-48DC-AB3E-BF8B57B6FBCF}" src="https://github.com/user-attachments/assets/f20d90ca-a51f-4245-8441-28db4c6b39fb" />

  - mitu - mitmele (nt õpilane - õpetaja)
```
  ## Stored procedure
Salvestatud protseduurid - sama mis on funktsioonid programeerimises - mingi tegevus(ed), mida saab automaatselt teha(INSERT, SELECT, UPDATE, DELETE)
```sql
create procedure lisaKategooria
@nimi varchar(15)
AS
BEGIN
	INSERT INTO categories
	VALUES (@nimi);
	SELECT * FROM categories;
END

--kutse
EXEC lisaKategooria 'test';

--proceduur, mis kustutab tabelist id järgi
Create procedure kustutaIdjargi
@id int
AS
BEGIN
	SELECT * FROM categories
	DELETE FROM categories WHERE category_id=@id;
	SELECT * FROM categories;
END
--kutse
EXEC kustutaIdJargi 6;

```
