 # AWS Elastic Block Store (EBS)
 
- provides reliable, high-performance block storage for Amazon EC2 instances. 
- Virtual Hard Drive: It functions as a network-attached block device that you can mount, format with a file system, and use like a local disk.
- Persistence: Data remains intact and accessible even if you stop or terminate the instance, as the storage exists independently.
- Replication: For high availability, each volume is automatically replicated across multiple servers within its specific Availability Zone (AZ)
   to prevent loss from hardware failure.
- Snapshots: You can create incremental backups (point-in-time copies) stored in Amazon S3 to restore data, create new volumes, or migrate across regions. 


<img width="1582" height="613" alt="image" src="https://github.com/user-attachments/assets/4757c095-9bd6-4fad-92b7-91f837baf55c" />



---

# Topic: ebs volume create and mount

## launch ec2 instance
<img width="1932" height="726" alt="image" src="https://github.com/user-attachments/assets/14a23deb-b6f6-4373-b0a8-3fe5eb4e87c1" />


## create ebs volume 
note: make sure instance and volume are in same az
<img width="1025" height="649" alt="image" src="https://github.com/user-attachments/assets/84f7ac2a-39a6-4724-8126-de7ac95e9759" />
<img width="1652" height="237" alt="image" src="https://github.com/user-attachments/assets/f059ae8e-c1dd-47f7-a29c-3c28fd6d2b84" />

## attach to instance 
<img width="1650" height="450" alt="image" src="https://github.com/user-attachments/assets/76247265-f758-4b5a-a9bb-6ed0b6628972" />
<img width="1870" height="712" alt="image" src="https://github.com/user-attachments/assets/5ae3cb09-215f-43ed-af51-5a05002ebb3c" />

## connect to instance 
<img width="1767" height="738" alt="image" src="https://github.com/user-attachments/assets/828d5a0e-3179-406a-8e1f-0c458888bb26" />
<img width="1177" height="478" alt="image" src="https://github.com/user-attachments/assets/5f3ae767-a099-410b-ae70-1dbdfd99001b" />

## assign file system
````
mkfs.xfs  /dev/nvme1n1
````
<img width="1316" height="361" alt="image" src="https://github.com/user-attachments/assets/c4dda496-aeb6-456f-a8ca-4e305aad9f2b" />

## now mount ebs volume 
**1. temp mount:**
````
mount /dev/nvme1n1  /mnt
````
**2. Permanent Mount:**
<img width="887" height="66" alt="image" src="https://github.com/user-attachments/assets/451d80a5-1a90-4066-825e-38294461db86" />
<img width="1912" height="375" alt="image" src="https://github.com/user-attachments/assets/8c1fd295-21a0-48ae-b4da-ce6705c24798" />
<img width="1132" height="476" alt="image" src="https://github.com/user-attachments/assets/e360ed47-28af-4b9f-aff8-3860f789a2a3" />
<img width="992" height="517" alt="image" src="https://github.com/user-attachments/assets/2ef40656-6292-439b-af7e-5e2a47341650" />


## detach volume 
````
umount /dev/nvme1n1
````


---
# Topic Disk Partition

````
fdisk  /dev/nvme1n1
````
<img width="1580" height="480" alt="image" src="https://github.com/user-attachments/assets/d6962a69-a3f6-4adb-91f3-455184007e3f" />

**press m: for help**

**press n: to create new partition**

**press w: to save partition**

<img width="803" height="746" alt="image" src="https://github.com/user-attachments/assets/b449f1d7-d4e1-4b9a-819f-5f5fd8ddf534" />
<img width="1381" height="905" alt="image" src="https://github.com/user-attachments/assets/65c830cd-1f27-4019-8b23-edf71c8f2344" />

**Assign file system to partition one**

**mount partition one**

<img width="1305" height="815" alt="image" src="https://github.com/user-attachments/assets/f51e23be-a98d-4a46-bd0d-77bd4e905305" />



## Take a Snapshot 
<img width="1591" height="616" alt="image" src="https://github.com/user-attachments/assets/13049f9a-96ab-436d-be3e-baadc946a1bb" />
<img width="1918" height="725" alt="image" src="https://github.com/user-attachments/assets/0358b087-f9b2-4ae9-a1e5-048ad7617f4e" />
<img width="1918" height="612" alt="image" src="https://github.com/user-attachments/assets/0f0884eb-2205-4d6c-989d-a37c628ef5d6" />



## Delete 
<img width="723" height="256" alt="image" src="https://github.com/user-attachments/assets/3e7921c4-de0d-48d7-9fe9-2430f8577b77" />
<img width="682" height="253" alt="image" src="https://github.com/user-attachments/assets/3c4a8451-182a-475c-8492-40d9a89cfc64" />





