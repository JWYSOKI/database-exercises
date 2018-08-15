USE employees;


SELECT *
FROM employees
WHERE (gender = 'm')
      and (first_name = 'Irena'
           or first_name = 'Vidya'
           or first_name = 'Maya')
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE last_name like 'e%'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE hire_date like('199%');

SELECT *
FROM employees
WHERE birth_date like ('%-12-25');

SELECT *
FROM employees
WHERE last_name like ('%q%');

SELECT CONCAT (first_name,' ',last_name)
FROM employees
WHERE last_name like 'e%' or last_name like '%e';

SELECT datediff(CURDATE(), hire_date )
FROM employees
WHERE hire_date like '199%' and birth_date like '%-12-25'
ORDER BY birth_date DESC, hire_date ASC;

SELECT *
FROM employees
WHERE last_name like '%q%' and last_name not like'%qu%';