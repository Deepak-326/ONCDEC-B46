
## What is an Application Load Balancer?

An **Application Load Balancer (ALB)** distributes incoming HTTP/HTTPS requests across multiple EC2 instances.

Instead of sending all requests to a single server, the ALB shares the traffic among multiple servers, improving availability and performance.

---

## Prerequisites

* AWS Account
* One VPC
* Two Public Subnets (in different Availability Zones)
* Amazon Linux AMI
* Key Pair

---

# Step 1: Create a Security Group

Go to **EC2 → Security Groups**.

Click **Create Security Group**.

Configure the following inbound rules:

| Type | Port | Source                 |
| ---- | ---- | ---------------------- |
| SSH  | 22   | Anywhere (`0.0.0.0/0`) |
| HTTP | 80   | Anywhere (`0.0.0.0/0`) |

Click **Create Security Group**.

> **Note:** For production environments, SSH should be restricted to **My IP** instead of `0.0.0.0/0`.

---

# Step 2: Launch Two EC2 Instances

Go to **EC2 → Launch Instance**.

Launch **2 Amazon Linux EC2 instances** using the Security Group created above.

Example names:

* EC2-1
* EC2-2

Wait until both instances are in the **Running** state.

---

# Step 3: Change the Hostname

### EC2 Instance 1

Login to the instance:

```bash
ssh -i key.pem ec2-user@<Public-IP>
```

Switch to the root user:

```bash
sudo su -
```

Change the hostname:

```bash
hostnamectl set-hostname server-1
```

Verify:

```bash
hostname
```

Output:

```text
server-1
```

---

### EC2 Instance 2

Login to the second instance.

Switch to the root user:

```bash
sudo su -
```

Change the hostname:

```bash
hostnamectl set-hostname server-2
```

Verify:

```bash
hostname
```

Output:

```text
server-2
```

---

# Step 4: Install Apache Web Server

Run the following commands on **both EC2 instances**.

Install Apache:

```bash
yum install httpd -y
```

Start Apache:

```bash
systemctl start httpd
```

Enable Apache:

```bash
systemctl enable httpd
```

Create a simple web page:

```bash
echo "Swagat Hai Aapka $(hostname) Pe" > /var/www/html/index.html
```

Check the Apache service:

```bash
systemctl status httpd
```

---

# Step 5: Verify the Web Server

Open the **Public IP** of each EC2 instance in your browser.

EC2-1:

```text
http://<EC2-1-Public-IP>
```

Output:

```text
Swagat Hai Aapka server-1 Pe
```

EC2-2:

```text
http://<EC2-2-Public-IP>
```

Output:

```text
Swagat Hai Aapka server-2 Pe
```

---

# Step 6: Create a Target Group

Go to:

**EC2 → Target Groups**

Click **Create Target Group**.

Configure:

| Setting     | Value     |
| ----------- | --------- |
| Target Type | Instances |
| Name        | Web-TG    |
| Protocol    | HTTP      |
| Port        | 80        |
| VPC         | Your VPC  |

Click **Next**.

Select both EC2 instances.

Click **Include as Pending Below**.

Click **Create Target Group**.

Wait until both targets show:

```text
Healthy
```

---

# Step 7: Create an Application Load Balancer

Go to:

**EC2 → Load Balancers**

Click **Create Load Balancer**.

Choose:

**Application Load Balancer**

Configure:

| Setting            | Value                      |
| ------------------ | -------------------------- |
| Name               | My-ALB                     |
| Scheme             | Internet-facing            |
| IP Address Type    | IPv4                       |
| VPC                | Your VPC                   |
| Availability Zones | Select both Public Subnets |
| Security Group     | Web Security Group         |
| Listener           | HTTP (Port 80)             |
| Target Group       | Web-TG                     |

Click **Create Load Balancer**.

Wait until the status changes to:

```text
Active
```

---

# Step 8: Test the Load Balancer

Open the Load Balancer.

Copy the **DNS Name**.

Example:

```text
my-alb-123456789.ap-south-1.elb.amazonaws.com
```

Paste the DNS name into your browser.

Example:

```text
http://my-alb-123456789.ap-south-1.elb.amazonaws.com
```

Refresh the page multiple times.

Output:

```text
Swagat Hai Aapka server-1 Pe
```

Refresh again:

```text
Swagat Hai Aapka server-2 Pe
```

This confirms that the Application Load Balancer is distributing traffic between both EC2 instances.

