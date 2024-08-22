-- Create a table named users with the following columns:

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    email VARCHAR(255) NOT NULL UNIQUE,
    country VARCHAR(255) enum('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);