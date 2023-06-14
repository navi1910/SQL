USE employees;

DROP fUNCTION IF EXISTS avg_salary;

DELIMITER $$
CREATE fUNCTION avg_salary(f_emp_no INT) RETURNS DECIMAL (10,2)
NO SQL
BEGIN 
DECLARE v_avg_salary DECIMAL (10,2);
	SELECT AVG(s.salary)
    INTO v_avg_salary
    FROM employees e JOIN salaries s
    ON e.emp_no = s.emp_no;
RETURN v_avg_salary;
END $$

SELECT avg_salary(10001);