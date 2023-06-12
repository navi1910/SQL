CREATE DATABASE emp1;

USE emp1;

CREATE TABLE employees(
	emp_name VARCHAR(10),
    emp_ID INT,
    dept_ID VARCHAR(2));

INSERT INTO employees(emp_name, emp_ID, dept_ID)
VALUES ('John', 01, 'd1');

SELECT * FROM employees;

INSERT INTO employees(emp_name, emp_ID, dept_ID)
VALUES ('Mary', 02, 'd1'),
	('Paul', 03, 'd2'),
    ('Alan', 04, 'd3'),
    ('Peter', 05, 'd2');

INSERT INTO employees(emp_name, emp_ID, dept_ID)
VALUES ('Joe', 06, 'd4');

CREATE TABLE departments(
	dept_ID VARCHAR(2),
    dept_name VARCHAR(10));
    
INSERT INTO departments(dept_ID, dept_name)
VALUES ('d1', 'Sales'),
	('d2', 'Marketing'),
    ('d3', 'Accounts');

insert into departments(dept_ID, dept_name)
values ('d5', 'HR');

SELECT * FROM departments;

SELECT 
    e.emp_name, e.emp_ID, d.dept_name
FROM
    employees e
        INNER JOIN
    departments d ON e.dept_ID = d.dept_ID;

SELECT 
    e.emp_name, e.emp_ID, d.dept_name
FROM
    departments d
        LEFT JOIN
    employees e ON e.dept_ID = d.dept_ID;

SELECT 
    e.emp_name, e.emp_ID, d.dept_name
FROM
    departments d
        RIGHT JOIN
    employees e ON e.dept_ID = d.dept_ID;

SELECT
	e.emp_name, e.emp_ID, d.dept_name
FROM
    departments d
        left JOIN
    employees e ON e.dept_ID = d.dept_ID
WHERE e.dept_ID IS NULL;

