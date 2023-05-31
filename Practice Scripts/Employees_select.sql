USE employees;

SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM employees;

USE school_info;

SELECT * FROM student;

ALTER TABLE student
CHANGE COLUMN student_id student_id INT DEFAULT 0;

INSERT INTO student(student_name, subjects)
VALUES ('Max', 'Science');

SELECT * FROM student;

ALTER TABLE student
CHANGE COLUMN student_id student_id INT NULL;

INSERT INTO student(student_name, subjects)
VALUES ('Jeni', 'Math');

DELETE FROM student
WHERE student_name = 'Jeni';

CREATE TABLE companies (
  company_id VARCHAR(255),
  company_name VARCHAR(255),
  headquarters VARCHAR(255) DEFAULT 'X'
);

SELECT * FROM companies;