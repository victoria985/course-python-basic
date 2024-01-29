-- SQLite
CREATE TABLE klientai (
id INTEGER PRIMARY KEY AUTOINCREMENT,
vardas VARCHAR(50),
pavardė VARCHAR(50),
adresas VARCHAR(100),
el_paštas VARCHAR(50)
);

ALTER TABLE klientai ADD mob_numeris VARCHAR(20);
