SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN 66000 AND 70000;
    
SELECT 
    *
FROM
    departments
WHERE
    dept_no BETWEEN 'd003' AND 'd006';
    
SELECT 
    *
FROM
    employees
ORDER BY first_name DESC;

SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;

SELECT 
    first_name AS Name, COUNT(first_name) AS counts
FROM
    employees
WHERE hire_date > '1999-01-01'
GROUP BY first_name;

SELECT 
    first_name, COUNT(first_name)
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 100
ORDER BY first_name ASC;