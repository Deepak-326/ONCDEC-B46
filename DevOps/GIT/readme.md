<img width="1200" height="630" alt="image" src="https://github.com/user-attachments/assets/d0ac60a0-83fd-46d7-b105-09fe21c86b6c" />



## What is Git?
Git is a **distributed version control system (DVCS)** that helps track changes, collaborate, and manage project versions efficiently.

## Uses of Git:
- **Tracks changes** – Keeps a history of code updates.
- **Collaboration** – Multiple developers can work together.
- **Branching & Merging** – Develop features independently.
- **Backup & Security** – Prevents data loss with local copies.

#### Que. Differnence between CVCS and DVCS

## CVCS vs. DVCS

Version control systems are categorized into **Centralized Version Control Systems (CVCS)** and **Distributed Version Control Systems (DVCS)**.



| Feature | CVCS (Centralized Version Control System) | DVCS (Distributed Version Control System) |
|---------|------------------------------------------|------------------------------------------|
| **Repository Location** | Single central server | Each user has a full copy of the repository |
| **Dependency on Server** | Requires constant server connection | Can work offline, changes sync later |
| **Performance** | Slower due to network dependency | Faster as operations are local |
| **Failure Handling** | If the server fails, all work stops | Multiple copies exist, reducing risk of data loss |
| **Merging & Branching** | Complex and resource-heavy | Lightweight and efficient |
| **Examples** | SVN, Perforce, CVS | Git, Mercurial, Bazaar |


#### Git Working
<img width="619" height="172" alt="image" src="https://github.com/user-attachments/assets/222962d5-adfb-403c-b590-84d43aee8d0b" />

---
<img width="1100" height="338" alt="image" src="https://github.com/user-attachments/assets/ec101e56-17b6-4468-ac87-cc7b65f4df57" />

## Github:
- GitHub is a cloud-based platform where developers store, share, and work together on code.
- It acts like a professional portfolio that tracks every change made to a project,
- ensuring teams stay organized and can revert to previous versions if a mistake happens


## Download git bash for windows
````
https://www.stanleyulili.com/git/how-to-install-git-bash-on-windows
````
## Download git bash for ubuntu
````
sudo apt install git -y
````
## Download git bash for amazon linux
````
sudo yum install git -y
````

````
git --version
````
# 📝 Git Commands 

## 🔹 **Setup**

```bash
git --version                       # Check Git version
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
git config --list                   # View Git configuration
```

---

## 🔹 **Start a Repository**

```bash
git init                            # Initialize new Git repository
git clone <url>                     # Clone entire repo
git clone -b <branch> <url>         # Clone specific branch
git clone --single-branch <url>     # Clone only the default branch
```

---

## 🔹 **Basic Snapshotting**

```bash
git status                          # Show changes
git add <file>                      # Stage file
git add .                           # Stage all changes
git reset <file>                     # Unstage file
git commit -m "message"             # Commit staged changes
git commit -am "message"            # Add & commit tracked files
```

---

## 🔹 **Branches**

```bash
git branch                          # List branches
git branch <name>                   # Create branch
git checkout <branch>               # Switch branch
git checkout -b <name>              # Create + switch branch
git merge <branch>                  # Merge branch into current
git branch -d <name>                # Delete branch
```

---

## 🔹 **Remote Repositories**

```bash
git remote -v                       # List remotes
git remote add origin <url>         # Add remote
git push -u origin main             # Push branch first time
git push                            # Push changes
git pull                            # Fetch + merge changes from remote
git fetch                           # Download updates (no merge)
git fetch --all                     # Fetch all branches
git pull origin <branch>            # Pull updates for a specific branch
```

---

## 🔹 **Undoing Things**

```bash
git restore <file>                  # Discard local changes
git checkout -- <file>              # (Old way) Discard changes
git reset --soft HEAD~1             # Undo last commit, keep changes staged
git reset --hard HEAD~1             # Undo last commit, discard changes
git revert <commit>                 # Create new commit undoing given commit
```

---

## 🔹 **Stash**

```bash
git stash                           # Save uncommitted changes
git stash save "message"            # Save stash with a message
git stash list                      # List stashes
git stash apply                     # Apply last stash
git stash apply stash@{2}           # Apply specific stash
git stash drop stash@{0}            # Delete specific stash
git stash pop                       # Apply + remove last stash
```

---

## 🔹 **Cherry-pick**

```bash
git cherry-pick <commit-hash>       # Apply commit from another branch
```

---

## 🔹 **Logs & Diffs**

```bash
git log                             # Commit history
git log --oneline          # Compact log
git diff                            # Show unstaged changes
git diff --staged                   # Show staged changes
```

---


