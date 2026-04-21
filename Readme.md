# AndmebaasidLogitpe24
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
