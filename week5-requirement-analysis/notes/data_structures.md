# Data Structures Concepts

## What are Data Structures in Database Context

- Data structures define how data is organized and stored in a system.
- In ERP systems, data is typically structured in relational database tables.

---

## Tables

- A table stores data in rows and columns.
- Each table usually represents a business entity.

Examples:
- Employees
- Departments
- Customers
- Orders

---

## Rows and Columns

### Row
- Represents a single record

### Column
- Represents an attribute of the record

Example:

Employee Table

| emp_id | emp_name | salary |
|-------------|-------------|-------------|
| 101 | Amaan Tai | 12500 |

---

## Primary Key

A unique identifier for each row in a table
Ensures uniqueness of records

Example:

```emp_id PRIMARY KEY```

--- 

### Foreign Key

A column that references a primary key in another table
Used to establish relationships between tables

Example:

```dept_id REFERENCES departments(dept_id)```

---

## Relationships

### One-to-Many

- One department can have many employees

### Many-to-Many

- One employee can work on multiple projects
- One project can have multiple employees

### One-to-One
- One user has one profile

--- 

## Normalization
- Process of organizing data to reduce redundancy
- Helps maintain data consistency

### Goals:
- Avoid duplicate data
- Improve integrity
- Simplify maintenance

---

## Referential Integrity
- Ensures relationships between tables remain valid
- Prevents invalid references

Example:

- Employee cannot reference non-existent department

--- 

## Hierarchical Data
- Data organized in parent-child structure

Examples:

- Manager → Employee
- Parent Category → Subcategory

--- 

## Importance in Data Migration

Understanding data structures helps in:

- Mapping source to target tables
- Preserving relationships
- Migrating data in correct sequence
- Avoiding foreign key issues

---

## Summary
- Data structures define how business data is organized
- Tables and relationships are core to ERP systems
- Understanding structure is essential for migration and integration

