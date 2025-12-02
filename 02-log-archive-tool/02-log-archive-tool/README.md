# Log Archive Tool

A simple Bash-based CLI tool that compresses log files into a `.tar.gz` archive and stores them inside a dedicated `archives/` folder.  
This project is part of the **DevOps Roadmap practical exercises**, designed to improve Linux file management and shell scripting skills.

---

## Features

- Accepts a log directory as an input argument  
- Creates timestamped `.tar.gz` archives  
- Stores all archives under `archives/`  
- Automatically logs each archive creation inside `archive.log`  
- Helps reduce log directory size and organize logs efficiently  

---

## How It Works

```bash
./log-archive.sh <log-directory>
```

Example:

```bash
sudo ./log-archive.sh /var/log
```

The script will:

1. Create a timestamp such as `20251202_153021`  
2. Build a compressed archive named:  
   ```
   logs_archive_20251202_153021.tar.gz
   ```
3. Store the archive inside the `archives/` directory  
4. Log the operation inside `archive.log`

---

## Folder Structure

```
02-log-archive-tool/
│
├── log-archive.sh
├── archive.log
└── archives/
    └── (generated .tar.gz files)
```

---

## Requirements

This tool works on any Unix-like system with:

- `bash`
- `tar`
- `date` utility
- Write permission to the selected folder

---

## Make the Script Executable

```bash
chmod +x log-archive.sh
```

---

## Why This Project?

This project helps beginners practice:

- Bash scripting  
- Tar compression (`tar -czf`)  
- Handling arguments in scripts  
- Writing small CLI automation tools  
- Organizing logs for system administration  

---

## License
MIT License

---

## Tags
#DevOps #Linux #Bash #Automation #Logging #ShellScripting #Roadmap
