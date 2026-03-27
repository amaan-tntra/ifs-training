# IFS APIs & Integrations

## Introduction

- APIs (Application Programming Interfaces) allow different systems to communicate with IFS Cloud.
- In IFS, APIs are implemented as **REST APIs** using the **OData protocol**.
- APIs are used to:
  - Retrieve data
  - Insert or update records
  - Integrate external systems with IFS

---

## OData in IFS

- IFS uses **OData (Open Data Protocol)** for REST APIs.
- Supports standard HTTP methods:
  - GET → Retrieve data
  - POST → Create data
  - PUT/PATCH → Update data
  - DELETE → Remove data

- Data is exposed as:
  - **Entities** (tables/objects)
  - Each entity contains properties (fields)

- Relationships between entities are defined using an **Entity Data Model**

---

## IFS OData Provider

- Exposes:
  - Business entities
  - Business logic

- Available through:
  - **OData endpoints**
  - Also known as **IFS REST APIs**

---

## API Explorer

- API Explorer is used to:
  - Discover available APIs
  - View API structure
  - Understand endpoints and parameters

- Provides:
  - OpenAPI specifications (JSON)
  - OData specifications
  - API documentation
  - Authentication details

- Helps developers:
  - Explore APIs easily
  - Integrate systems without building from scratch

---

## API Documentation

- IFS provides API documentation using **OpenAPI Specification (OAS)**

- Endpoint example: https://<server>/int/ifsapplications/projection/v1/<name>.svc/$openapi


- Supports:
  - OAS 3.0 (default)
  - OAS 2.0 (optional)

- Can be used with tools like:
  - Postman
  - Swagger

---

## Integration in IFS

IFS supports integration with external systems using:

- REST APIs (via projections)
- PL/SQL methods
- IFS Connect (message-based integration)

---

## Inbound Integration (External → IFS)

### Flow:

1. External system sends data (file/message/API)
2. Data is received by **IFS Connect**
3. Message is processed by:
   - Message Router
   - Routing rules
4. Routed to:
   - REST API (Projection)
   - OR PL/SQL method
5. Data is processed and stored in IFS

### Key Components:
- File Reader (for file-based integration)
- Message Router
- Routing Address
- Transformers (request/response)

---

## Outbound Integration (IFS → External)

- IFS sends data to external systems using:
  - `PLSQL_REST_SENDER_API`

### Flow:

1. PL/SQL generates message
2. Message routed via IFS Connect
3. Sent to external system
4. Response handled (optional)

### Types:
- Synchronous → Immediate response
- Asynchronous → Delayed processing

---

## Message Transformation

- Data can be transformed before sending/receiving:
  - JSON
  - XML

- Transformation can be done using:
  - PL/SQL
  - XSL transformers (IFS Connect)

---

## Key Concepts

- **Endpoint** → API URL  
- **Projection** → API layer exposing data  
- **Entity** → Data structure  
- **Request** → Input to API  
- **Response** → Output from API  
- **Authentication** → Secures API access  

---

## Summary

- IFS uses REST APIs with OData for integration.
- API Explorer helps discover and understand APIs.
- Integration can be:
  - Inbound (External → IFS)
  - Outbound (IFS → External)
- IFS Connect manages message-based integrations.