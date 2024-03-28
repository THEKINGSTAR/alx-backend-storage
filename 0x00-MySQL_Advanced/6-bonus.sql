-- Write a SQL script that creates a stored procedure AddBonus
-- that adds a new correction for a student.
-- Requirements:

-- Procedure AddBonus is taking 3 inputs (in this order):
-- user_id, a users.id value (you can assume user_id is linked to an existing users)
-- project_name, a new or already exists projects - if no projects.name
    --  found in the table, you should create it
-- score, the score value for the correction

-- Context: Write code in SQL is a nice level up!

CREATE PROCEDURE IF NOT EXISTS AddBonus(IN user_id INT, IN project_name varchar(255), IN score INT)
AS
INSERT INTO corrections IF NOT EXISTS VALUES(user_id, )
GO;