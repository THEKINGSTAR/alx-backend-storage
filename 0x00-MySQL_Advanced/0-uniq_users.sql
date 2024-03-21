-- a SQL script that creates a table users following these requirements:
-- With these attributes:
-- id, integer, never null, auto increment and primary key
-- email, string (255 characters), never null and unique
-- name, string (255 characters)
-- If the table already exists, your script should not fail
-- Your script can be executed on any database
-- Context: Make an attribute unique directly in the table schema will enforced your business rules and avoid bugs in your application

CREATE TABLE IF NOT EXISTS users (
		id AUTO_INCREMENT PRIMARY KEY,
		email varchar(255) NOT NULL UNIQUE,
		name varchar (255) NOT NULL
		);
