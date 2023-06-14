USE employees;

DROP PROCEDURE IF EXISTS show_employees;

DELIMITER $$
CREATE PROCEDURE show_employees()
BEGIN
	SELECT * FROM employees;
END $$

CALL show_employees;
$$
DROP PROCEDURE IF EXISTS show_salary;
$$
DELIMITER $$
CREATE PROCEDURE show_salary(IN p_emp_no INT)
BEGIN
	SELECT 
    e.first_name, e.last_name, s.salary, s.from_date, s.to_date
	FROM
		employees e
			INNER JOIN
		salaries s ON e.emp_no = s.emp_no
        WHERE e.emp_no = p_emp_no;
END $$

CALL show_salary(10001);

$$

DROP PROCEDURE IF EXISTS avg_sal;
$$
DELIMITER $$
CREATE PROCEDURE avg_sal(IN p_emp_no INT, OUT p_avg_sal DECIMAL(10,2))
BEGIN
	SELECT AVG(s.salary)
	INTO p_avg_sal
	FROM employees e
	JOIN salaries s
	ON e.emp_no = s.emp_no
	WHERE e.emp_no = p_emp_no;
END $$

SET @v_avg_sal = 0;

CALL avg_sal(10001, @v_avg_sal);

SELECT @v_avg_sal;