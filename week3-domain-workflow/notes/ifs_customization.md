# IFS Customization Concepts

## What is Customization
- Customization refers to modifying the IFS Cloud system to meet specific business requirements.
- It involves changing source code, models, or business logic.
- Typically done using tools like **IFS Developer Studio**, SQL, PL/SQL, and Java.

## Important Note
- Customization is **highly invasive** and should be used only as a **last resort**.
- It can create issues during:
  - System upgrades
  - Applying patches
  - Maintenance

---

## Extending on the Inside (Customization)

- Also known as **LAA (Layered Application Architecture)**.
- Allows developers to:
  - Modify business logic
  - Override existing functionality
  - Add new behavior

- It provides **maximum control**, but also:
  - Increases complexity
  - Requires careful maintenance

---

## Customization Best Practices

### Key Principles

- Never modify **core system files**
  - Always use the **Cust layer (-Cust suffix)**

- Always perform customization in:
  - DEV environment → commit to repository → deploy via pipeline

- Avoid dependency on configurations
  - Example: do not rely on custom attributes created via configuration

- Never customize **framework/platform components**
  - This may break system functionality

- Follow naming conventions for:
  - Components
  - Entities
  - Pages
  - Attributes

---

## Important Guidelines

- Use customization only when **extension is not possible**
- Place tightly coupled changes in the **same module**
- For new features:
  - Use a **separate module**

- Use:
  - `@override` (preferred)
  - `@overtake` only as last resort

---

## Restriction on Customization (22R1+)

- IFS restricts customization for **framework components**
- Some components are marked as **final**
- If a component is final:
  - Customization is not allowed
  - Build will fail if modified

---

## Final Annotation

- Developers can restrict customization using:
  - `@Final` on entities or projections

- If marked as final:
  - No modifications allowed
  - No extensions allowed

---

## Why Avoid Customization
- Breaks upgrade compatibility
- Increases maintenance effort
- Causes dependency issues
- Can lead to build failures

---

## Summary

- Customization provides flexibility but should be avoided when possible.
- Preferred approach:
  - Use **extensions instead of customization**
- Always follow best practices to ensure system stability and upgrade safety.