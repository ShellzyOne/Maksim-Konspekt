1. Primary Key (Primaarvõti)
Definitsioon

Primaarvõti on veerg või veergude kombinatsioon, mis identifitseerib iga kirje tabelis unikaalselt.

Milleks kasutatakse?
Kirjete üheseks tuvastamiseks.
Tabelite omavaheliseks sidumiseks.
Erinevus teistest võtmetest
Tabelis saab olla ainult üks Primary Key.
Ei tohi sisaldada NULL-väärtusi.
Näide
CREATE TABLE Opilane (
    opilane_id INT PRIMARY KEY,
    eesnimi VARCHAR(50),
    perenimi VARCHAR(50)
);
