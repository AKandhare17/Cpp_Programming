# 🗂️ Customised Virtual File System (CVFS)

A custom implementation of a Virtual File System built in C++ that simulates core Linux file system concepts. Features its own interactive shell for file operations and implements OS-level data structures — Inode Table, File Table, and User File Descriptor Table — entirely from scratch.

Built as part of MCA coursework to gain hands-on understanding of operating system internals, system calls, and low-level memory management.

---

## 🏗️ Architecture

CVFS implements the same three-level structure used by the Linux kernel:

```
Process
   └── UAREA
         └── UFDT (User File Descriptor Table)
               └── File Table  (Read Offset, Write Offset, Mode)
                     └── Inode (File Name, Size, Permission, Buffer)
```

### Data Structures

| Structure | Purpose |
|---|---|
| **Boot Block** | Marks start of the virtual file system |
| **Super Block** | Tracks TotalInodes and FreeInodes count |
| **DILB** | Disk Inode List Block — linked list of all inodes |
| **Inode** | Stores file metadata and actual file content |
| **File Table** | Maintains separate ReadOffset and WriteOffset per open file |
| **UAREA** | Per-process User Area containing the File Descriptor Table |
| **UFDT** | User File Descriptor Table — maps file descriptors to File Table entries |

---

## ⚙️ Supported Commands

| Command | Syntax | Description |
|---|---|---|
| `creat` | `creat <filename> <permission>` | Create a new file |
| `write` | `write <fd> <data>` | Write data to a file |
| `read` | `read <fd> <size>` | Read data from a file |
| `unlink` | `unlink <filename>` | Delete a file |
| `stat` | `stat <filename>` | Display file metadata |
| `ls` | `ls` | List all files |
| `man` | `man <command>` | Show manual for a command |
| `help` | `help` | Show all available commands |
| `echo` | `echo <text>` | Print text to console |
| `uname` | `uname` | Display system information |
| `clear` | `clear` | Clear the terminal |
| `EXIT` | `EXIT` | Save backup and exit |

---

## 🔐 Permission System

Follows Unix-style permission bitmask:

| Value | Permission |
|---|---|
| 1 | Read only |
| 2 | Write only |
| 3 | Read + Write |
| 4 | Execute |

Example:
```
CVFS$ creat notes.txt 2      → creates notes.txt with write permission
CVFS$ creat data.txt 1       → creates data.txt with read permission
CVFS$ creat log.txt 3        → creates log.txt with read and write permission
```

---

## 💾 Backup System

On every `EXIT`, CVFS automatically saves the complete file system state to a timestamped binary backup file using POSIX `write()` syscalls.

```
EXIT → cvfs_backup_1718123456.dat
```

**What gets saved:**
- FreeInodes count
- All inode metadata — file name, type, size, permissions, reference count
- Actual file content for every inode

**Backup file naming:**  
Each session creates a unique backup file using Unix timestamp — no two backups ever overwrite each other.

```
backup/cvfs_backup_1718123456.dat   ← session 1
backup/cvfs_backup_1718189012.dat   ← session 2
backup/cvfs_backup_1718201234.dat   ← session 3
```

---

## ❌ Error Handling

CVFS defines 8 distinct error codes:

| Error | Meaning |
|---|---|
| `ERR_INVALID_PARAMETER` | Wrong input provided |
| `ERR_NO_INODES` | No free inodes available |
| `ERR_FILE_ALREADY_EXIST` | File with that name exists |
| `ERR_FILE_NOT_EXIST` | File not found |
| `ERR_PERMISSION_DENIDED` | Operation not allowed |
| `ERR_INSUFFICIENTSPACE` | Not enough space in buffer |
| `ERR_INSUFFICIENTDATA` | Not enough data to read |
| `ERR_MAX_FILES_OPEN` | File descriptor table is full |

---

## 🚀 How to Run

### Prerequisites
- GCC / G++ compiler
- Linux or any Unix-based system

### Compile

```bash
g++ CVFS_Project.cpp -o cvfs
```

### Run

```bash
./cvfs
```

### Example Session

```
Welcome to CVFS
CVFS$ creat notes.txt 3
File Created Successfully. File Descriptor : 3

CVFS$ write 3 Hello World
Data Written Successfully.

CVFS$ read 3 11
Hello World

CVFS$ stat notes.txt
File Name       : notes.txt
Inode Number    : 1
File Size       : 50
Actual Size     : 11
File Type       : 1
Permission      : 3
Reference Count : 1

CVFS$ ls
notes.txt

CVFS$ unlink notes.txt
File Deleted Successfully.

CVFS$ EXIT
Backup Saved : backup/cvfs_backup_1718123456.dat
Thank You For Using Project CVFS..
```

---

## 📁 Project Structure

```
CVFS/
├── src/
│   └── CVFS_Project.cpp
├── README.md
└── LICENSE
```

---

## ⚠️ Current Limitations

- Maximum 5 files (`MAXINODE = 5`)
- Maximum 50 bytes per file (`MAXFILESIZE = 50`)
- Only one process supported at a time
- No directory support
- `open`, `close`, `lseek` not implemented
- Backup restore (`loadState`) not implemented — planned improvement
- Data stored in RAM — backup file is the only persistence mechanism

---

## 🚀 Planned Improvements

- [ ] Implement `loadState()` to restore from backup on startup
- [ ] Implement `open` and `close` system calls
- [ ] Implement `lseek` for random file access
- [ ] Add directory support (`mkdir`, `cd`)
- [ ] Increase `MAXINODE` and `MAXFILESIZE` limits
- [ ] Add timestamp fields to inode (created, modified, accessed)

---

## 🛠️ Tech Stack

| Component | Detail |
|---|---|
| Language | C++ |
| System Calls | POSIX (`write`, `read`, `open`, `close`) |
| Memory Management | `malloc`, `free` |
| Shell | Custom command interpreter using `sscanf` |
| Platform | Linux / Unix |

---

## 📄 License

MIT License — see [LICENSE](LICENSE) for details.