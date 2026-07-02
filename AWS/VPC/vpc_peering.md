<img width="1252" height="602" alt="image" src="https://github.com/user-attachments/assets/d5672fdb-164a-4521-adf9-9813ab93a6f4" />

---


## What is VPC Peering?

**VPC Peering** is a networking connection between two VPCs that allows resources in both VPCs to communicate with each other using **Private IP addresses**.

It is commonly used when applications or servers are deployed in different VPCs but need to communicate securely without using the public internet.

---

Suppose your company has two applications:

* **VPC-A** contains a Web Server.
* **VPC-B** contains a Database Server.

The Web Server needs to access the Database Server.

Without VPC Peering:

* Communication must go through the internet (if public IPs exist), which is less secure.

With VPC Peering:

* The Web Server communicates directly with the Database Server using **Private IP addresses**.

---



# Step 1: Create VPC-A

Go to **VPC → Create VPC**

Use the following configuration:

| Setting   | Value         |
| --------- | ------------- |
| Name      | VPC-A         |
| IPv4 CIDR | `10.0.0.0/16` |

Click **Create VPC**.

---

# Step 2: Create VPC-B

Again, create another VPC.

| Setting   | Value            |
| --------- | ---------------- |
| Name      | VPC-B            |
| IPv4 CIDR | `192.168.0.0/16` |

> **Note:** The CIDR ranges must not overlap.

Click **Create VPC**.

---

# Step 3: Create Subnets

## In VPC-A

Create a subnet.

| Setting | Value         |
| ------- | ------------- |
| Name    | Subnet-A      |
| CIDR    | `10.0.1.0/24` |

---

## In VPC-B

Create another subnet.

| Setting | Value            |
| ------- | ---------------- |
| Name    | Subnet-B         |
| CIDR    | `192.168.1.0/24` |

---

# Step 4: Launch EC2 Instances

Launch one EC2 instance in each VPC.

## EC2 in VPC-A

| Setting | Value    |
| ------- | -------- |
| Name    | Server-A |
| VPC     | VPC-A    |
| Subnet  | Subnet-A |

---

## EC2 in VPC-B

| Setting | Value    |
| ------- | -------- |
| Name    | Server-B |
| VPC     | VPC-B    |
| Subnet  | Subnet-B |

Wait until both instances are running.

---

# Step 5: Create a VPC Peering Connection

1. Open **VPC Dashboard**.
2. Click **Peering Connections**.
3. Click **Create Peering Connection**.

Fill in the details:

| Setting       | Value          |
| ------------- | -------------- |
| Name          | VPC-A-to-VPC-B |
| Requester VPC | VPC-A          |
| Accepter VPC  | VPC-B          |

Click **Create Peering Connection**.

---

# Step 6: Accept the Peering Request

1. Select the Peering Connection.
2. Click **Actions → Accept Request**.

The status should now change to:

```text
Active
```

---

# Step 7: Update the Route Table of VPC-A

Open the Route Table associated with **VPC-A**.

Click **Edit Routes**.

Add the following route:

| Destination      | Target                 |
| ---------------- | ---------------------- |
| `192.168.0.0/16` | VPC Peering Connection |

Click **Save Changes**.

---

# Step 8: Update the Route Table of VPC-B

Open the Route Table associated with **VPC-B**.

Add the following route:

| Destination   | Target                 |
| ------------- | ---------------------- |
| `10.0.0.0/16` | VPC Peering Connection |

Click **Save Changes**.

---

# Step 9: Update the Security Groups

Both EC2 instances should allow **ICMP (Ping)**.

Add the following inbound rule.

## Security Group of Server-A

| Type            | Source           |
| --------------- | ---------------- |
| All ICMP - IPv4 | `192.168.0.0/16` |

---

## Security Group of Server-B

| Type            | Source        |
| --------------- | ------------- |
| All ICMP - IPv4 | `10.0.0.0/16` |

If you want to use SSH between the VPCs, also allow:

| Type | Port | Source         |
| ---- | ---- | -------------- |
| SSH  | 22   | Other VPC CIDR |

---

# Step 10: Find the Private IP Address

Open both EC2 instances and note their Private IPs.

Example:

Server-A

```text
10.0.1.10
```

Server-B

```text
192.168.1.15
```

---

# Step 11: Test the Connection

SSH into **Server-A**.

Run:

```bash
ping 192.168.1.15
```

---

# Step 12: Verify the Peering Connection

Run the following commands:

Check connectivity:

```bash
ping <Private-IP>
```

If the ping is successful, your VPC Peering is working correctly.

---


## Quick Setup: 
* Created two VPCs
* Created subnets
* Launched EC2 instances
* Created a VPC Peering Connection
* Accepted the Peering Request
* Updated Route Tables
* Configured Security Groups
* Verified communication using Private IP addresses


