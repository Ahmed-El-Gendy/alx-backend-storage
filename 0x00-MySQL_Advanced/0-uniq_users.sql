--  Create a table named users with the following columns:
-- id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
-- name VARCHAR(255) NOT NULL UNIQUE
-- email VARCHAR(255)
-- The name column should be unique.
-- The table should only be created if it does not already exist.

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255)
);