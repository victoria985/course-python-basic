-- UZDUOTYS02.sql
--pirma uzduotis
CREATE TABLE mokytojai (
id INTEGER PRIMARY KEY,
vardas VARCHAR(200) NOT NULL,
pavarde VARCHAR(200) NOT NULL,
specialybe VARCHAR(200),
patirtis_metais INTEGER
);

--antra uzduotis
INSERT INTO mokytojai (id, vardas, pavarde, specialybe, patirtis_metais)
VALUES (1, 'Petras', 'Petraitis', 'Matematika', 2013);
INSERT INTO mokytojai (id, vardas, pavarde, specialybe, patirtis_metais)
VALUES (2, 'Ona', 'Onaite', 'Fizika', 2012);
INSERT INTO mokytojai (id, vardas, pavarde, specialybe, patirtis_metais)
VALUES (3, 'Marius', 'Marijus', 'Biologija', 2015);
INSERT INTO mokytojai (id, vardas, pavarde, specialybe, patirtis_metais)
VALUES (4, 'Rasa', 'Rasaite', 'Anglu_kalba', 2011);
INSERT INTO mokytojai (id, vardas, pavarde, specialybe, patirtis_metais)
VALUES (5, 'Aurimas', 'Aurimaitis', 'Lietuviu_kalba', 2018);
INSERT INTO mokytojai (id, vardas, pavarde, specialybe, patirtis_metais)
VALUES (6, 'Gintare', 'Gintariene', 'Istorija', 2020);

--trecia uzduotis
SELECT * FROM mokytojai WHERE specialybe = "Matematika";

--ketvirta uzduotis
SELECT * FROM mokytojai WHERE (2024 - patirtis_metais) > 8 AND (2024 - patirtis_metais) > 9;

--penkta uzduotis
UPDATE mokytojai SET pavarde = "Zoliene" WHERE pavarde = "Rasaite";

--sesta uzduotis
DELETE FROM mokytojai WHERE id = 4;