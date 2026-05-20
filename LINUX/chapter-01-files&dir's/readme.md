# Topic:  Linux Directory and File Creation



## Creating Files

### Create an Empty File

```sh
touch cloudblitz.txt
```

* `touch cloudblitz.txt` → Creates an empty file named `cloudblitz.txt`

---

### Create a File and Add Content

```sh
cat > file1.txt
```

* Creates a new file named `file1.txt`
* Waits for user input
* Press `Ctrl + D` to save the file

Example:

```sh
cat > file1.txt
Hello Students
Welcome to Linux
Ctrl + D
```

---

## Important Symbols in Linux

* `>` → Overrides old content
* `>>` → Appends new content without deleting old content

Example:

```sh
echo "Welcome to CloudBlitz" > index.html
```

* Creates `index.html`
* Writes `Welcome to CloudBlitz` into the file

Append Example:

```sh
echo "Linux Commands" >> index.html
```

* Adds new content to existing file

---

## Display File Content

```sh
cat index.html
```

Example Output:

```sh
Welcome to CloudBlitz
Linux Commands
```

---

# Creating Directories

### Create a New Directory

```sh
mkdir Downloads
```

Another Example:

```sh
mkdir Documents
```

---

# Remove Files and Directories

```sh
rm -rvf Downloads
```

### Meaning of Options

* `r` → Recursive
* `v` → Verbose
* `f` → Forcefully remove

---

# Copy Files

### Copy One File to Another File

```sh
cp file1.txt cloudblitz.txt
```

---

# Move Files

### Move File to Another Directory

```sh
mv demo.txt Documents/
```

Another Example:

```sh
mv index.html Downloads/
```

---

# Rename Files

```sh
mv file1.txt cloudblitz.txt
```

* Renames `file1.txt` to `cloudblitz.txt`

---

