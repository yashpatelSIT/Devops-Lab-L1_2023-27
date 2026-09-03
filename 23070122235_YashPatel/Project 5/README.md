# Project 5: Containerizing application and scanning its Docker image with DTR

**Name:** Yash Patel  
**PRN:** 23070122235  
**Course:** DevOps Lab  

---

## Project Objective
Deploy a Spring Boot application on Docker for a retail company with multiple web applications and scan its Docker image using Docker Trusted Registry (DTR) / image security scanning.

---

## Tools Used
- Spring Boot 3 / Java 17
- Docker & Docker Compose
- Maven
- DTR / Docker Scout / Trivy for vulnerability scanning

---

## Files in this Project
- `pom.xml`: Spring Boot dependencies (web, actuator).
- `src/main/java/com/retail/`: Retail application and REST controller (`/api/products`).
- `Dockerfile`: Multi-stage build with Alpine JRE and non-root user.
- `docker-compose.yml`: Runs the retail app and PostgreSQL container.
- `scan-image.ps1` / `scan-image.sh`: Script to scan Docker image.
- `vulnerability-scan-report.md`: Scan results report.

---

## How to Build and Run

### 1. Build the Docker Image
```bash
docker build -t yashpatelldocker/retail-app:1.0.0 .
```

### 2. Scan the Image for Vulnerabilities
```bash
powershell -ExecutionPolicy Bypass -File .\scan-image.ps1
# or
bash scan-image.sh
```

### 3. Run Application with Docker Compose
```bash
docker compose up -d
```

### 4. Verify API Output
```bash
curl http://localhost:8080/api/products
curl http://localhost:8080/actuator/health
```

---

## Vulnerability Scan Results
- Base Image: `eclipse-temurin:17-jre-alpine`
- Critical CVEs: 0
- High CVEs: 0
- Status: **PASSED** (Approved for deployment)

---

## Conclusion
The Spring Boot retail application was containerized using a secure multi-stage Dockerfile with non-root privileges. The Docker image was scanned for vulnerabilities, verified with zero critical issues, and deployed using Docker Compose.
