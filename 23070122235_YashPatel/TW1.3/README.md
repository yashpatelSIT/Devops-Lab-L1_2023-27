# Assignment TW1.3: Basic Containerization (Docker) & Jenkins Freestyle Project

**Name:** Yash Patel  
**PRN:** 23070122235  
**Course:** DevOps Lab  

---

## Tasks Completed

- **Task 3.1:** Created a Dockerfile for the Python Flask application to build a minimal image that runs on port 5000. Built the image and verified it runs on `http://127.0.0.1:5000`.
- **Task 3.2:** Created a Jenkins Freestyle project named `FlaskApp`, pulled the Git repository, and ran a build step executing `dir` in the workspace. Verified the successful build.
- **TW2 Extensions:** Added docker-compose.yml for Flask + PostgreSQL, Kubernetes Deployment & Service YAMLs, and Terraform main.tf.

---

## Commands Used

```bash
# Build Docker image
docker build -t flaskapp .

# Run Docker container
docker run -p 5000:5000 flaskapp

# Verify in browser
curl http://127.0.0.1:5000
```

### Jenkins Setup
1. Created new Freestyle item `FlaskApp`.
2. SCM: Git -> `https://github.com/yashpatelSIT/FlaskApp.git`, branch `*/main`.
3. Build Step: Windows batch command `dir`.
4. Triggered build and verified console output: SUCCESS.

*Screenshots of Docker build, container run, and Jenkins build output are attached in `23070122235_Project3.pdf`.*
