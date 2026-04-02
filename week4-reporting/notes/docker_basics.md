# Docker Fundamentals

## What is Docker

- Docker is a platform used to **build, run, and manage applications in containers**
- It allows applications to run consistently across different environments

---

## What is a Container

- A container is a lightweight environment that includes:
  - Application code
  - Dependencies
  - Libraries

- It runs independently from the host system

---

## Containers vs Virtual Machines

| Feature | Containers | Virtual Machines |
|--------|-----------|-----------------|
| Size | Lightweight | Heavy |
| Startup Time | Fast | Slow |
| Resource Usage | Low | High |
| OS Requirement | Share host OS | Separate OS |

---

## Key Docker Concepts

### Image
- Blueprint of a container
- Contains application and dependencies

### Container
- Running instance of an image

### Dockerfile
- File used to create Docker images

### Docker Hub
- Repository to store and share Docker images

---

## Basic Docker Commands

### Check Docker Version
``` docker --version ```

### Pull Image
``` docker pull nginx```

### Run Container 
``` docker run -d -p 8080:80 nginx```

### List Running Containers 
``` docker ps```

### Stop Container 
``` docker stop <container_id>```

### Remove Container 
``` docker rm <container_id>```

--- 

## Why Docker is used 
- Ensures consistent environment
- Simplifies deployment
- Reduces dependency issues
- Supports microservices architecture

--- 

## Docker in DevOps
- Used in CI/CD pipelines
- Helps automate deployment
- Enables fast testing and scaling

--- 

## Summary
- Docker uses containers to run applications efficiently 
- Containers are faster and lighter than virtual machines
- Widely used in modern DevOps workflows