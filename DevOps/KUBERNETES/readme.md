## Hey Guys Lets dive in into the world of k8s, but first lets understand docker:
**Docker is used to:**
* Package applications into containers
* Ensure the same runtime environment everywhere
* Make app setup easy and fast

Docker is **excellent for development and small setups** ✅
But Docker **alone is NOT enough for production at scale** ❌

---

## ❌ Problems When You Deploy Using Docker Alone

### 1️⃣ No Auto-Healing

* If a container crashes, it will NOT restart automatically
* You must manually restart it

✅ In production, this can cause **application downtime**

---

### 2️⃣ No Auto-Scaling

* When traffic increases, Docker does NOT automatically start new containers
* You must manually scale containers

✅ This causes **performance issues and slow response** during high traffic

---

### 3️⃣ No Load Balancing

* Docker does NOT distribute traffic across multiple containers automatically
* One container may get overloaded

✅ This results in **app slowdown**

---

### 4️⃣ Downtime During Deployment

* To deploy a new version, you must stop the old container
* Then start a new container

✅ This causes **application downtime during every update**

---

### 5️⃣ Difficult Multi-Server Management

* Docker works well on a single server
* But managing containers across multiple servers is very difficult

✅ Not suitable for **large enterprise production environments**

---

## To Solve This Issues we need a Container Orchestration Tool

Docker creates containers ✅
Kubernetes manages containers ✅✅

Kubernetes provides:

* Auto-healing
* Auto-scaling
* Load balancing
* Rolling Update & Rollback (Zero-downtime deployments)
* High Availablity

---

<img width="1122" height="262" alt="image" src="https://github.com/user-attachments/assets/3f1de932-01a7-4116-b6da-95cc33f7ecba" />
<img width="1460" height="598" alt="image" src="https://github.com/user-attachments/assets/0b620452-ba09-4329-9a6d-40c922e18896" />

---

Think of **Kubernetes (K8s)** like a **manager of containers**.
It makes sure your application containers are running properly, even if something fails.

A Kubernetes cluster has **2 main parts**:

---

# 1️⃣ Control Plane (Brain of the cluster)

This is the **decision maker**. It controls everything.

Main components:

### 🔹 API Server

* Entry point of Kubernetes.
* When you run `kubectl apply`, request goes here.
* It talks to all other components.

### 🔹 etcd

* Database of Kubernetes.
* Stores cluster state (which pod running, configs, secrets, etc).

### 🔹 Scheduler

* Decides **which Node** will run a new Pod.
* Example: If Node1 has more CPU free → it selects Node1.

### 🔹 Controller Manager

* Makes sure desired state = actual state.
* If a pod crashes → it creates a new one.



---

# 2️⃣ Worker Nodes (Where apps run)

This is where your **actual application containers run**.

Each Worker Node contains:

### 🔹 Kubelet

* Agent running on every node.
* Talks to control plane.
* Ensures containers are running.

### 🔹 Container Runtime

* Actually runs containers.
* Example: containerd, CRI-O (Earlier Docker).
* 
### 🔹 What is a Pod?

A Pod is the smallest deployable unit in Kubernetes.

* You don’t deploy containers directly in Kubernetes.
* You deploy them inside a Pod.
### 🔹 Kube-proxy

* Handles networking.
* Manages Service traffic routing.

---



<img width="1213" height="246" alt="image" src="https://github.com/user-attachments/assets/3990d092-87b7-4e51-8f2d-9fcfcb48f05b" />
<img width="1265" height="567" alt="image" src="https://github.com/user-attachments/assets/c7070f43-d884-4cd9-ad69-8e2e5633c851" />

