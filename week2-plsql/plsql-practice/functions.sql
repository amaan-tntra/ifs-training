-- 1. Function to get salary of an employee
CREATE OR REPLACE FUNCTION get_employee_salary (
    p_emp_id NUMBER
)
RETURN NUMBER
AS
    v_salary NUMBER;
BEGIN
    SELECT salary INTO v_salary
    FROM tntra_employees
    WHERE emp_id = p_emp_id;

    RETURN v_salary;
END;
/
    
SELECT get_employee_salary(101) FROM dual;


-- 2. Function to count employees in a department
CREATE OR REPLACE FUNCTION get_employee_count (
    p_dept_id NUMBER
)
RETURN NUMBER
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM tntra_employees
    WHERE dept_id = p_dept_id;

    RETURN v_count;
END;
/

SELECT get_employee_count(2) FROM dual;


-- 3. Function to calculate average salary per department
CREATE OR REPLACE FUNCTION get_avg_salary (
    p_dept_id NUMBER
)
RETURN NUMBER
AS
    v_avg_salary NUMBER;
BEGIN
    SELECT AVG(salary)
    INTO v_avg_salary
    FROM tntra_employees
    WHERE dept_id = p_dept_id;

    RETURN v_avg_salary;
END;
/

SELECT get_avg_salary(2) FROM dual;


-- 4. Function to get highest salary in a department
CREATE OR REPLACE FUNCTION get_max_salary (
    p_dept_id NUMBER
)
RETURN NUMBER
AS
    v_max_salary NUMBER;
BEGIN
    SELECT MAX(salary)
    INTO v_max_salary
    FROM tntra_employees
    WHERE dept_id = p_dept_id;

    RETURN v_max_salary;
END;
/

SELECT get_max_salary(2) FROM dual;