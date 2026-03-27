# CI/CD Basics

## What is CI/CD

- CI/CD stands for **Continuous Integration** and **Continuous Deployment/Delivery**
- It is a DevOps practice used to **automate software development and deployment**

---

## Continuous Integration (CI)

- Developers frequently push code to a shared repository
- Each change triggers:
  - Build process
  - Automated testing

### Benefits:
- Detects errors early
- Improves code quality
- Ensures smooth integration of code changes

---

## Continuous Deployment / Delivery (CD)

- After successful build and testing:
  - Code is automatically deployed to environments

### Types:

#### Continuous Delivery
- Code is ready for deployment
- Manual approval required to release

#### Continuous Deployment
- Code is automatically deployed without manual intervention

---

## CI/CD Pipeline

- A pipeline is a sequence of automated steps:

```text
Code → Build → Test → Deploy → Monitor
```

### Stages:
Build → Compile or prepare application <br>
Test → Run automated tests <br>
Deploy → Release application to environment  <br>
Monitor → Track performance and issues <br>

--- 

## Build Pipeline Concept
A build pipeline automates:
- Code compilation
- Dependency installation
- Packaging

Ensures that code is always in a deployable state

--- 

## CI/CD in Practice


### Typical workflow:

- Developer writes code
- Pushes code to repository (GitHub / GitLab)
- Pipeline is triggered automatically
- Build and tests are executed
- Application is deployed

--- 

### Tools (Examples)
- GitHub Actions
- GitLab CI/CD
- Jenkins
- Azure DevOps

---

### Benefits of CI/CD
- Faster delivery of software
- Reduced manual work
- Improved collaboration
- Reliable deployments
- Early bug detection

--- 

## Summary
- CI/CD automates the development lifecycle
- CI focuses on integrating and testing code
- CD focuses on deploying code
- Pipelines ensure efficient and reliable software delivery