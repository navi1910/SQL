-- Union and Union all

USE employees;
 
SElECT * FROM employees
WHERE first_name LIKE ('a%')
UNION
SELECT * FROM employees
WHERE first_name LIKE ('z%')
ORDER BY birth_date;

USE emp1;

SELECT * FROM employees;

SELECT e.emp_name, e.emp_ID, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_ID = d.dept_ID
UNION
SELECT e.emp_name, e.emp_ID, d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_ID = d.dept_ID;

SELECT e.emp_name, e.emp_ID, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_ID = d.dept_ID
UNION ALL
SELECT e.emp_name, e.emp_ID, d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_ID = d.dept_ID;
