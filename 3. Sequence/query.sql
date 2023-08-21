-- Membuat sequence
CREATE SEQUENCE sekuens_ku;

-- Return next value
SELECT nextval('sekuens_ku');

-- Return second value
SELECT currval('sekuens_ku');

-- Hapus Sequence
DROP SEQUENCE sekuens_ku;

-- Menampilan list sequences
\ds