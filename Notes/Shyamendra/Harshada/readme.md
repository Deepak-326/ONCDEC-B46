
# CloudWatch Alarm with Auto Scaling Group (ASG)

## Step 1: Create a Launch Template

1. Open the **Amazon EC2 Console**.
2. Navigate to **Launch Templates**.
3. Click **Create launch template**.
4. Configure:
   - AMI (Amazon Linux 2/2023)
   - Instance type
   - Key pair
   - Security group
   - IAM role (if required)
5. Save the launch template.

---

## Step 2: Create an Auto Scaling Group (ASG)

1. Open the **EC2 Console**.
2. Navigate to **Auto Scaling Groups**.
3. Click **Create Auto Scaling Group**.
4. Select the launch template created in Step 1.
5. Configure:
   - VPC and Subnets
   - Desired capacity
   - Minimum capacity
   - Maximum capacity
6. Complete the ASG creation.

---

## Step 3: Create a CloudWatch Alarm

1. Open the **CloudWatch Console**.
2. Go to **Alarms** → **Create Alarm**.
3. Select the metric:
   - **EC2 → Auto Scaling Group → CPUUtilization**
4. Configure the threshold (for example, CPU utilization > 70%).
5. Create an **SNS Topic** for email notifications.
6. Subscribe your email address to the SNS topic.
7. Confirm the subscription from your email.
8. Finish creating the alarm.

---

## Step 4: Configure Dynamic Scaling Policy

1. Open the **Auto Scaling Group**.
2. Go to the **Automatic Scaling** tab.
3. Create a **Dynamic Scaling Policy**.
4. Choose:
   - **Simple Scaling Policy**
5. Select the CloudWatch alarm created earlier.
6. Configure the action:
   - **Add 1 capacity unit** when the alarm is triggered.
7. Save the scaling policy.

---

## Step 5: Connect to an EC2 Instance

SSH into one of the EC2 instances in the Auto Scaling Group.

### Install Stress Tool (Amazon Linux)

For Amazon Linux 2023:

```bash
sudo dnf install stress -y
```

For Amazon Linux 2:

```bash
sudo amazon-linux-extras install epel -y
sudo yum install stress -y
```

Generate CPU load:

```bash
stress --cpu 2 --timeout 300
```

This command creates CPU stress for **5 minutes**.

---

## Step 6: Verify the CloudWatch Alarm

1. Open the **CloudWatch Dashboard**.
2. Monitor the CPU Utilization metric.
3. Verify that:
   - The alarm changes to the **ALARM** state when the CPU threshold is exceeded.
   - An email notification is received through Amazon SNS.
   - The Auto Scaling Group launches a new EC2 instance according to the scaling policy.
4. After CPU usage drops below the threshold, verify that the alarm returns to the **OK** state.

---

## Expected Outcome

- CloudWatch monitors the EC2 CPU utilization.
- SNS sends an email notification when the threshold is exceeded.
- The Auto Scaling Group automatically adds one EC2 instance.
- The application scales based on CPU load.
````
