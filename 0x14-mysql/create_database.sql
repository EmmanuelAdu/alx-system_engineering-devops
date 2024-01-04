-- creating DATABASE "tyrell_corp" and inserting a table
-- "nexus6" and holberton_user has SELECT permissions on table 
CREATE DATABASE IF NOT EXISTS tyrell_corp;
USE tyrell_corp;
CREATE TABLE IF NOT EXISTS nexus6 (id INT, name VARCHAR(225));
INSERT INTO `nexus6` (`id`, `name`) VALUES(1, 'Leon');
GRANT ALL PRIVILEGES ON tyrell_corp.* TO 'holberton_user'@'localhost';
