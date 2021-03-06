USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
artist VARCHAR(255),
name VARCHAR(255),
release_date INT UNSIGNED,
genre VARCHAR(255),
sales DECIMAL(6,2),
PRIMARY KEY (id),
UNIQUE(name,artist)
);