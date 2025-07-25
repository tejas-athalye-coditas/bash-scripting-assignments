# Linux Scripting Assignment-1

This contains scripting assisgnments covering various aspects of Linux shell scripting, including file management, permissions, system information, networking, loops, redirection & piping, user management

## Submission Guidelines

- All scripts have executable permissions (`chmod +x`).
- Each script is well-commented, explaining each command for clarity and educational purposes.

---

## Task List

### **Task 1: File and Directory Management**

**Script Name:** `file_management.sh`

Performs the following operations:
- Creates `test_dir` in the home directory.
- Navigates into `test_dir` and creates:
  - `file1.txt`
  - `file2.txt`
  - `file3.txt`
- Renames `file1.txt` to `renamed_file.txt`.
- Copies `renamed_file.txt` to `backup.txt`.
- Lists files in long format.
- Deletes `file2.txt`.
- Displays current working directory.
- Moves `file3.txt` to `/tmp`.
- Removes `test_dir` and its contents.

---

### **Task 2: File Permissions and Ownership**

**Script Name:** `permissions.sh`

Actions performed:
- Creates `secure.txt` with read & write permissions for owner only.
- Changes ownership to another user (if applicable).
- Lists file permissions.
- Attempts to change group ownership.
- Appends text to the file (if permitted).

---

### **Task 3: Searching and Finding Files**

**Script Name:** `file_search.sh`

Script capabilities:
- Searches for `test.log` in `/var/log/`.
- Counts occurrences of the word `error` (if file exists).
- Displays first and last 10 lines (if file exists).
- Uses `find` to locate files modified in the last 7 days.
- Uses `locate` to find all `.sh` scripts on the system.

---

### **Task 4: System Information Script**

**Script Name:** `sys_info.sh`

Displays:
- Hostname.
- System uptime.
- Memory usage (human-readable).
- Top 5 CPU-consuming processes.
- Disk usage of root (`/`).

---

### **Task 5: Networking Script**

**Script Name:** `network_info.sh`

Performs the following:
- Displays IP address.
- Checks connectivity to `google.com`.
- Lists all open ports.
- Displays network interface details.
- Uses `scp` to transfer `testfile.txt` to remote host.

---

### **Task 6: Process and Job Management**

**Script Name:** `process_manager.sh`

Includes:
- Lists all running processes.
- Starts a background process.
- Shows background jobs.
- Brings background process to foreground.
- Kills the process.

---

### **Task 7: File Compression and Backup**

**Script Name:** `backup.sh`

Backup operations:
- Creates `backup_dir`.
- Copies `/etc/passwd` and `/etc/group`.
- Creates a compressed archive.
- Extracts archive to `/tmp/restore_dir`.

---

### **Task 8: Automating User Management**

**Script Name:** `user_management.sh`

Performs:
- Creates a user: `testuser`.
- Adds to group: `testgroup`.
- Sets user password.
- Displays user details.
- Deletes the user.
- Deletes the group.

---

### **Task 9: Redirection and Piping**

**Script Name:** `redirection_demo.sh`

Workflow:
- Redirects `ls -l` output to `directory_list.txt`.
- Appends current date & time.
- Displays content to terminal.
- Uses `grep` to search word.
- Sorts content into `sorted_list.txt`.

---

### **Task 10: Scripting with Loops and Conditions**

**Script Name:** `loop_conditions.sh`

Demonstrates:
- Checks if a file exists.
- Uses `for` loop (1 to 10).
- Uses `while` loop (10 to 1).
- Uses `case` to handle user input (`start`, `stop`, `exit`).

---

