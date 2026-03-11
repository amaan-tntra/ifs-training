-- 1. View all departments
SELECT * FROM tntra_departments;

-- 2. View all employees
SELECT * FROM tntra_employees;

-- 3. Display employee name and salary
SELECT emp_name, salary FROM tntra_employees;

-- 4. Employees working in IFS department
SELECT emp_name FROM tntra_employees WHERE dept_id = 2;

-- 5. Employees earning 12500
SELECT emp_name, salary FROM tntra_employees WHERE salary = 12500;

-- 6. Employees ordered by salary (highest first)
SELECT emp_name, salary FROM tntra_employees ORDER BY salary DESC;

-- 7. Total number of employees
SELECT COUNT(*) AS total_employees FROM tntra_employees;

-- 8. Average employee salary
SELECT AVG(salary) AS avg_salary FROM tntra_employees;

-- 9. Average salary per department
SELECT dept_id, AVG(salary) AS avg_salary FROM tntra_employees GROUP BY dept_id;

-- 10. Display employee name with department name
SELECT e.emp_name, d.dept_name FROM tntra_employees e JOIN tntra_departments d ON e.dept_id = d.dept_id;

-- 11. Employee details with department
SELECT e.emp_name, d.dept_name, e.salary FROM tntra_employees e JOIN tntra_departments d ON e.dept_id = d.dept_id ORDER BY d.dept_name;

-- 12. Employees with salary above average
SELECT emp_name, salary FROM tntra_employees WHERE salary >
(
    SELECT AVG(salary)
    FROM tntra_employees
);

-- 13. Employee with highest salary
SELECT emp_name, salary FROM tntra_employees
WHERE salary =
(
    SELECT MAX(salary)
    FROM tntra_employees
);

-- 14. Increase salary of an employee
UPDATE tntra_employees SET salary = salary + 2000 WHERE emp_name = 'Amaan Tai';

-- 15. Delete employee record
DELETE FROM tntra_employees WHERE emp_name = 'Devansh Joshi';