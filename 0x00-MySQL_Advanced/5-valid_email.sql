-- a SQL script that creates an index idx_name_first_score on the table names and the first letter of name and the score.
-- Requirements:
-- Import this table dump: names.sql.zip
-- Only the first letter of name AND score must be indexed
DROP TRIGGER IF EXISTS valid_email;
DELIMITER &&
CREATE TRIGGER valid_email
    BEFORE UPDATE ON users
    FOR EACH ROW
    BEGIN
        IF OLD.email <> NEW.email THEN
            SET NEW.valid_email = 0;
        END IF;
    END &&
DELIMITER ;