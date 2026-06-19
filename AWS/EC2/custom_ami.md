
# 📦 Create Custom AMI with Installed Packages

This guide explains **step-by-step how to create a Custom AMI** with:

* Apache (httpd)
* Git
* Tree package
* Custom user (user1)

This AMI can be used to launch **pre-configured EC2 instances**.

---



# Step 1: Login to AWS Console

---

# Step 2: Launch EC2 Instance

Create EC2 Instance with:

* Amazon Linux
* t3.micro
* Security Group:

| Type | Port | Source    |
| ---- | ---- | --------- |
| SSH  | 22   | My IP     |
| HTTP | 80   | 0.0.0.0/0 |

Connect to instance:

```
ssh -i mykey.pem ec2-user@public-ip
```

---

# Step 3: Update Server

Run:

```
sudo yum update -y
```

---

# Step 4: Install Packages

Install **httpd**

```
sudo yum install httpd -y
```

Start Apache

```
sudo systemctl start httpd
sudo systemctl enable httpd
```

Install **Git**

```
sudo yum install git -y
```

Install **Tree**

```
sudo yum install tree -y
```

---

# Step 5: Create User

Create new user:

```
sudo useradd user1
```

Set password:

```
sudo passwd user1
```

Verify user:

```
cat /etc/passwd | grep user1
```

---

# Step 6: Verify Installation

Check httpd:

```
systemctl status httpd
```

Check git:

```
git --version
```

Check tree:

```
tree --version
```

Check user:

```
id user1
```

---

# Step 7: Create Custom AMI

Go to:

```
EC2 → Instances
```

Select Instance

Click:

```
Actions → Image and Templates → Create Image
```

Enter:

Image Name:

```
Custom-AMI-HTTPD-GIT
```

Description:

```
AMI with httpd git tree and user1
```

Click:

```
Create Image
```

---

# Step 8: Check AMI Status

Go to:

```
EC2 → AMIs
```

Status:

```
Pending → Available
```

---

# Step 9: Launch Instance from Custom AMI

Go to:

```
EC2 → Launch Instance
```

Select:

```
My AMIs → Custom-AMI-HTTPD-GIT
```

Launch instance.

---

# Step 10: Verify Custom AMI

Connect:

```
ssh -i mykey.pem ec2-user@public-ip
```

Check:

```
systemctl status httpd
git --version
tree --version
id user1
```

---

# ✅ Custom AMI Ready

Your AMI contains:

✔ Apache Installed
✔ Git Installed
✔ Tree Installed
✔ user1 Created

