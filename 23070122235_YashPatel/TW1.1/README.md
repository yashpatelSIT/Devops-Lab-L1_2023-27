# Assignment TW1.1: Git Workflow & Collaboration

**Name:** Yash Patel  
**PRN:** 23070122235  
**Course:** DevOps Lab  

---

## Tasks Completed

- **Task 1.1:** Created a new Git repository for the Hello World Flask application, added the initial code, and committed to `main`.
- **Task 1.2:** Created a new branch named `feature/user-auth`, added a new print statement, committed the changes, and pushed the branch to GitHub.
- **Task 1.3:** Simulated a merge conflict by modifying the same line in `main`, attempted to merge `feature/user-auth`, resolved the conflict manually in `app.py`, and pushed the resolved `main` branch.

---

## Commands Used

```bash
# Task 1.1: Initialize git repo
mkdir FlaskApp
cd FlaskApp
git init
git add app.py
git commit -m "Initial commit with Hello World Flask app"
git remote add origin https://github.com/yashpatelSIT/FlaskApp.git
git push -u origin main

# Task 1.2: Feature branch
git checkout -b feature/user-auth
# Edit app.py to add print statement
git add app.py
git commit -m "Added user authentication feature"
git push -u origin feature/user-auth

# Task 1.3: Conflict simulation and resolution
git checkout main
# Edit app.py with conflicting line
git add app.py
git commit -m "Updated welcome message on main"
git merge feature/user-auth
# Conflict occurs in app.py -> open file and manually fix
git add app.py
git commit -m "Resolved merge conflict"
git push origin main
```

---

## Git Graph Output

```text
* 1d56973 (HEAD -> main, origin/main) Resolved merge conflict
|\  
| * ce94bea (origin/feature/user-auth, feature/user-auth) Added user authentication feature
* | c30ca1d Updated welcome message on main
* | eea5da1 Update app.py
* | 163d699 Added user authentication feature
|/  
* ad3fbd4 Initial commit with Hello World Flask app
```

*Screenshots and terminal outputs are attached in `23070122235_Project1.pdf`.*
