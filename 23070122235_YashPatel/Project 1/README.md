# Project 1: Dockerizing Jenkins Pipeline

**Name:** Yash Patel  
**PRN:** 23070122235  
**Course:** DevOps Lab  

---

## Project Objective
Demonstrate continuous integration and delivery by Dockerizing a Jenkins pipeline. The pipeline automatically pulls code from Git, runs unit tests, builds a Docker image for the Flask application, and runs the container.

---

## Tools Used
- Jenkins
- Docker Desktop
- Python 3.11 / Flask
- Git & GitHub

---

## Files in this Project
- `app.py`: Flask application with `/` and `/health` routes.
- `test_app.py`: Unit tests checking response status codes.
- `requirements.txt`: Python dependencies.
- `Dockerfile`: Minimal Dockerfile to package the application.
- `Jenkinsfile`: Declarative pipeline with Checkout, Run Tests, Build Docker Image, and Deploy stages.

---

## Pipeline Workflow
1. **Checkout:** Jenkins pulls code from GitHub.
2. **Run Tests:** Runs `python test_app.py` to make sure all tests pass.
3. **Build Docker Image:** Builds the image with `docker build -t yashpatelldocker/flaskapp:${BUILD_NUMBER} .`.
4. **Deploy:** Stops any existing container and starts the new container on port 5000.

---

## How to Run Manually

```bash
# 1. Run tests
python test_app.py

# 2. Build Docker image
docker build -t flaskapp:latest .

# 3. Run container
docker run -d -p 5000:5000 --name flask-app flaskapp:latest

# 4. Verify in browser
curl http://localhost:5000/
```

---

## Output
- Unit tests executed and passed.
- Docker image built and tagged successfully.
- Container deployed and verified running on port 5000.
