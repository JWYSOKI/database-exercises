DROP database if exists join_test_db;
CREATE database  join_test_db;
USE join_test_db;

SHOW tables ;

INSERT INTO users (name, email, role_id)
VALUES ('rachel', 'rachel@example.com', 1),
  ('mark', 'mark@example.com', 2),
  ('chris', 'chris@example.com', 3),
  ('jillian', 'jillian@example.com', null),
  ('ryan', 'ryan@markmann.com', 3);

SELECT * FROM USERS;
SELECT users.name as user_name, roles.name as role_name
FROM users
  JOIN roles ON users.role_id = roles.id;

SELECT *
FROM users
  RIGHT JOIN roles ON users.role_id = roles.id;

SELECT users.name as user_name, roles.name as role_name
FROM roles
  LEFT JOIN users ON users.role_id = roles.id;

SELECT COUNT (users)
FROM users
group by role
JOIN roles ON users.role_id = roles.id;

SELECT roles.name, COUNT(roles.name)
FROM users
JOIN roles ON users.role_id = role_id
GROUP BY roles.name;
SELECT * FROM users;
SELECT users.name, roles.name
FROM users
RIGHT JOIN roles
ON roles.id = users.role_id;



SELECT roles.name, COUNT(roles.name)
FROM roles
  RIGHT JOIN users ON role_id = users.role_id
GROUP BY roles.name;



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

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null);