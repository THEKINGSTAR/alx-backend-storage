-- a SQL script that creates an index idx_name_first_score on the table names and the first letter of name and the score.
-- Requirements:
-- Import this table dump: names.sql.zip
-- Only the first letter of name AND score must be indexed
CREATE TRIGGER valid_email
AFTER UPDATE
ON users
FOR EACH ROW
    UPDATE users
    SET valid_email = 0
    WHERE id = NEW.id;