# Inner Join
USE employees;

SELECT 
    *
FROM
    dept_emp;

select * from departments;

SELECT 
    e.emp_no,
    e.dept_no,
    e.from_date,
    e.to_date,
    d.dept_no,
    d.dept_name
FROM
    dept_emp e
        INNER JOIN
    departments d ON e.dept_no = d.dept_no;


SELECT 
    d.dept_no, e.emp_no, d.dept_name
FROM
    departments d
        INNER JOIN
    dept_emp e ON d.dept_no = e.dept_no;
 
SELECT 
    e.first_name, e.emp_no, d.dept_no
FROM
    employees e
        INNER JOIN
    dept_emp d ON e.emp_no = d.emp_no;


