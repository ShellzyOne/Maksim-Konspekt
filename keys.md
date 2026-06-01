Andmebaasidega seotud sql kood ja konspektid

[Select laused](select.md) | [Kasutaja loomine XAMPP-is](kasutaja.md) | [Kasutaja loomine SQL Server](kasutaja.md) | [Triggerid](trigerid.md) | [Kodutöö - Keys](keys.md)

## Primary Key (Primaarvõti)
Definitsioon:

Primaarvõti on veerg või veergude kombinatsioon, mis identifitseerib iga kirje tabelis unikaalselt.

Milleks kasutatakse?
- Kirjete üheseks tuvastamiseks.
- Tabelite omavaheliseks sidumiseks.
Erinevus teistest võtmetest
- Tabelis saab olla ainult üks Primary Key.
- Ei tohi sisaldada NULL-väärtusi.

- Näide:
```
CREATE TABLE Opilane (
    opilane_id INT PRIMARY KEY,
    eesnimi VARCHAR(50),
    perenimi VARCHAR(50)
);
```
<img width="365" height="487" alt="{C101E313-76C2-4BCB-8DFB-B49413FDD301}" src="https://github.com/user-attachments/assets/fbe71efb-031f-4734-82fc-2f1e156d1638" />


## Foreign Key (Võõrvõti)
Definitsioon:

Võõrvõti on veerg, mis viitab teise tabeli primaarvõtmele.

Milleks kasutatakse?
- Tabelite vaheliste seoste loomiseks.
- Andmete tervikluse tagamiseks.
- Erinevus teistest võtmetest
- Ei pea olema unikaalne.
- Viitab alati teisele tabelile.
Näide:
```
CREATE TABLE Klass (
    klass_id INT PRIMARY KEY,
    nimetus VARCHAR(20)
);
CREATE TABLE Opilane (
    opilane_id INT PRIMARY KEY,
    nimi VARCHAR(50),
    klass_id INT,
    FOREIGN KEY (klass_id)
        REFERENCES Klass(klass_id)
);
```
<img width="392" height="703" alt="{33CC6A11-3835-49A1-835C-A80A89D4F135}" src="https://github.com/user-attachments/assets/c7873574-60c0-4c5d-9418-f15d103678b6" />


## Unique Key (Unikaalne võti)
Definitsioon:

Tagab, et veerus olevad väärtused on unikaalsed.

Milleks kasutatakse?
- Duplikaatväärtuste vältimiseks.
- Erinevus teistest võtmetest
- Tabelis võib olla mitu UNIQUE võtit.
- Tavaliselt võib sisaldada NULL-väärtust.
Näide:
```
CREATE TABLE Kasutaja (
    kasutaja_id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE
):
```
<img width="380" height="487" alt="{72A9EF24-A131-49B7-BB76-9D09A5114704}" src="https://github.com/user-attachments/assets/6196bd32-ba09-4987-87b8-1282fb5da9f6" />

## Simple Key (Lihtvõti)
Definitsioon:

Võti, mis koosneb ainult ühest atribuudist (veerust).

Milleks kasutatakse?
- Kirjete üheseks identifitseerimiseks ühe veeru abil.
- Erinevus teistest võtmetest
- Koosneb ainult ühest veerust.
Näide:
```
CREATE TABLE Toode (
    toode_id INT PRIMARY KEY,
    nimetus VARCHAR(100)
);
```
Siin on toode_id lihtvõti.
<img width="336" height="304" alt="{EFFB2656-6FA8-443F-A70E-56FAD6AD434F}" src="https://github.com/user-attachments/assets/4bcd926c-60e4-4c82-a703-e5bb66e41596" />

## Composite Key (Liitvõti)
Definitsioon:

Võti, mis koosneb kahest või enamast veerust.

Milleks kasutatakse?
- Kui üks veerg üksi ei taga unikaalsust.
- Erinevus teistest võtmetest
- Koosneb mitmest veerust.
Näide:
```
CREATE TABLE OpetajaAine (
    opetaja_id INT,
    aine_id INT,
    PRIMARY KEY (opetaja_id, aine_id)
);
```
Ainult mõlema veeru kombinatsioon on unikaalne.
<img width="397" height="374" alt="{23434DFE-478F-4118-BF8D-24C1F5645F11}" src="https://github.com/user-attachments/assets/258f9876-c63f-4b90-a0d4-7f2c5b79d8dc" />

## Compound Key (Kombineeritud võti)
Definitsioon:

Mitmest veerust koosnev võti, kus vähemalt üks veerg võib olla ka võõrvõti.

Milleks kasutatakse?
- Mitme tabeli seoste kirjeldamiseks.
- Erinevus Composite Key-st
- Composite Key rõhutab mitut veergu.
- Compound Key sisaldab sageli võõrvõtmeid.
Näide:
```
CREATE TABLE Tellimus (
    tellimus_id INT PRIMARY KEY
);

CREATE TABLE Toode (
    toode_id INT PRIMARY KEY
);

CREATE TABLE Tellimus_Toode (
    tellimus_id INT,
    toode_id INT,
    kogus INT,
    PRIMARY KEY (tellimus_id, toode_id),
    FOREIGN KEY (tellimus_id)
        REFERENCES Tellimus(tellimus_id),
    FOREIGN KEY (toode_id)
        REFERENCES Toode(toode_id)
);
```
<img width="432" height="699" alt="{54CE86A1-D02B-4335-95A9-5E137372AA87}" src="https://github.com/user-attachments/assets/29357f52-dba1-426d-8dae-6879c7ffde32" />

## Superkey (Ülivõti)
Definitsioon:

Veerg või veergude kombinatsioon, mis identifitseerib kirje unikaalselt.

Milleks kasutatakse?
- Võimalike kandidaatvõtmete leidmiseks.
- Erinevus teistest võtmetest
- Võib sisaldada üleliigseid atribuute.
Näide:

<img width="503" height="178" alt="{ED753729-85C8-4EAC-969D-1F1513F070B0}" src="https://github.com/user-attachments/assets/2d84f69b-5c8c-44bd-81d2-482bd9040716" />


Kõik need identifitseerivad kirje unikaalselt.

## Candidate Key (Kandidaatvõti)
Definitsioon:

Minimaalne superkey, mis identifitseerib kirje unikaalselt.

Milleks kasutatakse?
- Primaarvõtme valimiseks.
- Erinevus teistest võtmetest
- Ei sisalda üleliigseid atribuute.
Näide:
CREATE TABLE Opilane (
    opilane_id INT,
    email VARCHAR(100),
    nimi VARCHAR(50),
    PRIMARY KEY (opilane_id),
    UNIQUE (email)
);

Kandidaatvõtmed:

opilane_id
email
<img width="329" height="313" alt="{EA0B979F-976D-4A80-B813-8664F5ED2018}" src="https://github.com/user-attachments/assets/b5cc8431-a8cf-4779-bce5-59b8bf86232a" />

## Alternate Key (Alternatiivvõti)
Definitsioon:

Kandidaatvõti, mida ei valitud primaarvõtmeks.

Milleks kasutatakse?
- Täiendava unikaalsuse tagamiseks.
- Erinevus teistest võtmetest
- On kandidaatvõti, kuid mitte Primary Key.
Näide:
CREATE TABLE Opilane (
    opilane_id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE,
    nimi VARCHAR(50)
);

Siin:

opilane_id = Primary Key
email = Alternate Key

<img width="343" height="379" alt="{986AFAA2-A97A-4B4B-B890-C0EE2F8DA1B4}" src="https://github.com/user-attachments/assets/cf9bc475-9270-4411-8f78-71f028a87cf0" />
