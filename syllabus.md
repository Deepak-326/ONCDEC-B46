
# DevOps Tools Overview

This document provides a simple explanation of some essential DevOps tools.

## 1. Git
- A version control tool to track changes in your code.
- Tracks project history and helps you manage versions.
- Allows multiple developers to work on the same project without conflicts.

## 2. Docker
-  A tool that packages your app and its dependencies into containers for easy deployment anywhere.
- Containers ensure your app works consistently across different environments.

## 3. Kubernetes (K8s)
-  A platform to manage and scale your containers (e.g., Docker).
- Automates the deployment, scaling, and operation of containerized applications.

## 4. Terraform
-  A tool to manage your cloud infrastructure using code.
- Allows you to define and provision resources like servers, databases, and networks in the cloud.


## 5. Datadog
-  A monitoring tool that collects data on your systems and apps.
- Helps track performance and spot issues before they become critical.

---

# 🟡 **AWS Syllabus (Core Services)**

## ☁️ **Amazon Web Services (AWS)**

* **EC2 (Elastic Compute Cloud)**
  → Virtual servers

* **S3 (Simple Storage Service)**
  → Object storage

* **VPC (Virtual Private Cloud)**
  → Networking

* **EBS & EFS**
  → Block & File storage

* **RDS (Relational Database Service)**
  → Managed databases

* **Route 53**
  → DNS & domain management

* **CloudFront**
  → Content Delivery Network (CDN)

* **Lambda**
  → Serverless computing

* **CloudWatch**
  → Monitoring & logging

---

# 🐧 **Linux Syllabus (DevOps Focus)**

## Basics of Linux

* File & directory creation
* Linux directory structure

## Editors

* vi / vim
* nano

## User & Group Management

* useradd, userdel
* groupadd
* sudo & sudoers

## Package Management

* yum / dnf
* apt

## Archiving & Compression

* tar
* gzip, zip

## Process Management

* ps, top
* kill, nice

## Permissions

* chmod
* chown
* umask

## Job Scheduling

* cron

## Networking

* ping
* netstat 
* curl, wget

---
# Job roles

## 🐧 **Linux Job Roles**

### 1️⃣ Linux System Administrator

**Who is this?**
The person who **manages servers**.

**Daily Work**

* Create users & groups
* Manage permissions
* Install software (yum/apt)
* Monitor CPU, memory, disk
* Troubleshoot server issues

**Example**

> “Website is slow” → Linux admin checks CPU, RAM, disk, logs.

**Skills Needed**

* Linux commands
* File permissions
* Process & service management
* Networking basics

**Good For**

* Freshers
* Entry into IT / DevOps

---

### 2️⃣ Server / Infrastructure Support Engineer

**Who is this?**
Handles **production issues** and keeps systems running.

**Daily Work**

* Restart failed services
* Fix server crashes
* Handle tickets
* Coordinate with Dev & Cloud teams

**Example**

> Night alert: server down → log in → fix → bring system up.

**Skills Needed**

* Linux
* Troubleshooting mindset
* Monitoring tools

---

## ☁️ **Cloud Job Roles**

### 3️⃣ Cloud Engineer

**Who is this?**
Builds and manages **cloud infrastructure**.

**Daily Work**

* Create EC2, VPC, S3
* Configure security groups
* Manage IAM users & roles
* Optimize cost

**Example**

> Company wants a new app → Cloud engineer creates servers & networking.

**Skills Needed**

* AWS / Azure / GCP
* Linux
* Networking
* Security basics

---

### 4️⃣ Cloud Administrator

**Who is this?**
Maintains **existing cloud setup**.

**Daily Work**

* Monitor cloud resources
* Manage backups
* Handle access control
* Ensure uptime

**Difference from Cloud Engineer**

* Engineer → **creates**
* Admin → **maintains**

---

### 5️⃣ Cloud Solutions Architect

**Who is this?**
Designs **complete cloud architecture**.

**Daily Work**

* Decide which services to use
* Design secure & scalable systems
* Cost optimization
* Client discussions

**Example**

> “We need an app for 1 million users” → Architect designs full AWS setup.

**Skills Needed**

* Deep cloud knowledge
* System design
* Security & scalability

---

## ⚙️ **DevOps Job Roles**

### 6️⃣ DevOps Engineer (Most Popular 🚀)

**Who is this?**
The bridge between **developers and operations**.

**Daily Work**

* Automate deployments
* Build CI/CD pipelines
* Containerize apps
* Manage Kubernetes
* Monitoring & alerts

**Example**

> Developer pushes code → pipeline runs → app auto-deployed.

**Skills Needed**

* Linux
* Git
* Docker
* Kubernetes
* Jenkins
* Terraform
* Cloud

---

### 7️⃣ Site Reliability Engineer (SRE)

**Who is this?**
DevOps + **Reliability focus**.

**Daily Work**

* Ensure high availability
* Reduce downtime
* Automate recovery
* Performance tuning

**Example**

> App crash → auto-restart → no user impact.

**Key Focus**

* Stability
* Performance
* Reliability

---

### 8️⃣ Platform Engineer

**Who is this?**
Builds **internal platforms** for developers.

**Daily Work**

* Create reusable CI/CD templates
* Build internal tools
* Standardize environments

**Example**

> Developers don’t worry about infra → platform team handles it.

---

### 9️⃣ CI/CD Engineer

**Who is this?**
Pipeline specialist.

**Daily Work**

* Jenkins/GitHub Actions
* Build, test, deploy automation
* Improve deployment speed

**Example**

> One-click deployment for developers.

---

## 📊 **Quick Role Comparison**

| Role                | Main Focus           |
| ------------------- | -------------------- |
| Linux Admin         | Server management    |
| Cloud Engineer      | Cloud infrastructure |
| Cloud Admin         | Cloud maintenance    |
| Solutions Architect | System design        |
| DevOps Engineer     | Automation           |
| SRE                 | Reliability          |
| Platform Engineer   | Internal platforms   |
| CI/CD Engineer      | Pipelines            |

---



