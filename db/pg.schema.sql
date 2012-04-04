SET client_min_messages TO WARNING;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) NOT NULL,
  crypted_password VARCHAR(192) NOT NULL,
  password_reset_token VARCHAR(20),
  password_reset_expires_at INTEGER,
  UNIQUE (email)
);

CREATE TABLE admin (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) NOT NULL,
  crypted_password VARCHAR(192) NOT NULL,
  UNIQUE (email)
);
