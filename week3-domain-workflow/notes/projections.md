# IFS Projection Concepts

## What is a Projection

- A **Projection** in IFS is a layer that exposes business data and logic as APIs.
- It is mainly used to:
  - Provide data to the UI (Aurena)
  - Expose APIs for external integrations

- Projections are built on top of:
  - **Entities** (data structures)
  - **Business logic**

---

## Purpose of Projections

- Act as a bridge between:
  - Backend (database + business logic)
  - Frontend (Aurena UI / external systems)

- Enable:
  - Data access
  - API exposure
  - Controlled interaction with business data

---

## Key Components of Projection

### 1. Entity Sets
- Represent collections of data (similar to tables)
- Example:
  - Employees
  - Departments

- Used to:
  - Retrieve multiple records
  - Perform operations like filtering and sorting

---

### 2. Selectors
- Used to define how data is selected from entities
- Control:
  - Which data is fetched
  - How it is filtered

- Improve performance by limiting unnecessary data retrieval

---

### 3. Actions
- Define operations that can be performed
- Can trigger:
  - Business logic
  - PL/SQL methods

Example:
- Approve request
- Update status

---

### 4. Functions
- Used to return calculated or derived data
- Similar to PL/SQL functions but exposed via projection

---

## Projection and APIs

- Projections are exposed as:
  - **OData-based REST APIs**

- Each projection provides:
  - Endpoints for data access
  - CRUD operations (Create, Read, Update, Delete)

- Used in:
  - API Explorer
  - External integrations

---

## Projection and Aurena UI

- Aurena pages use projections to:
  - Fetch data
  - Display records
  - Perform actions

- Projection acts as the **data source for UI pages**

---

## Data Flow Using Projection

1. User or external system sends request
2. Request hits projection API
3. Projection calls business logic / entity
4. Data is retrieved or updated
5. Response is returned

---

## Important Notes

- Projections should not expose unnecessary data
- Always design projections for:
  - Performance
  - Security
  - Reusability

- Projections are central to:
  - API design
  - Integration
  - UI development

---

## Summary

- Projection is a key concept in IFS used to expose data and logic.
- It connects backend systems with UI and external applications.
- It works closely with:
  - Entities
  - APIs
  - Aurena UI