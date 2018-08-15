# USE your employees database.
USE employees;

# DESCRIBE each table and inspect the keys and see which columns have indexes and keys.
SHOW index FROM dept_emp WHERE Key_name = 'PRIMARY';
SELECT * FROM departments;
DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE titles;

# USE your codeup_test_db database.
USE codeup_test_db;

# SHOW TABLES;
# Add an index to make sure all album names combined with the artist are unique. Try to add duplicates to test the constraint.
SELECT * FROM albums;
ALTER TABLE albums
ADD UNIQUE (artist, name);
DESCRIBE albums;
INSERT INTO albums (artist, name) VALUES('Michael Jackson', 'Thriller');
# Attempted add of 'Michael Jackson', 'Thriller' failed, with error message of duplicate entry. Code works.

# This is Justin's solution from class Wednesday 8/15
SE codeup_test_db;
SHOW TABLES;
SELECT * FROM albums;
DESCRIBE albums;
ALTER TABLE albums
  ADD UNIQUE(name, artist);
INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Test Artist 3', 'Test Album asdf', 2000, 11, 'Test2 Genre');
ALTER TABLE albums
  DROP INDEX name;
SHOW INDEX FROM albums;


