


## 1️⃣ What is an Operating System?

An **Operating System (OS)** is software that acts as a **bridge between the user and the hardware**. 
It manages system resources like CPU, memory, storage, and devices, and allows us to run applications.

Examples are **Linux, Windows, and macOS**.

---

## 2️⃣ Difference Between Linux and Windows

Linux is **open-source and customizable**, while Windows is **commercial and user-friendly**.

Linux is mostly used in **servers and cloud environments**, whereas Windows is commonly used on **personal computers**.

Linux is more secure and lightweight, while Windows has a better graphical interface and software support.

---

## 3️⃣ What is Open Source?

Open source means the **source code is freely available**, and anyone can view, modify, and distribute it.

Linux is a good example of open-source software.

It helps organizations reduce costs and increase flexibility.

---

## 4️⃣ Explain Linux Architecture

Linux architecture has mainly **four layers**:

1 Kernel → Core part controlling hardware
2 Shell → Interface between user and kernel
3 System Libraries → Help programs talk to kernel
4 Applications → User programs like vim, docker

---

## 5️⃣ What is Virtualization?

Virtualization means **running multiple virtual machines on a single physical server**.

It helps reduce hardware cost and improves resource utilization.

For example, one AWS EC2 server can run multiple virtual machines.

---

## 6️⃣ Explain Hypervisor and Types

A **Hypervisor** is software that creates and manages virtual machines.

### Types:

**Type 1 (Bare Metal)**
Runs directly on hardware

Examples:

* VMware ESXi
* AWS Hypervisor

**Type 2 (Hosted)**
Runs on top of OS

Examples:

* VirtualBox
* VMware Workstation

---

## 7️⃣ What is Shell?

Shell is a **command-line interface** that allows users to communicate with the Linux system.

### Types of Shell:

* bash
* sh
* zsh
* ksh

### Check current shell:

```
echo $SHELL
```

---

## 8️⃣ What is Kernel?

Kernel is the **core part of the operating system**.

It manages:

* CPU
* Memory
* Devices
* Processes

### Check kernel version:

```
uname -r
```

---

## 9️⃣ Command to Check OS Information

```
cat /etc/os-release
```

or

```
uname -a
```

---

## 🔟 Command to Check Memory

```
free -h
```

Shows available RAM.

---

## 1️⃣1️⃣ Command to Check Disk Storage

```
df -h
```

Shows disk usage.

---

## 1️⃣2️⃣ Command to Check File Size

Single file:

```
ls -lh filename
```

Directory:

```
du -sh foldername
```

---

## 1️⃣3️⃣ Modes of VIM Editor

There are **three modes**:

### 1 Normal Mode

Default mode for navigation.

### 2 Insert Mode

Used to type text.

Press:

```
i
```

### 3 Command Mode

Used to save and exit.

Example:

```
:wq
```

---

## 1️⃣4️⃣ Difference adduser vs useradd

**useradd**

* Basic command
* Manual configuration needed

**adduser**

* Interactive command
* Creates home directory automatically

---

## 1️⃣5️⃣ Skeleton Files

Skeleton files are **default files copied into a new user home directory**.

Location:

```
/etc/skel
```

Example:

* .bashrc
* .profile

---

## 1️⃣6️⃣ Fields of passwd File

File:

```
/etc/passwd
```

Example:

```
sagar:x:1000:1000:Sagar:/home/sagar:/bin/bash
```

Fields:

1 Username
2 Password placeholder
3 User ID
4 Group ID
5 Description
6 Home directory
7 Shell

---

## 1️⃣7️⃣ Check User Groups

```
groups username
```

or

```
id username
```

---

## 1️⃣8️⃣ File Types in Linux

* Regular file (-)
* Directory (d)
* Link (l)
* Character device (c)
* Block device (b)
* Socket (s)
* Pipe (p)

Check:

```
ls -l
```

---

## 1️⃣9️⃣ Hard Link vs Soft Link

Hard link:

* Same inode
* Cannot cross filesystem
* Works even if original deleted

Soft link:

* Shortcut to file
* Different inode
* Breaks if original deleted

Create:

```
ln file1 file2
ln -s file1 file2
```

---

## 2️⃣0️⃣ Change Ownership

```
chown user:group file
```

Example:

```
chown sagar:sagar file.txt
```

---

## 2️⃣1️⃣ Set Permissions

### Symbolic Mode

```
chmod u+x file
```

### Numeric Mode

```
chmod 755 file
```

---

## 2️⃣2️⃣ What is Umask?

Umask defines **default permissions for new files and directories**.

Check:

```
umask
```

Example:

```
022
```

---

## 2️⃣3️⃣ Default Permissions Root User

File:

```
644
```

Directory:

```
755
```

---

## 2️⃣4️⃣ Default Permissions Local User

File:

```
644
```

Directory:

```
755
```

---

## 2️⃣5️⃣ Crontab Fields

Format:

```
* * * * * command
```

Fields:

1 Minute
2 Hour
3 Day
4 Month
5 Weekday

Example:

```
0 2 * * * backup.sh
```

Runs at 2 AM.

---

## 2️⃣6️⃣ Top Command

```
top
```

Shows:

* CPU usage
* Memory usage
* Running processes

Real-time monitoring tool.

---

## 2️⃣7️⃣ PS Command

```
ps -ef
```

Shows running processes.

---

## 2️⃣8️⃣ Grep Command

Used to **search text inside files**.

Example:

```
grep error file.txt
```

---

## 2️⃣9️⃣ Archive and Compress

Archive:

```
tar -cvf file.tar folder
```

Extract:

```
tar -xvf file.tar
```

Compress:

```
tar -czvf file.tar.gz folder
```

Extract:

```
tar -xzvf file.tar.gz
```

---

## 3️⃣0️⃣ OSI Model

7 Layers:

1 Physical
2 Data Link
3 Network
4 Transport
5 Session
6 Presentation
7 Application

Example:

HTTP works on Application layer.

---

## 3️⃣1️⃣ TCP vs UDP

TCP:

* Reliable
* Slow
* Uses acknowledgement

Example:

HTTP, SSH

UDP:

* Fast
* No guarantee

Example:

DNS, Streaming

---

## 3️⃣2️⃣ Basic Networking Commands

```
ip a
```

Check IP

```
ping google.com
```

Check connectivity

```
netstat -tuln
```

Check ports

```
ss -tuln
```

Check ports

```
traceroute google.com
```

Check route

---

## 3️⃣3️⃣ IP Classes

Class A:

```
1 - 126
```

Class B:

```
128 - 191
```

Class C:

```
192 - 223
```

---

## 3️⃣4️⃣ Public vs Private IP

Public IP:

* Accessible from internet
* Example AWS EC2 public IP

Private IP:

* Used inside network
* Example 192.168.x.x

Private ranges:

```
10.0.0.0
172.16.0.0 – 172.31.0.0
192.168.0.0
```

---
