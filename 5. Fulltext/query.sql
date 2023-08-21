
-- Cek list langunage yg ada dan bisa digunakan untuk fulltext
SELECT cfgname FROM pg_ts_config;

START TRANSACTION;

CREATE SEQUENCE laptop_sequence;

CREATE TABLE laptop (
  id INT NOT NULL DEFAULT nextval('laptop_sequence'),
  merk VARCHAR(100) NOT NULL,
  serial_number VARCHAR(100) NOT NULL,

  PRIMARY KEY (id),
  CONSTRAINT serial_number_key UNIQUE (serial_number)
);

-- Add Fulltext Search
CREATE INDEX merk_idx ON laptop USING GIN (to_tsvector('indonesian', 'merk'));

COMMIT;

-- Hapus Fulltextserch
DROP INDEX merk_idx;

INSERT INTO laptop(merk, serial_number) 
VALUES ('Apple', 'M1 Air'),
('Apple', 'M2 Max'),
('Lenovo', 'Thinkpad');

-- Menggunakan fulltext
SELECT * FROM laptop
WHERE merk @@ to_tsquery('apple');

-- Search pake operator AND, cari yg merk nya apple lenovo, string "Apple Lenovo" bukan "Apple" "Lenovo"
SELECT * FROM laptop
WHERE merk @@ to_tsquery('Apple & Lenovo');

-- Search pake operator OR, cari yg merknya "Apple" atau "Lenovo"
SELECT * FROM laptop
WHERE merk @@ to_tsquery('Apple | Lenovo');

-- Search yg bukan apple
SELECT * FROM laptop
WHERE merk @@ to_tsquery('!apple');

-- Search full, cari lebih dari satu kata
SELECT * FROM laptop
WHERE serial_number @@ to_tsquery('''M2 Max''');