-- Membuat schema

CREATE SCHEMA skemaku;

-- Cek skema skrg
SELECT current_schema();
SHOW search_path;

-- pidinah schema
SET search_path TO skemaku;

-- Hapus Schema
DROP SCHEMA skemaku;