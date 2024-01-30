-- Uzduotys03.sql
--1 uzduotis
CREATE TABLE studentai (
id INTEGER PRIMARY KEY AUTOINCREMENT,
pirmas_studentas VARCHAR(250),
antras_studentas VARCHAR(250),
trecias_studentas VARCHAR(250)
);

CREATE TABLE kursai (
id INTEGER PRIMARY KEY AUTOINCREMENT,
matematikos_kursas VARCHAR (200),
istorijos_kursas VARCHAR (200),
anglu_kalbos_kursas VARCHAR (200),
informatikos_kursas VARCHAR (200),
fizikos_kursas VARCHAR (200)
);

CREATE TABLE studentai_kursai (
id INTEGER PRIMARY KEY AUTOINCREMENT,
studentai_id INTEGER REFERENCES kursai(id),
kursai_id INTEGER REFERENCES studentai(id)
);

--2 uzduotis
CREATE TABLE prekes (
id INTEGER PRIMARY KEY AUTOINCREMENT,
prekes_pavadinimas TEXT,
prekes_aprasymas TEXT,
prekes_vienetas INTEGER
);

CREATE TABLE prekiu_kategorijos (
id INTEGER PRIMARY KEY AUTOINCREMENT,
vitaminai_papildai TEXT,
arbatos_vaistazoles TEXT,
vaistai TEXT,
kosmetika_higiena TEXT
prekes_id INTEGER REFERENCES prekiu_kategorijos(id)
);

--3 uzduotis
CREATE TABLE vadovas (
id INTEGER PRIMARY KEY AUTOINCREMENT,
vardas VARCHAR (200),
pavarde VARCHAR (200),
imones_pavadinimas VARCHAR (200)
);

CREATE TABLE darbuotojai (
id INTEGER PRIMARY KEY AUTOINCREMENT,
pirmas_darbuotojas VARCHAR (300),
antras_darbuotojas VARCHAR (300),
trecias_darbuotojas VARCHAR (300),
vadovas_id INTEGER REFERENCES darbuotojai(id)
);

--4 uzduotis
CREATE TABLE skelbimai (
id INTEGER PRIMARY KEY AUTOINCREMENT,
skelbimo_turinis VARCHAR (350),
skelbimo_data DATETIME
);

CREATE TABLE skelbimu_kategorijos (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nekilnuojamas_turtas TEXT,
buitine_technika VARCHAR(400),
elektro_prekes VARCHAR(400),
transportas VARCHAR(400),
pramogos VARCHAR(400)
);

CREATE TABLE skelbimai_skelbimu_kategorijos (
id INTEGER PRIMARY KEY AUTOINCREMENT,
skelbimai_id INTEGER REFERENCES skelbimu_kategorijos(id),
skelbimu_kategorijos_id INTEGER REFERENCES skelbimai(id)
);