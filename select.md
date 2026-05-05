<img width="942" height="501" alt="{8734B081-4612-4419-8CCB-5C58874B9D6C}" src="https://github.com/user-attachments/assets/e6315cd3-8676-4468-9bf7-6493ebf6e7aa" />

```sql
create database selectBogatšov;
use selectBogatšov;
create table auto(
autonumber char(6) primary key,
mark varchar(30),
mudell varchar(50),
v_aasta int,
varv varchar(50),
hind money);

Select * from auto;
--mockaroo.com -- kasutame andmete genereerimiseks

insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('939yx2', 'Land Rover', 'Range Rover', 1992, 'Purple', '€5980,78');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('603772', 'Ford', 'Probe', 1993, 'Yellow', '€3398,94');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('951u1k', 'Plymouth', 'Breeze', 1999, 'Yellow', '€2615,61');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('487DsV', 'Mercury', 'Topaz', 1986, 'Violet', '€600,14');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('328s14', 'Infiniti', 'J', 1993, 'Fuscia', '€3366,17');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('2984Nk', 'Volkswagen', 'Jetta', 1991, 'Green', '€4322,62');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('426xwb', 'Honda', 'Prelude', 1985, 'Turquoise', '€2638,47');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('357kEE', 'Toyota', '4Runner', 1997, 'Crimson', '€5671,57');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('895DjV', 'Ford', 'Explorer', 2008, 'Orange', '€4696,76');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('3751sd', 'Acura', 'CL', 1999, 'Crimson', '€963,61');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('499hmp', 'Ford', 'Crown Victoria', 2010, 'Violet', '€5074,47');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('499BgX', 'Hummer', 'H3', 2008, 'Puce', '€8275,33');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('726e9N', 'Isuzu', 'Oasis', 1997, 'Turquoise', '€4304,75');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('8035PJ', 'Toyota', 'MR2', 2005, 'Orange', '€2931,66');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('875aMx', 'Plymouth', 'Laser', 1991, 'Mauv', '€8859,71');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('1326a5', 'Pontiac', 'Firebird', 1968, 'Teal', '€9814,43');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('106Qwd', 'BMW', 'M Roadster', 2008, 'Maroon', '€6845,09');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('009bNv', 'Mercury', 'Monterey', 2007, 'Blue', '€1366,30');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('8469SJ', 'Volkswagen', 'Golf III', 1993, 'Teal', '€1607,15');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('691DRq', 'Pontiac', 'Sunbird', 1988, 'Khaki', '€2818,03');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('608Kdl', 'Infiniti', 'Q', 1999, 'Orange', '€2184,51');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('716mXz', 'Jaguar', 'S-Type', 2006, 'Indigo', '€9427,86');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('438KoE', 'Dodge', 'Ram Wagon B250', 1992, 'Aquamarine', '€9084,39');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('074AxU', 'Subaru', 'Leone', 1985, 'Mauv', '€629,12');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('825rek', 'BMW', '6 Series', 2005, 'Green', '€932,06');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('924FHw', 'GMC', 'Savana 1500', 2004, 'Violet', '€3083,75');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('887wyA', 'Mitsubishi', 'Diamante', 1992, 'Teal', '€3721,67');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('0659J4', 'Audi', 'Allroad', 2001, 'Yellow', '€5318,94');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('3356HL', 'Dodge', 'Ram 1500', 2006, 'Puce', '€7913,59');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('4618X0', 'Mercedes-Benz', 'C-Class', 2009, 'Fuscia', '€5662,83');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('054PUq', 'Lexus', 'GX', 2012, 'Pink', '€7537,41');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('224kzb', 'Mitsubishi', 'Pajero', 1986, 'Indigo', '€3359,54');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('954NKY', 'Ford', 'Ranger', 1989, 'Teal', '€7981,45');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('963EwY', 'Lexus', 'LS', 2001, 'Purple', '€467,56');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('443GoQ', 'Chevrolet', 'Blazer', 1992, 'Mauv', '€7940,66');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('362Rf1', 'Chevrolet', 'G-Series G20', 1994, 'Yellow', '€4637,50');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('217Bz9', 'Infiniti', 'QX', 2002, 'Violet', '€6559,72');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('8036bX', 'Saturn', 'L-Series', 2003, 'Maroon', '€2473,35');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('346KHT', 'Dodge', 'Ram Van 1500', 2001, 'Blue', '€3952,41');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('847TFZ', 'Mercedes-Benz', 'C-Class', 2012, 'Crimson', '€7238,93');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('485SSB', 'Cadillac', 'Escalade ESV', 2007, 'Aquamarine', '€7441,74');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('202sEF', 'Volkswagen', 'GTI', 2002, 'Blue', '€3383,92');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('546xoB', 'Nissan', 'Murano', 2009, 'Turquoise', '€9059,90');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('351R5o', 'Dodge', 'D150', 1993, 'Khaki', '€6896,33');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('376Qdp', 'Mitsubishi', 'Eclipse', 2007, 'Teal', '€2400,14');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('836Yyn', 'Volvo', 'S40', 2011, 'Purple', '€3683,72');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('7979eV', 'Dodge', 'Omni', 1978, 'Crimson', '€9233,37');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('503VVE', 'Pontiac', 'GTO', 1964, 'Teal', '€6818,97');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('130VQr', 'Nissan', 'Pathfinder', 1999, 'Crimson', '€8124,23');
insert into auto (autonumber, mark, mudell, v_aasta, varv, hind) values ('893jui', 'Subaru', 'XT', 1988, 'Turquoise', '€647,01');
​
```
Select * from auto;
--Näita ainult mark, mudel ja hind
Select mark, mudell, hind from auto;
--tingimused
--sorteerimine - ORDER by -kasvavalt, DESC - kahanevalt
Select mark, mudell, hind
from auto
ORDER by hind Desc;

<img width="230" height="64" alt="{2991D5D6-50E1-4027-A3C3-A845F7785BEB}" src="https://github.com/user-attachments/assets/6bb2b33f-8567-4870-b10a-c9aaeb7b7d5a" />



```
--mark algab C tähega
Select mark FROM auto
WHERE mark LIKE 'C%'
```
<img width="241" height="262" alt="{0A618C25-4B32-451E-B586-6FDB8D8EAEC3}" src="https://github.com/user-attachments/assets/a8fc9afe-2623-43aa-a0cb-d6c72f7f1092" />



```
--mark sisaldab c täht
Select mark from auto
WHERE mark LIKE '%C%';
```
<img width="256" height="436" alt="{B98BC27C-E89D-49F4-9801-71083B3801BE}" src="https://github.com/user-attachments/assets/8d4b1ffb-8076-4341-b87a-674e52e7ec2b" />

 ```
--hind on vahemikus 150000 kuni 300000 euro
Select mark, autonumber, hind
from auto
where hind > 150000 AND hind < 300000;

-- teine variant
Select mark, autonumber, hind
from auto
where hind between 150000 and 300000;

--kombineeritud tingimused (AND, OR, NOT)
Select mark, autonumber, hind
FROM auto
Where mark NOT LIKE 'PONTIAC' OR HIND <=100000

--vaade loomine - VIEW
CREATE VIEW pontiacAutod
AS
Select mark, autonumber, hind
FROM auto
WHERE mark LIKE 'Pontiac';

--view kasutamine:
Select * from pontiacAutod;
 

 --Agregaatfunktsioonid - SUM, MAX, MIN, AVG, COUNT
 
 -- Leia mitu autot on tabelis
 SELECT COUNT(*) AS autodeArv FROM auto;

 -- Leia keskmine autohind
 SELECT AVG(hind) AS 'auto Keskmine Hind' FROM auto;

 -- Leia keskmine autohind iga marki kohta
 SELECT mark, AVG(hind) AS 'auto keskmine HIND'
 FROM auto 
 GROUP by mark

```
