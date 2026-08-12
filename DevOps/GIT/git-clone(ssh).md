
# Authentication type https:
## Download github repository to local server 
````
git clone https://github.com/abhipraydhoble/git-practice.git
````

````
cd git practice
````
## set up identity

````
git config --global user.name "abhipray"
````
````
git config --global user.email "abhipraydhoble@outlook.com"
````

## create files
````
touch index.html  style.css
````

## add files into staging area
````
git add index.html
````
````
git add style.css
````

## list staged files
````
git status
````
## commit files into local repository
````
git commit -m "this is my first commit"
````
## view commit history
````
git log
````

# how to create git token 
- go to profile section, click on settings
<img width="1916" height="762" alt="image" src="https://github.com/user-attachments/assets/faecb4e5-f6b0-4161-ad47-e7624af5225e" />
<img width="1920" height="747" alt="image" src="https://github.com/user-attachments/assets/b4eac6af-0a5e-47ba-850e-6c05e42e857e" />
- click on developer setting
<img width="1917" height="720" alt="image" src="https://github.com/user-attachments/assets/27d24c9d-c871-434b-8dd9-9d691bdeb2e8" />
<img width="1917" height="678" alt="image" src="https://github.com/user-attachments/assets/27656c24-6019-4120-ab8c-9ff5f3be4c72" />
<img width="1920" height="582" alt="image" src="https://github.com/user-attachments/assets/6d5ebc4c-0bf2-486b-85b6-5d41df50d172" />
<img width="1916" height="706" alt="image" src="https://github.com/user-attachments/assets/28f9b8f8-1119-40cc-b458-37fffa1aee22" />

---
# 🔐  What is SSH in Git?

- SSH (Secure Shell) provides a secure way to connect to remote servers.

- When you use SSH with GitHub, GitLab, or Bitbucket:

- You don’t need to enter username/password every time.

- Authentication happens via a public-private key pair.



##  how to generate public private key pair
## below command will create keypair in user's home dir

````
ssh-keygen
````
<img width="1208" height="88" alt="image" src="https://github.com/user-attachments/assets/b8bfbca3-5869-40a0-ac25-531eba395358" />

<img width="1322" height="147" alt="image" src="https://github.com/user-attachments/assets/a5efdc09-fcfb-46fa-9d66-e34228f5f8ac" />

## copy public key
<img width="1492" height="122" alt="image" src="https://github.com/user-attachments/assets/6c30d2d5-98f4-48e7-b5de-29f67d04beed" />

## go to github and paste the key 
<img width="1916" height="802" alt="image" src="https://github.com/user-attachments/assets/f95d8d25-de51-45d8-8a79-ff9429d13b68" />
<img width="1892" height="793" alt="image" src="https://github.com/user-attachments/assets/f6f75c14-c0b8-4046-a3ca-b3afc87267e4" />
<img width="1917" height="592" alt="image" src="https://github.com/user-attachments/assets/2f8a1967-1a47-488e-ba0a-d70d5774772b" />
<img width="1902" height="793" alt="image" src="https://github.com/user-attachments/assets/01628ca9-40d5-4c10-982a-9e31449a311f" />




