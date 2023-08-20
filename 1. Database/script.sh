# =========== Database

# 1. Masuk ke dalam PostgreSQL client (psql)
psql --host=localhost --port=5432 --username=mathius --password --dbname=postgres

# 2. Menampilkan list database yang ada
\l

# 3. Menampilkan list database yang ada
SELECT datname FROM pg_database;

# 4. Membuat database
CREATE DATABASE postgresql_basic;

# 5. Menggunakan database
\c  postgresql_basic;

# 6. Menampilkan list table
\dt

# 7. Menampilkan list table
SELECT * FROM pg_tables WHERE schemaname = 'public';

# 7. Membuat Table
CREATE TABLE users (
  id SERIAL NOT NULL,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255),
  phone VARCHAR(255) DEFAULT 'no-photo.png',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

  -- Membuat Primary Key
  PRIMARY KEY (id)
);

# 8. Menghapus Table
DROP TABLE users;

# 9. Melihat desc table
\d users;

# 10. Menambah field
ALTER TABLE users
ADD COLUMN birthday DATE NOT NULL;

# 11. Mengubah nama field
ALTER TABLE users
RENAME COLUMN birthday TO ttl;

# 12. Modifikasi sebuah field
ALTER TABLE users
ALTER COLUMN ttl TYPE TIMESTAMP;

# 13. Menghapus Field
ALTER TABLE users
DROP COLUMN ttl;

# 14. Truncate Table
TRUNCATE users;

# 15. Menghapus database
DROP DATABASE postgresql_basic;