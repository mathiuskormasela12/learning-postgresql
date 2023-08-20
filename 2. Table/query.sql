CREATE TABLE users (
  id SERIAL NOT NULL,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255),
  phone VARCHAR(255) DEFAULT 'no-photo.png',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

  -- Membuat Primary Key
  PRIMARY KEY (id),

  -- Membuat Unique Constrains
  CONSTRAINT email_unik UNIQUE (email)
);


-- 1. Insert Data
INSERT INTO users (username, email, password) 
VALUES ('admin', 'admin@gmail.com', '123'),
('yerin', 'yerin@gmail.com', '123'),
('umji', 'umji@gmail.com', '123'),
('eunha', 'eunha@gmail.com', '123'),
('sowon', 'sowon@gmail.com', '123');


-- 2. Select Data
SELECT * FROM users;

-- 3. Update Data
UPDATE users SET username = 'admin123' WHERE id = 1;

-- 4. Delete Data
DELETE FROM users WHERE id = 1;

-- 5. Alias
SELECT username AS nama_user, password pass FROM users;

-- 6. Limit Offset
SELECT * FROM users Limit 2 Offset 1;

-- 7. Distint
SELECT DISTINCT username FROM users;