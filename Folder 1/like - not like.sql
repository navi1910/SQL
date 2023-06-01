# like and not like
# To find patterns
USE employees;

SELECT 
    *
FROM
    employees
WHERE
    last_name LIKE ('Mar%');

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar_');

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%Mar%');

