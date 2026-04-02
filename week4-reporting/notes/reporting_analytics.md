# IFS Reporting & Analytics

## Introduction

- Reporting in IFS Cloud is mainly done using **Quick Reports**.
- Quick Reports provide a **fast and flexible way to create reports using SQL queries**.
- They are used to extract and display data for business analysis.

---

## What is a Quick Report

- A Quick Report is a **lightweight reporting tool** in IFS.
- It allows users to:
  - Write SQL queries
  - Generate reports directly from database data

- It is mainly used for:
  - Data extraction
  - Business reporting
  - Quick analysis

---

## Quick Report Types

Quick Reports can be created using different types:

- SQL Statement (most common)
- Crystal Reports
- MS Reports
- Dashboard
- Web Reports

For development and training:
- **SQL-based Quick Reports are most important**

---

## Key Fields in Quick Report

When creating a Quick Report:

- **Report Title** → Unique name  
- **Type** → SQL / Crystal / etc  
- **Category** → Grouping of reports  
- **Domain** → Logical grouping  
- **Query** → SQL query used for report  

---

## SQL Query in Quick Reports

- Reports are driven by SQL queries
- Queries must include:
  - Proper table references
  - Schema owner prefix

Example:

``` SELECT * FROM IFSAPP.customer_info;```

### Important Rules
- Always prefix database objects with schema:
```IFSAPP.table_name```
- Avoid single-line comments (--) at end of query
- Use block comments if needed

### Report Categories & Domains
Reports can be organized using: 
- Categories
- Domains

### Purpose:
- Easy navigation
- Better management of reports

--- 

### Security in Quick Reports
- Each Quick Report creates a projection
- Users need permission to access it

### Key Point:
Access is controlled via:
- Permission Sets
- Projection Grants

--- 

### Execution of Reports
- Reports can be executed using:
  - "View Report" option
- Output is generated based on SQL query

--- 

### Data Caching (Performance)
- Column data types are cached when report is saved
- Improves performance during execution
- If schema changes:
  - Use Refresh Quick Report

--- 

### Integration with SQL

- Quick Reports are directly linked with:

  - SQL queries
  - Database views
  - Business data

--- 

### Data Extraction in IFS
- Data is extracted using:
  - SQL queries
  - Views
  - Entities
- Example use cases:
  - Employee reports
  - Department analysis
  - Business insights

--- 

### Summary
- Quick Reports are the main reporting mechanism in IFS
- SQL plays a key role in report generation
- Reports are secured using projections and permissions
- Used for fast and flexible data analysis