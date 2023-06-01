# Aggregate Functions
USE employees;

SELECT * FROM employees;

SELECT DISTINCT
    COUNT(first_name)
FROM
    employees
WHERE
    first_name LIKE ('Na%');

SELECT 
    COUNT(DISTINCT from_date)
FROM
    dept_emp;

SELECT 
    COUNT(*)
FROM
    employees;