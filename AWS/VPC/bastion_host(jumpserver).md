## What is a Bastion Host?

A **Bastion Host (Jump Server)** is an EC2 instance placed in a **Public Subnet**. It acts as a secure gateway to access EC2 instances running inside a **Private Subnet**.

Instead of assigning a Public IP to every EC2 instance, only the Bastion Host has a Public IP. Administrators first connect to the Bastion Host and then connect to the Private EC2 using its Private IP.

---



# Step 1: Create a VPC

1. Log in to the AWS Management Console.
2. Search for **VPC**.
3. Click **Create VPC**.
4. Enter the following details:

| Setting   | Value         |
| --------- | ------------- |
| Name      | Bastion-VPC   |
| IPv4 CIDR | `10.0.0.0/16` |

5. Click **Create VPC**.

---

# Step 2: Create Two Subnets

## Public Subnet

Create a Public Subnet with the following details:

| Setting | Value         |
| ------- | ------------- |
| Name    | Public-Subnet |
| CIDR    | `10.0.1.0/24` |

After creating the subnet:

* Select the Public Subnet.
* Click **Actions → Edit Subnet Settings**.
* Enable **Auto-assign Public IPv4 Address**.
* Click **Save**.

---

## Private Subnet

Create another subnet with the following details:

| Setting | Value          |
| ------- | -------------- |
| Name    | Private-Subnet |
| CIDR    | `10.0.2.0/24`  |

Do **NOT** enable Auto-assign Public IP.

---

# Step 3: Create an Internet Gateway

1. Open **Internet Gateways**.
2. Click **Create Internet Gateway**.
3. Enter the name **Bastion-IGW**.
4. Click **Create Internet Gateway**.
5. Select the Internet Gateway.
6. Click **Actions → Attach to VPC**.
7. Select **Bastion-VPC**.
8. Click **Attach**.

---

# Step 4: Configure Route Tables

## Public Route Table

1. Open **Route Tables**.
2. Select the Public Route Table.
3. Click **Routes → Edit Routes**.
4. Add the following route:

| Destination | Target           |
| ----------- | ---------------- |
| `0.0.0.0/0` | Internet Gateway |

5. Save the route.
6. Open **Subnet Associations**.
7. Associate the **Public Subnet**.

---

## Private Route Table

1. Select the Private Route Table.
2. Associate the **Private Subnet**.
3. Do **NOT** add any Internet Gateway route.

---

# Step 5: Create Security Groups

## Bastion Host Security Group

Create a Security Group with the following inbound rule:

| Type | Port | Source |
| ---- | ---- | ------ |
| SSH  | 22   | anywhere  |



---

# Step 6: Launch the Bastion Host

Go to **EC2 → Launch Instance**.

Use the following configuration:

| Setting               | Value                         |
| --------------------- | ----------------------------- |
| Name                  | Bastion-Host                  |
| AMI                   | Amazon Linux                  |
| Instance Type         | t3.micro                      |
| Network               | Bastion-VPC                   |
| Subnet                | Public-Subnet                 |
| Auto Assign Public IP | Enable                        |
| Security Group        | Bastion Host Security Group   |
| Key Pair              | Select your existing Key Pair |

Click **Launch Instance**.

Wait until the instance state becomes **Running**.

---

# Step 7: Launch the Private EC2

Launch another EC2 instance with the following configuration:

| Setting               | Value                               |
| --------------------- | ----------------------------------- |
| Name                  | Private-Server                      |
| AMI                   | Amazon Linux                        |
| Instance Type         | t3.micro                            |
| Network               | Bastion-VPC                         |
| Subnet                | Private-Subnet                      |
| Auto Assign Public IP | Disable                             |
| Security Group        | Private EC2 Security Group          |
| Key Pair              | Same Key Pair used for Bastion Host |

Click **Launch Instance**.



---

# Step 8: Connect to the Bastion Host



# Step 9: Copy the Private Key to the Bastion Host

To connect from the Bastion Host to the Private EC2, the Bastion Host also needs the private key.

### On Your Local Computer

1. Open the **Downloads** folder (or wherever your `.pem` file is stored).
2. Right-click the `.pem` file.
3. Open it with **Notepad**.
4. Press **Ctrl + A** to select all the content.
5. Press **Ctrl + C** to copy the content.

### On the Bastion Host

Create a new file:

```bash
vim key.pem
```

Press:

```text
i
```

to enter **Insert Mode**.

Paste the copied content into the file.

Press:

```text
Esc
```

Type:

```bash
:wq
```

and press **Enter** to save the file.

Give the correct permission to the key file:

```bash
chmod 400 key.pem
```

---

# Step 10: Find the Private IP Address

1. Open the **EC2 Dashboard**.
2. Select the **Private EC2** instance.
3. Copy the **Private IPv4 Address**.

Example:

```text
10.0.2.25
```

---

# Step 11: Connect to the Private EC2

From the Bastion Host, run:

```bash
ssh -i key.pem ec2-user@10.0.2.25
```

If prompted, type:

```text
yes
```

You are now connected to the Private EC2 instance.

---


---




