-- 1. Procedure to increase employee salary
CREATE OR REPLACE PROCEDURE increase_salary (
    p_emp_id NUMBER,
    p_amount NUMBER
)
AS
BEGIN
    UPDATE tntra_employees
    SET salary = salary + p_amount
    WHERE emp_id = p_emp_id;

    DBMS_OUTPUT.PUT_LINE('Salary updated successfully for employee ID: ' || p_emp_id);
END;
/

BEGIN 
    increase_salary(102, 4000);
END;
/


-- 2. Procedure to display employee count per department
CREATE OR REPLACE PROCEDURE get_employee_count_by_dept
AS
BEGIN
    FOR rec IN (
        SELECT dept_id, COUNT(*) AS total_employees
        FROM tntra_employees
        GROUP BY dept_id
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Dept ID: ' || rec.dept_id || ' | Employees: ' || rec.total_employees
        );
    END LOOP;
END;
/
    
BEGIN
    GET_EMPLOYEE_COUNT_BY_DEPT();   
END;
/


-- 3. Procedure to display average salary per department
CREATE OR REPLACE PROCEDURE get_avg_salary_by_dept
AS
BEGIN
    FOR rec IN (
        SELECT dept_id, AVG(salary) AS avg_salary
        FROM tntra_employees
        GROUP BY dept_id
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Dept ID: ' || rec.dept_id || 
            ' | Avg Salary: ' || rec.avg_salary
        );
    END LOOP;
END;
/

BEGIN
    get_avg_salary_by_dept();   
END;
/


-- 4. Procedure to transfer employee between departments
CREATE OR REPLACE PROCEDURE transfer_employee (
    p_emp_id NUMBER,
    p_new_dept_id NUMBER
)
AS
BEGIN
    UPDATE tntra_employees
    SET dept_id = p_new_dept_id
    WHERE emp_id = p_emp_id;

    DBMS_OUTPUT.PUT_LINE('Employee transferred successfully');
END;
/

BEGIN
    TRANSFER_EMPLOYEE(104, 3);   
END;
/



