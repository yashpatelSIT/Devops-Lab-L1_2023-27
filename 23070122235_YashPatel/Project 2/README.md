# Project 2: Deploy Angular Application in Docker Container

**Name:** Yash Patel  
**PRN:** 23070122235  
**Course:** DevOps Lab  

---

## Project Objective
The objective of this project is to deploy an Angular application using Docker. The application is built using the Angular CLI and containerized with Docker Compose for both development and production.

---

## Tools & Technologies
- Angular CLI 17
- Docker Desktop
- Docker Compose
- Node.js
- Nginx

---

## Project Workflow
1. Create Angular application.
2. Create `Dockerfile.dev` for development mode with live reloading on port 4200.
3. Create `Dockerfile.prod` with multi-stage build using Nginx on port 80.
4. Configure `docker-compose.yml` to manage both environments.
5. Build and verify both containers.

---

## How to Run

### Development Environment (Port 4200)
```bash
docker compose up frontend-dev
```
Open `http://localhost:4200` in the browser.

### Production Environment (Port 80 / 8080)
```bash
docker compose up -d frontend-prod
```
Open `http://localhost:8080` in the browser.

---

## Docker Commands Used
```bash
# Build development image
docker compose build frontend-dev

# Run development container
docker compose up frontend-dev

# Run production container in background
docker compose up -d --build frontend-prod

# Check running containers
docker ps

# Stop container
docker compose down
```

---

## Conclusion
The Angular application was successfully containerized using Docker. The development container allows live code updates, and the multi-stage production container uses Nginx to serve the application efficiently.
