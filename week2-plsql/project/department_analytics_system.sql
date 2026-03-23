-- Project: Department Analytics System
-- Description: PL/SQL project for analyzing employee and department data
--------------------------------------------------------------------------

-- Procedure to generate department report
CREATE OR REPLACE PROCEDURE generate_department_report
AS
BEGIN
    FOR dept_rec IN (
        SELECT dept_id, dept_name
        FROM tntra_departments
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE('Department: ' || dept_rec.dept_name);

        -- Call functions
        DBMS_OUTPUT.PUT_LINE('Total Employees: ' || get_employee_count(dept_rec.dept_id));
        DBMS_OUTPUT.PUT_LINE('Average Salary: ' || get_avg_salary(dept_rec.dept_id));
        DBMS_OUTPUT.PUT_LINE('Max Salary: ' || get_max_salary(dept_rec.dept_id));

        DBMS_OUTPUT.PUT_LINE('Employees:');

        -- Cursor loop inside procedure
        FOR emp_rec IN (
            SELECT emp_name, salary
            FROM tntra_employees
            WHERE dept_id = dept_rec.dept_id
        )
        LOOP
            DBMS_OUTPUT.PUT_LINE('  ' || emp_rec.emp_name || ' - ' || emp_rec.salary);
        END LOOP;

    END LOOP;
END;
/


-- Procedure to display high salary employees
CREATE OR REPLACE PROCEDURE high_salary_report (
    p_min_salary NUMBER
)
AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Employees with salary above ' || p_min_salary);

    FOR rec IN (
        SELECT emp_name, salary
        FROM tntra_employees
        WHERE salary > p_min_salary
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(rec.emp_name || ' - ' || rec.salary);
    END LOOP;
END;
/


-- Procedure to display department summary
CREATE OR REPLACE PROCEDURE department_summary
AS
BEGIN
    FOR rec IN (
        SELECT dept_id,
               COUNT(*) AS total_employees,
               AVG(salary) AS avg_salary,
               MAX(salary) AS max_salary
        FROM tntra_employees
        GROUP BY dept_id
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Dept ID: ' || rec.dept_id ||
            ' | Employees: ' || rec.total_employees ||
            ' | Avg Salary: ' || rec.avg_salary ||
            ' | Max Salary: ' || rec.max_salary
        );
    END LOOP;
END;
/

----------------------------------------------------------------

BEGIN
    generate_department_report;
END;
/

BEGIN
    high_salary_report(50000);
END;
/

BEGIN
    department_summary;
END;
/