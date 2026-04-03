# Data Extraction Concepts (IFS Context)

## What is Data Extraction

- Data extraction is the process of retrieving data from the database for analysis or reporting.
- In IFS, data extraction is mainly done using:
  - SQL queries
  - Quick Reports
  - Projections (APIs)

---

## Sources of Data

Data in IFS can be extracted from:

- Database tables  
- Database views  
- Business entities  

Example:
- `IFSAPP.customer_info`
- `tntra_employees`
- `tntra_departments`

---

## Methods of Data Extraction

### 1. SQL Queries (Most Common)

- Directly fetch data from database

Example: <br>
`
SELECT emp_name, salary FROM tntra_employees; 
`

### 2. Quick Reports
- Use SQL queries to generate reports
- Provide a UI-based way to extract data

### 3. Projections (APIs)
- Data can be accessed via REST APIs
- Used for:
    - UI (Aurena)
    - External integrations

--- 

### Data Filtering
Used to extract specific data 

Example:<br>
`SELECT * FROM tntra_employees WHERE salary > 50000;`

--- 

### Data Aggregation
Used to summarize data

Example:<br>
`SELECT dept_id, COUNT(*) FROM tntra_employees GROUP BY dept_id;`

--- 

### Joins in Data Extraction
Used to combine data from multiple tables

Example:<br>
`SELECT e.emp_name, d.dept_name`<br>
`FROM tntra_employees e`<br>
`JOIN tntra_departments d`<br>
`ON e.dept_id = d.dept_id;` <br>

--- 

### Data Transformation
Modifying data during extraction

Examples:
- Calculated fields
- Formatting output
- Derived values

--- 

## Performance Considerations
- Avoid selecting unnecessary columns
- Use filters to reduce data size
- Use indexed columns when possible

--- 

## Use Cases in ERP
- Employee reports
- Department analytics
- Financial summaries
- Inventory tracking

--- 

## Summary
- Data extraction is essential for reporting and analytics
- SQL is the primary tool for extracting data
- Quick Reports provide a user-friendly way to extract data in IFS
- Efficient queries improve performance and scalability