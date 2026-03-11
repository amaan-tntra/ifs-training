-- CREATE TABLES
CREATE TABLE tntra_departments (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50)
);

CREATE TABLE tntra_employees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    salary NUMBER,
    dept_id NUMBER,
    hire_date DATE
);

-- Insert departments
INSERT INTO tntra_departments VALUES (1, 'HR');
INSERT INTO tntra_departments VALUES (2, 'IFS');
INSERT INTO tntra_departments VALUES (3, 'Java');
INSERT INTO tntra_departments VALUES (4, 'Full Stack');
INSERT INTO tntra_departments VALUES (5, 'UI/UX');

-- Insert employees 
INSERT INTO tntra_employees VALUES (101, 'Milin Desai', 50000, 1, SYSDATE);
INSERT INTO tntra_employees VALUES (102, 'Shainy Vijay', 50000, 1, SYSDATE);
INSERT INTO tntra_employees VALUES (103, 'Nirmal Patel', 50000, 1, SYSDATE);

INSERT INTO tntra_employees VALUES (104, 'Amaan Tai', 12500, 2, SYSDATE);
INSERT INTO tntra_employees VALUES (105, 'Parth Shah', 12500, 2, SYSDATE);
INSERT INTO tntra_employees VALUES (106, 'Pranav Gaikwad', 12500, 2, SYSDATE);
INSERT INTO tntra_employees VALUES (107, 'Nazil Dhalwala', 12500, 2, SYSDATE);
INSERT INTO tntra_employees VALUES (108, 'Devansh Joshi', 12500, 2, SYSDATE);
INSERT INTO tntra_employees VALUES (109, 'Shrey Parmar', 12500, 2, SYSDATE);
INSERT INTO tntra_employees VALUES (110, 'Saumya Vyas', 12500, 2, SYSDATE);
INSERT INTO tntra_employees VALUES (111, 'Kartikey Mishra', 12500, 2, SYSDATE);
INSERT INTO tntra_employees VALUES (112, 'Het Patel', 12500, 2, SYSDATE);
INSERT INTO tntra_employees VALUES (113, 'Jay Parmar', 12500, 2, SYSDATE);
INSERT INTO tntra_employees VALUES (114, 'Tanmay Dasgupta', 12500, 2, SYSDATE);


INSERT INTO tntra_employees VALUES (115, 'Jeet Patel', 48000, 3, SYSDATE);
INSERT INTO tntra_employees VALUES (116, 'Pranav Vichare', 47000, 3, SYSDATE);
INSERT INTO tntra_employees VALUES (117, 'Vraj Patel', 46000, 3, SYSDATE);
INSERT INTO tntra_employees VALUES (118, 'Pranay Gupta', 50000, 3, SYSDATE);
INSERT INTO tntra_employees VALUES (119, 'Tejas Chauhan', 49000, 3, SYSDATE);
INSERT INTO tntra_employees VALUES (120, 'Ankit Agrawal', 51000, 3, SYSDATE);


INSERT INTO tntra_employees VALUES (121, 'Jayminkumar Trivedi', 48000, 5, SYSDATE);
INSERT INTO tntra_employees VALUES (122, 'Sagar Panpatil', 47000, 5, SYSDATE);


INSERT INTO tntra_employees VALUES (123, 'Amin Tai', 50000, 4, SYSDATE);
INSERT INTO tntra_employees VALUES (124, 'Harsh Rajput', 48000, 4, SYSDATE);
INSERT INTO tntra_employees VALUES (125, 'Jasmin Javia', 47000, 4, SYSDATE);
INSERT INTO tntra_employees VALUES (126, 'Kruti Makwana', 46000, 4, SYSDATE);
INSERT INTO tntra_employees VALUES (127, 'Mitesh Thakkar', 49000, 4, SYSDATE);
INSERT INTO tntra_employees VALUES (128, 'Jigar Shah', 50000, 4, SYSDATE);
INSERT INTO tntra_employees VALUES (129, 'Deepak Rathod', 51000, 4, SYSDATE);

