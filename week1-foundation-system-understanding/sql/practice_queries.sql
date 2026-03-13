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

-- 16. Employees whose name starts with A
SELECT emp_name FROM tntra_employees WHERE emp_name LIKE 'A%';

-- 17. Find names containing Patel
SELECT emp_name FROM tntra_employees WHERE emp_name LIKE '%Patel%';

-- 18. Employees whose salary is between 45000 and 50000
SELECT emp_name, salary FROM tntra_employees WHERE salary BETWEEN 45000 AND 50000;

-- 19. employees who belong to IFS or Java departments
SELECT emp_name, dept_id FROM tntra_employees WHERE dept_id IN (2,3);

-- 20. departments with average salary greater than 40000
SELECT dept_id, AVG(salary) AS avg_salary FROM tntra_employees GROUP BY dept_id HAVING AVG(salary) > 40000;

-- 21. Get top 10 employees by salary
SELECT emp_name, salary FROM tntra_employees ORDER BY salary DESC FETCH FIRST 10 ROWS ONLY;

-- 22. Inner Join
SELECT 
    e.emp_id,
    e.emp_name,
    d.dept_name,
    e.salary
FROM tntra_employees e
INNER JOIN tntra_departments d
ON e.dept_id = d.dept_id;

-- 23. Employees with Department HR
SELECT e.emp_name
FROM tntra_employees e
JOIN tntra_departments d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'HR';

-- 24. Count Employees Per Department
SELECT d.dept_name, COUNT(e.emp_id) AS total_employees
FROM tntra_departments d
LEFT JOIN tntra_employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- 25. Highest Salary Per Department
SELECT dept_id, MAX(salary) AS highest_salary
FROM tntra_employees 
GROUP BY dept_id;

-- 26. Employees hired in the last 30 days
SELECT emp_name, hire_date
FROM tntra_employees
WHERE hire_date >= SYSDATE - 30;

-- 27. Departments having more than 5 employees
SELECT dept_id, COUNT(*) AS total_employees
FROM tntra_employees
GROUP BY dept_id
HAVING COUNT(*) > 5;

-- 28. Employees Whose Salary Is Above Their Department Average
SELECT emp_name, salary, dept_id
FROM tntra_employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM tntra_employees
    WHERE dept_id = e.dept_id
);

-- 29. Department With the Most Employees
SELECT dept_id, COUNT(emp_id) AS total_employees
FROM tntra_employees
GROUP BY dept_id
ORDER BY total_employees DESC
FETCH FIRST 1 ROW ONLY;

-- 30. Employees Working in Technical Departments Only
SELECT emp_name, dept_id
FROM tntra_employees
WHERE dept_id IN (2,3,4);
