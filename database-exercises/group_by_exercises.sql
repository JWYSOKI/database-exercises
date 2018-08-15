USE employees;

# use DISTINCT to find the unique titles in the titles table
SELECT DISTINCT
  title
FROM titles;


SELECT first_name, last_name, COUNT(last_name)
FROM employees
WHERE last_name like 'e%e'
GROUP BY first_name, last_name
ORDER BY last_name;

# Find the unique last names with a 'q' but not 'qu'
SELECT DISTINCT last_name
FROM employees
WHERE last_name like '%q%'
      and last_name not like '%qu%';

# SELECT gender, COUNT(*)
# FROM employees
# WHERE last_name LIKE '%q%'
# AND last_name NOT LIKE

#7 Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names
SELECT gender, COUNT(*)
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
GROUP BY gender;
