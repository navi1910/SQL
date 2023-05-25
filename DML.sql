CREATE DATABASE school_info;

USE school_info;

CREATE TABLE student(
	student_id INT,
    student_name VARCHAR(20),
    subjects VARCHAR(20)
);

INSERT INTO student(student_id, student_name, subjects)
VALUES (1, 'John', 'Math');

INSERT INTO student(student_id, student_name, subjects)
VALUES (1, 'Naveen', 'English');

INSERT INTO student(student_id, student_name, subjects)
VALUES (1, 'Manoj', 'Science');

SELECT * FROM student;

SELECT student_name from student;

UPDATE student
SET student_name = 'Mary'
WHERE student_id = 1;

DELETE FROM student;

DELETE FROM students
where student_id = 1;

DROP TABLE student;
DROP DATABASE school_info;