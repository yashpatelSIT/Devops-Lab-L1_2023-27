# Project 3: Branching Development Model

**Name:** Yash Patel  
**PRN:** 23070122235  
**Course:** DevOps Lab  

---

## Project Objective
Build and document a Git branching model (GitFlow) to help the team understand the Git workflow for faster work integration and collaboration.

---

## Branches Used
- `main`: Production branch. Only stable, tested code lives here, tagged with version numbers (e.g. `v1.0.0`).
- `develop`: Integration branch. All features are merged here for testing.
- `feature/*`: Temporary branches branched from `develop` for individual features.
- `release/*`: Branched from `develop` when preparing for a production release.
- `hotfix/*`: Branched directly from `main` to fix critical bugs in production.

---

## Workflow Steps
1. Initialized repository with `main` branch.
2. Created `develop` branch from `main`.
3. Created feature branch `feature/user-auth` from `develop`.
4. Committed feature code and merged back to `develop` using `--no-ff`.
5. Created `release/v1.0.0` from `develop` for final testing.
6. Merged release into `main` (with tag `v1.0.0`) and back into `develop`.
7. Created emergency `hotfix/v1.0.1` directly from `main` to fix a bug.
8. Merged hotfix into both `main` (with tag `v1.0.1`) and `develop`.

---

## Commands
A helper script `simulate_branching.ps1` is provided to run this workflow:
```bash
powershell -ExecutionPolicy Bypass -File .\simulate_branching.ps1
```

### Git Graph Output
```text
*   bd9b36c (HEAD -> develop) hotfix: Sync hotfix 'v1.0.1' into develop
|\  
* \   9a68741 merge: Sync release 'v1.0.0' back into develop
|\ \  
| | | *   2085585 (tag: v1.0.1, main) hotfix: Merge hotfix 'v1.0.1' into main
| | | |\  
| | | |/  
| | |/|   
| | * | 5227efd (hotfix/v1.0.1) fix: Fix urgent bug
| | |/  
| | *   f67888a (tag: v1.0.0) release: Release v1.0.0
| | |\  
| | |/  
| |/|   
| * | b3d0d13 (release/v1.0.0) Prepare release v1.0.0
|/ /  
* |   cc2f2cc merge: Merge feature/user-auth into develop
|\ \  
| * | 3b2cb50 (feature/user-auth) Added user auth feature
|/ /  
* / ac37d6d Setup develop branch
|/  
* 5cd5715 Initial commit on main
```

---

## Conclusion
The GitFlow branching model was successfully implemented and demonstrated. It keeps production code safe on `main`, provides a clean integration area on `develop`, and isolates new features and urgent hotfixes.
