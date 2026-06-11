## 📁 Linux Search and Filter Utilities


---

## 🛠️ Overview of Key Utilities

| Utility | Purpose                      |
| ------- | ---------------------------- |
| `cat`   | Display file content         |
| `grep`  | Search for patterns in files |
| `sort`  | Sort lines in files          |
| `uniq`  | Filter duplicate lines       |
| `find`  | Search files and directories |

---

## 📖 Reading Files Using `cat`, `sort`, and `uniq`

### 🔹 Using `cat`

Displays the content of a file:

```bash
cat file.txt
```

View multiple files:

```bash
cat file1.txt file2.txt
```

---

### 🔹 Using `sort`

Sort file content alphabetically:

```bash
sort file.txt
```

Sort numerically:

```bash
sort -n numbers.txt
```

Reverse sort:

```bash
sort -r file.txt
```

---

### 🔹 Using `uniq`

Remove duplicate adjacent lines:

```bash
uniq file.txt
```

Count repeated lines:

```bash
uniq -c file.txt
```

👉 **Note:** `uniq` works best with sorted files:

```bash
sort file.txt | uniq
```

---

## 🔍 Introduction to the `find` Utility

The `find` command is used to **search files and directories** based on conditions such as name, type, size, permissions, and modification time.

It searches recursively from a given path.

---

## 🧩 Basic Syntax of `find`

```bash
find <path> <options> <expression>
```

Example:

```bash
find /home/user -name file.txt
```

---

## ⚙️ Advanced Usage and Filtering Options

| Option   | Description                 |
| -------- | --------------------------- |
| `-name`  | Search by file name         |
| `-type`  | Search by file type         |
| `-size`  | Search by file size         |
| `-mtime` | Search by modification time |
| `-user`  | Search by owner             |
| `-perm`  | Search by permissions       |

---

## 🧪 Practical Examples

### 🔹 Find File by Name

```bash
find / -name "app.log"
```

---

### 🔹 Find Files by Type

Find only directories:

```bash
find /var -type d
```

Find only files:

```bash
find /var -type f
```

---

### 🔹 Find Files by Size

Files larger than 100MB:

```bash
find / -size +100M
```

Files smaller than 1KB:

```bash
find / -size -1k
```

---

### 🔹 Find Files by Modification Date

Files modified in last 7 days:

```bash
find /home -mtime -7
```

Files modified more than 30 days ago:

```bash
find /home -mtime +30
```

---

