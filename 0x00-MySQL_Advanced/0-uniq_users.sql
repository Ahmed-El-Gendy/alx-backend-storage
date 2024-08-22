--  Create a table named users with the following columns:
--  id: an integer that is the primary key of the table and is autoincremented
--  name: a string that is unique and cannot be null
--  email: a string that can be null

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255)
);
