# USE employees;
# # SHOW index FROM dept_emp WHERE Key_name = 'PRIMARY';
# SELECT * FROM departments;
# # DESCRIBE departments;
# DESCRIBE dept_emp;
# # DESCRIBE dept_manager;
# # DESCRIBE employees;
# # DESCRIBE salaries;
# # DESCRIBE titles;
USE codeup_test_db;
SELECT * FROM albums;
ALTER TABLE albums ADD UNIQUE (artist, name);
DESCRIBE albums;
INSERT INTO albums (artist, name) VALUES('Michael Jackson', 'Thriller');