-- antra_uzduotis.sql
CREATE TABLE destitojai (
id INTEGER PRIMARY KEY AUTOINCREMENT,
vardas VARCHAR(50),
pavardė VARCHAR(50),
adresas VARCHAR(100),
el_paštas VARCHAR(50)
);

ALTER TABLE destitojai
ADD kabineto_nr INTEGER;

DROP TABLE destitojai;
