USE employees;


SELECT DISTINCT
  title
FROM titles;


SELECT first_name, last_name, COUNT(last_name)
FROM employees
WHERE last_name like 'e%e'
GROUP BY first_name, last_name
ORDER BY last_name;

SELECT DISTINCT
  last_name
FROM employees
WHERE last_name like '%q%'
      and last_name not like '%qu%';

SELECT gender, COUNT(*)
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
GROUP BY gender;
