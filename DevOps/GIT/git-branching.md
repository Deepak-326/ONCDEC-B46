<img width="1072" height="582" alt="image" src="https://github.com/user-attachments/assets/d83c989d-b171-4008-8456-73df3f59ce17" />

---

## What is Branching in Git?

- A branch is a separate line of development in a project.

- Think of it as a copy of the code where you can work on new features or fixes without affecting the main code.

- The main branch  holds the stable production-ready code.

- You can create multiple branches like feature, hotfix, release etc., and later merge them into main.


## Why Git Branching Strategy is Important

- Safe Development – main branch always production-ready.

- Parallel Work – multiple developers work on features at the same time.

- Organized Code – keeps feature, develop, and release code separate.

- Easier Collaboration – use pull requests to review code.

- Quick Bug Fixes – hotfix branches fix urgent issues without breaking code.

- Track Changes – know which branch did what.

- Supports CI/CD – testing and deployment on branches before main.



| Branch       | Purpose                                     |
| ------------ | ------------------------------------------- |
| **main**     | Production-ready/live code                  |
| **develop**  | Code integration from all features          |
| **feature/** | New features (homepage, search, cart, etc.) |
| **release/** | Final testing and bug fixes before release  |
| **hotfix/**  | Urgent fixes on production                  |




# commands:
### create feature branch
````
git checkout -b develope
````
or
````
git branch feature
````
### switch to feature branch
````
git checkout feature
````
- OR  git switch -c feature

## Add files for your feature:
````
touch homepage.html

touch product_search.html

touch wishlist.html
````
````
git add homepage.html product_search.html wishlist.html
git commit -m "Add homepage, product search, and wishlist"
````

## Merge Feature into Main
````
git checkout main         # switch back to main
git merge feature         # merge feature branch into main
````

## push to main
````
git push origin main
````

## fetch
````
git fetch origin <branchname>
````
## pull
````
git pull origin <branchname>
````
