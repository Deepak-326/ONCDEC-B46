<img width="1226" height="392" alt="image" src="https://github.com/user-attachments/assets/4a6dae09-d8ba-47b3-abc1-761e90a3169f" />






# git-github interview questions

---

### 1. What is Git and why is it used?

Git is a **distributed version control system** used to track changes in source code, collaborate with teams, manage versions, and recover previous code states efficiently.

---

### 2. Difference between Git and GitHub?

* **Git** → Version control tool (local)
* **GitHub** → Cloud platform to host Git repositories and collaborate

---

### 3. What is a repository?

A repository (repo) is a **storage area for code**, including files, commit history, branches, and configurations.

---

### 4. What is a commit?

A commit is a **snapshot of changes** saved in Git with a unique commit ID and message.

---

### 5. What is the Git workflow?

1. Working Directory
2. Staging Area (`git add`)
3. Repository (`git commit`)
4. Remote Repository (`git push`)

---

### 6. Difference between `git clone` and `git fork`?

* `clone` → Copy repo to local system
* `fork` → Copy repo to your GitHub account

---

### 7. What is a branch?

A branch is a **separate line of development** that allows working without affecting the main code.

---

### 8. Default branch: main vs master?

* `master` → Old default
* `main` → New standard (inclusive naming)

---

### 9. What is `git status`?

Shows:

* Modified files
* Staged files
* Untracked files
* Current branch

---

### 10. Difference between `git pull` and `git fetch`?

* `fetch` → Downloads changes only
* `pull` → Fetch + Merge

---


---

### 11. Merge vs Rebase?

* **Merge** → Creates merge commit (history preserved)
* **Rebase** → Rewrites commit history (cleaner)

---

### 12. What is a merge conflict?

Occurs when Git cannot auto-merge changes.
Resolved by manually editing files and committing.

---

### 13. What is `git stash`?

Temporarily saves uncommitted changes.

```bash
git stash
git stash pop
```

---

### 14. What is `.gitignore`?

Specifies files Git should **not track** (logs, secrets, builds).

---

### 15. What is HEAD?

HEAD is a **pointer to the current commit/branch**.

---

### 16. Reset vs Revert?

* `reset` → Moves HEAD (dangerous)
* `revert` → Creates new commit (safe)

---

### 17. Types of `git reset`?

| Type  | Effect                       |
| ----- | ---------------------------- |
| soft  | Removes commit, keeps staged |
| mixed | Removes commit + staging     |
| hard  | Deletes everything           |

---

### 18. What is tagging?

Tags mark **specific points** (like releases).

```bash
git tag v1.0
```

---


### 20. Undo pushed commit?

```bash
git revert <commit-id>
```


---

### 21. What is cherry-picking?

Apply a **specific commit** from one branch to another.

---

### 22. Origin vs Upstream?

* origin → Your fork
* upstream → Original repo

---


### 24. What is a pull request?

A request to **merge code changes** into another branch.

---

### 25. Git in CI/CD?

Triggers pipelines for:

* Build
* Test
* Security scan
* Deploy

---


---

### 💼 Production Bug Fix

**Q:** Production issue found, what do you do?
**Answer:**

1. Create hotfix branch
2. Fix issue
3. Test
4. Merge to main
5. Tag release
6. Deploy via CI/CD

---

### 💼  Wrong Commit to Main

**Q:** You pushed wrong code to main?
**Answer:**

```bash
git revert <commit-id>
```

---

### 💼  Need Temporary Switch

**Q:** Urgent task but uncommitted code?
**Answer:**

```bash
git stash
```

---

### 💼 Feature Release

**Q:** How do you release version?
**Answer:**

* Merge feature branch
* Create tag
* CI/CD deploy

---
