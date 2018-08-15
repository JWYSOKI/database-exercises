# PART 1: Join Example Database

# Create a database named join_test_db
DROP database if exists join_test_db;
CREATE database  join_test_db;
USE join_test_db;
SHOW tables;

#  and run the SQL provided in the Join Example DB section above; to create the same setup used for this lesson.
CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

# Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('newuser1', 'newuser1@example.com', 3),
  ('newuser2', 'newuser2@example.com', 3),
  ('newuser3', 'newuser3@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null),
  ('jillian', 'jillian@example.com', null);
SHOW tables;

# Use join to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.
SELECT users.name as user_name, roles.name as role_name
FROM users
  JOIN roles ON users.role_id = roles.id;

# left join. Before you run each query, guess the expected number of results. **Returned <null> on right column
SELECT users.name as user_name, roles.name as role_name
FROM users
  LEFT JOIN roles ON users.role_id = roles.id;

# and right join. Before you run each query, guess the expected number of results. **Returned <null> on left column and 'commenter' for role name***
SELECT users.name as user_name, roles.name as role_name
FROM users
  RIGHT JOIN roles ON users.role_id = roles.id;

# Use count and the appropriate join type to get a list of roles along with the number of users that has the role. Hint: You will also need to use group by in the query.

SELECT * from USERS;

SELECT roles.name, COUNT(roles.name)
FROM users
  JOIN roles ON users.role_id
GROUP BY roles.name;

SELECT users.name as user_name, roles.name as role_name
FROM users
  JOIN roles ON users.role_id = roles.id;

