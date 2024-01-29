-- pirma_uzduotis.sql
CREATE TABLE studentai (
    studento_id INTEGER PRIMARY KEY,
    vardas VARCHAR(50),
    pavarde VARCHAR(50),
    studiju_programa VARCHAR(100),
    el_pastas VARCHAR(50)
);

ALTER TABLE studentai
ADD gimimo_data DATE;

ALTER TABLE studentai
ALTER COLUMN studiju_programa TEXT;

DROP TABLE studentai;