# Using the example in the Associative Table Joins section as a guide,

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
# JOIN dept_emp as de
# ON de.emp_no = e.emp_no
# JOIN departments as d
# ON d.dept_no = de.dept_no
# WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

#write a query that shows each department along with the name of the current manager for that department.

USE employees;

SELECT d.dept_name Department,
       CONCAT_ws(' ', e.first_name,e.last_name) Manager
FROM employees e
  JOIN dept_manager dm ON e.emp_no = dm.emp_no
  JOIN departments d ON dm.dept_no = d.dept_no
WHERE dm.to_date > curdate();


SELECT d.dept_name Department,
       CONCAT_ws(' ', e.first_name,e.last_name) Manager
FROM employees e
  JOIN dept_manager dm ON e.emp_no = dm.emp_no
  JOIN departments d ON dm.dept_no = d.dept_no
WHERE dm.to_date > curdate() and e.gender = 'F';


SELECT t.title,COUNT(*)
FROM titles t
  JOIN dept_emp de ON de.emp_no = t.emp_no
WHERE t.to_date > curdate()
      and de.dept_no = 'd009'
      and de.to_date>curdate()
GROUP BY t.title;


SELECT d.dept_name as Department, CONCAT_WS(' ', e.first_name, e.last_name) AS Manager, s.salary as Salary
FROM salaries s
  JOIN employees e ON e.emp_no = s.emp_no
  JOIN dept_manager dm ON e.emp_no = dm.emp_no
  JOIN dept_emp de ON e.emp_no = de.emp_no
  JOIN departments d on de.dept_no = d.dept_no
WHERE dm.to_date>curdate() and s.to_date>curdate()
ORDER BY s.salary;


SELECT d.dept_name department,
       CONCAT_WS(' ', e.first_name, e.last_name) AS 'Employee Name',
       CONCAT_WS(' ', mgmt.first_name, mgmt.last_name) AS Manager
FROM employees e
  JOIN dept_emp de ON e.emp_no = de.emp_no
  JOIN departments d ON de.dept_no = d.dept_no
  JOIN dept_manager dm ON d.dept_no = dm.dept_no
  JOIN employees mgmt ON de.emp_no = mgmt.emp_no
WHERE de.to_date>curdate() and dm.to_date>curdate()
ORDER BY department;
