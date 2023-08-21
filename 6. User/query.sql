-- Membuat user
CREATE ROLE budi;

-- Set password dan allow budi untuk bisa login
ALTER ROLE budi LOGIN PASSWORD '321';

-- Kasih Akses
GRANT SELECT, INSERT ON users TO budi;

-- Hapus Akses
REVOKE SELECT ON users FROM budi;

-- Hapus USer
DROP ROLE budi;