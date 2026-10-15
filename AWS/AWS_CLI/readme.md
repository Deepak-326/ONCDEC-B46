
## 1. Install AWS CLI on Linux

```bash
sudo apt install unzip -y

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install
```

Verify installation:

```bash
aws --version
```

---

## 2. Configure AWS CLI

Configure AWS CLI with your credentials.

```bash
aws configure
```

You will be asked for:

* AWS Access Key
* AWS Secret Access Key
* Default region
* Output format

---

## 3. Verify AWS Access

### List IAM Users

```bash
aws iam list-users
```

### Check EC2 Instances

```bash
aws ec2 describe-instances
```

---

## 4. Working with Amazon S3

### List All Buckets

```bash
aws s3 ls
```

### List Objects in a Bucket

```bash
aws s3 ls s3://new-s3-bucket-for-cdecb68
```

---

## 5. Create a New S3 Bucket

```bash
aws s3 mb s3://letslearnonline.in
```

Verify bucket creation:

```bash
aws s3 ls s3://letslearnonline.in
```

---

## 6. Upload a File to S3

Create a sample file:

```bash
echo "Hello ClassB68" > index.html
```

Upload the file to S3:

```bash
aws s3 cp index.html s3://letslearnonline.in
```

Verify upload:

```bash
aws s3 ls s3://letslearnonline.in
```

---

## 7. Download File from S3

Download a file from S3 bucket:

```bash
aws s3 cp s3://letslearnonline.in/blue.yaml .
```

Check downloaded file:

```bash
ls
```



---

## 8. Delete Objects from S3



```bash
aws s3 rm s3://letslearnonline.in/blue.yaml

aws s3 rm s3://letslearnonline.in/index.html
```

---

## 9. Delete S3 Bucket



```bash
aws s3 rb s3://letslearnonline.in
```

---



| Command                      | Purpose                   |
| ---------------------------- | ------------------------- |
| `aws configure`              | Configure AWS credentials |
| `aws iam list-users`         | List IAM users            |
| `aws ec2 describe-instances` | Show EC2 instances        |
| `aws s3 ls`                  | List S3 buckets           |
| `aws s3 mb`                  | Create bucket             |
| `aws s3 cp`                  | Upload or download files  |
| `aws s3 rm`                  | Delete objects            |
| `aws s3 rb`                  | Remove bucket             |

---

### References:
````
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
````
````
https://docs.aws.amazon.com/cli/latest/
````
````
https://docs.aws.amazon.com/cli/latest/reference/s3/
````
