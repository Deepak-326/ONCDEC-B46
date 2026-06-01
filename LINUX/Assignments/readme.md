
---

🖥️ **Linux Practical Task – 🐧

👥 **User & Group Management**

1. Create users: **raju**, **sham**, **babubhaiya** and set passwords
2. Change UID of:

   * raju → **4002**
   * sham → **4003**
3. Create a group named **herapheri**
4. Set a password for the **herapheri** group
5. Add raju, sham, and babubhaiya to **herapheri**
6. Make **babubhaiya** the **admin (group owner)** of herapheri
7. Remove **sham** from the herapheri group

---
# File Permissions Tasks

Create the following users:

```bash
ACP_Pradyuman
Daya
Dr_Salunkhe
```

---

## Task 1 – Owner & Group 

Create a directory:

```bash
Case_505
```

Requirements:

* Create a group named `cid_team`
* Add `Daya` to the group
* Make `ACP_Pradyuman` the owner of `Case_505`
* Assign `cid_team` as the group owner

---

## Task 2 – File Permissions (chmod)

Create a file:

```bash
Case_505/evidence.txt
```

Requirements:

* ACP_Pradyuman → Read & Write
* Daya → Read Only
* Dr_Salunkhe → No Access

Verify your permissions.

---

## Task 3 – Special Access (setfacl)

Create a file:

```bash
Case_505/suspects.txt
```

Requirements:

* Owner should remain ACP_Pradyuman
* Give Daya Read & Write access
* Give Dr_Salunkhe Read-Only access

Verify using ACL commands.

---

---

📄 **Documentation & Submission Instructions (IMPORTANT)**

1. Create **step-by-step documentation** for **every task**
2. Mention:

   * Command used
   * Explanation of the command
   * Output (screenshot or text)
3. Create the document in **either**:

   * **Word (.docx)** **OR**
   * **PDF (.pdf)**
4. File name format:

   ```
   Linux_Task_<YourName>.pdf
   OR
   Linux_Task_<YourName>.docx
   ```

