-- 1. Trigger to prevent negative salary
CREATE OR REPLACE TRIGGER trg_check_salary
BEFORE INSERT OR UPDATE ON tntra_employees
FOR EACH ROW
BEGIN
    IF :NEW.salary < 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Salary cannot be negative');
    END IF;
END;
/
INSERT INTO tntra_employees VALUES (200, 'Test User', -1000, 1, SYSDATE);

-- 2. Trigger to automatically set hire date
CREATE OR REPLACE TRIGGER trg_set_hire_date
BEFORE INSERT ON tntra_employees
FOR EACH ROW
BEGIN
    IF :NEW.hire_date IS NULL THEN
        :NEW.hire_date := SYSDATE;
    END IF;
END;
/

INSERT INTO tntra_employees (emp_id, emp_name, salary, dept_id) VALUES (201, 'Auto Date User', 40000, 1);

SELECT emp_id, emp_name, hire_date FROM tntra_employees WHERE emp_id = 201;

-- Table for logging salary changes
CREATE TABLE salary_log (
    log_id NUMBER GENERATED ALWAYS AS IDENTITY,
    emp_id NUMBER,
    old_salary NUMBER,
    new_salary NUMBER,
    change_date DATE
);

-- 3. Trigger to log salary changes
CREATE OR REPLACE TRIGGER trg_salary_update_log
AFTER UPDATE OF salary ON tntra_employees
FOR EACH ROW
BEGIN
    INSERT INTO salary_log (emp_id, old_salary, new_salary, change_date)
    VALUES (:OLD.emp_id, :OLD.salary, :NEW.salary, SYSDATE);
END;
/

UPDATE tntra_employees SET salary = salary + 1000 WHERE emp_id = 102;

SELECT * FROM salary_log WHERE emp_id = 102;


-- 4. Trigger to ensure valid department assignment
CREATE OR REPLACE TRIGGER trg_validate_department
BEFORE INSERT OR UPDATE ON tntra_employees
FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM tntra_departments
    WHERE dept_id = :NEW.dept_id;

    IF v_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Invalid department ID');
    END IF;
END;
/

INSERT INTO tntra_employees VALUES (202, 'Invalid Dept User', 30000, 999, SYSDATE);
