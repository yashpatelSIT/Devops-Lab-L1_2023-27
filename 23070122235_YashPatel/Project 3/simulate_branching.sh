#!/usr/bin/env bash
DEMO="branch-demo-bash"
rm -rf "$DEMO"
mkdir -p "$DEMO"
cd "$DEMO"

git init
git config user.name "Yash Patel"
git config user.email "23070122235@sitpune.edu.in"

# 1. Main branch
git checkout -b main
echo "Initial production code" > app.txt
git add app.txt
git commit -m "Initial commit on main"

# 2. Develop branch
git checkout -b develop
echo "Integration code" >> app.txt
git commit -am "Setup develop branch"

# 3. Feature branch
git checkout -b feature/user-auth develop
echo "User authentication" > auth.txt
git add auth.txt
git commit -m "Added user auth feature"

# 4. Merge feature into develop
git checkout develop
git merge --no-ff feature/user-auth -m "Merge feature/user-auth into develop"

# 5. Release branch
git checkout -b release/v1.0.0 develop
echo "v1.0.0" > version.txt
git add version.txt
git commit -m "Prepare release v1.0.0"

# 6. Merge release into main and develop
git checkout main
git merge --no-ff release/v1.0.0 -m "Release v1.0.0"
git tag -a "v1.0.0" -m "Version 1.0.0"

git checkout develop
git merge --no-ff release/v1.0.0 -m "Merge release v1.0.0 to develop"

# 7. Hotfix branch
git checkout -b hotfix/v1.0.1 main
echo "Hotfix patch" >> app.txt
git commit -am "Fix urgent bug"

git checkout main
git merge --no-ff hotfix/v1.0.1 -m "Merge hotfix v1.0.1 to main"
git tag -a "v1.0.1" -m "Version 1.0.1"

git checkout develop
git merge --no-ff hotfix/v1.0.1 -m "Merge hotfix v1.0.1 to develop"

git log --graph --oneline --all --decorate
cd ..
rm -rf "$DEMO"
