USE employees;

SELECT 
    first_name, emp_no
FROM
    (SELECT 
        *
    FROM
        employees
    WHERE
        hire_date BETWEEN '1980-01-01' AND '1990-01-01' UNION SELECT 
        *
    FROM
        employees
    WHERE
        emp_no > 10080) AS a;

CREATE TABLE dup_emp (emp_n INT(11));

INSERT INTO dup_emp (emp_n)
SELECT emp_no
FROM employees WHERE first_name LIKE ('d%');

SELECT * FROM employees;

SELECT 
    first_name, gender
FROM
    (SELECT 
        *
    FROM
        employees
    WHERE
        birth_date > '1960-01-01') AS a;
        

        