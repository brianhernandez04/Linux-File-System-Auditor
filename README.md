# Linux File System Auditor

A bash script that scans test directory for dangerous file permissions, identifies who owns each file, and generates a clean audit report. Portfolio project to demonstrate fundamental system administration and security auditing skills.

---

## What It Does

- Scans for world-writable files (dangerous permissions)
- Scans for world-executable files (review worthy)
- Lists full permissions and ownership of every file in the target directory
- Generates a timestamped report called `Audit_Report.txt` on every run

---

## Why This Matters

In a server environment, files with incorrect permissions are a security risk. Any user on the system could modify, delete, or execute files (admin access) they should NOT have access to. This script automates the process of catching those issues.

---

## Skills Demonstrated

- Bash scripting
- Linux file permissions and ownership
- File scanning with `find` and permission flags
- Directory listing and analysis with `ls`
- Redirecting output to generate reports
- `chmod` for setting and testing permissions

---

## How To Run

**Clone the repo and navigate into folder:**
```bash
git clone https://github.com/brianhernandez04/linux-file-system-auditor.git
cd linux-file-system-auditor
```

**Make the script executable:**
```bash
chmod +x file_auditor.sh
```

**Run it:**
```bash
./file_auditor.sh
```

**View the generated report:**
```bash
cat Audit_Report.txt
```

---

## Example Output

<img width="1377" height="597" alt="linuxproject2" src="https://github.com/user-attachments/assets/9b876cb7-62ce-45c0-955f-fe4feaa5c321" />

---

## Environment

- OS: Ubuntu (WSL2 on Windows 11)
- Shell: Bash

---

<h2>🤳 Connect with me on LinkedIn:</h2>

[<img align="left" alt="BrianHernandez | LinkedIn" width="22px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/linkedin.svg" />][linkedin]

[linkedin]: https://www.linkedin.com/in/brian-hernandez04/
