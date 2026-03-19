-- 1. Cursor to display all employees
DECLARE
    CURSOR emp_cursor IS
        SELECT emp_name, salary FROM tntra_employees;

    v_name tntra_employees.emp_name%TYPE;
    v_salary tntra_employees.salary%TYPE;

BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO v_name, v_salary;
        EXIT WHEN emp_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(v_name || ' - ' || v_salary);
    END LOOP;

    CLOSE emp_cursor;
END;
/


-- 2. Cursor to display employees of a specific department
DECLARE
    CURSOR emp_dept_cursor (p_dept_id NUMBER) IS
        SELECT emp_name, salary
        FROM tntra_employees
        WHERE dept_id = p_dept_id;

    v_name tntra_employees.emp_name%TYPE;
    v_salary tntra_employees.salary%TYPE;

BEGIN
    OPEN emp_dept_cursor(2); 

    LOOP
        FETCH emp_dept_cursor INTO v_name, v_salary;
        EXIT WHEN emp_dept_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(v_name || ' - ' || v_salary);
    END LOOP;

    CLOSE emp_dept_cursor;
END;
/


-- 3. Cursor FOR LOOP to display employee details
BEGIN
    FOR rec IN (
        SELECT emp_name, salary
        FROM tntra_employees
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(rec.emp_name || ' - ' || rec.salary);
    END LOOP;
END;
/


-- 4. Display employees grouped by department
BEGIN
    FOR dept_rec IN (
        SELECT dept_id, dept_name
        FROM tntra_departments
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE('Department: ' || dept_rec.dept_name);

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


-- 5. Display employees with salary greater than 50000
BEGIN
    FOR rec IN (
        SELECT emp_name, salary
        FROM tntra_employees
        WHERE salary > 50000
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(rec.emp_name || ' - ' || rec.salary);
    END LOOP;
END;
/