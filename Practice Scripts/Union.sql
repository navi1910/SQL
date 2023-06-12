USE employees;

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    e.hire_date,
    NULL AS dept_no,
    NULL AS dept_name
FROM
    employees e 
UNION SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    NULL AS hire_date,
    d.dept_no,
    d.dept_name
FROM
    departments d;
    
    
SELECT 
    s.emp_no, s.salary, s.from_date, NULL AS birth_date
FROM
    salaries s 
UNION SELECT 
    NULL AS emp_no,
    NULL AS salary,
    NULL AS from_date,
    e.birth_date
FROM
    employees e;
    

    

