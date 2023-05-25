CREATE DATABASE school_info;

use school_info;

create table student(
	student_id INT,
    student_name VARCHAR(20),
    subjects VARCHAR(20));
    
INSERT INTO student(student_id, student_name, subjects)
VALUES (1, 'John', 'Math');

INSERT INTO student(student_id, student_name, subjects)
VALUES (2, 'Peter', 'English');

INSERT INTO student(student_id, student_name, subjects)
VALUES (3, 'Susan', 'Science');

SELECT 
    *
FROM
    student;
    
SELECT student_name FROM student;

SELECT 
    subjects
FROM
    student
WHERE student_name = 'John';

SELECT 
    *
FROM
    school_info.student
WHERE
    student_id = 1;
    
UPDATE student 
SET 
    student_name = 'Mary'
WHERE
    student_id = 1;

COMMIT;

ROLLBACK;

DELETE FROM student;

DROP DATABASE school_info;

CREATE USER 'Naveen'@'Localhost' IDENTIFIED BY 'pass';

GRANT SELECT ON school_info.student TO 'Naveen'@'Localhost';

REVOKE SELECT ON school_info.student FROM 'Naveen'@'Localhost';






