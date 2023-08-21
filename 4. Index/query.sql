
START TRANSACTION;

CREATE SEQUENCE laptop_sequence;

CREATE TABLE laptop (
  id INT NOT NULL DEFAULT nextval('laptop_sequence'),
  merk VARCHAR(100) NOT NULL,
  serial_number VARCHAR(100) NOT NULL,

  PRIMARY KEY (id),
  CONSTRAINT serial_number_key UNIQUE (serial_number)
);

-- Add Index
CREATE INDEX merk_idx ON laptop (merk);

COMMIT;

-- Hapus Index
DROP INDEX merk_idx;