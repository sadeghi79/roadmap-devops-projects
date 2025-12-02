# Log Archive Tool

A simple Bash CLI tool that compresses log files into `.tar.gz` format and stores them in a dedicated archive directory.  
This tool is designed as part of the **DevOps Roadmap practical projects** to practice file management, automation, and shell scripting.

## Features
- Accepts a log directory as input  
- Creates timestamped `.tar.gz` archives  
- Stores all archives inside the `archives/` folder  
- Logs every archive creation inside `archive.log`  
- Helps with cleaning up large log directories  

## Usage

Make script executable:

```bash
chmod +x log-archive.sh
```

Run the tool:

```bash
./log-archive.sh <log-directory>
```

Example:

```bash
sudo ./log-archive.sh /var/log
```

## Output Structure

```
archives/
  └── logs_archive_YYYYMMDD_HHMMSS.tar.gz

archive.log
```

## Purpose
This project helps you practice:
- Working with file compression (`tar`)  
- Log management in Linux  
- Timestamping and automation  
- Building Bash CLI tools  

## License
MIT License

---

## Tags
#DevOps #Linux #Bash #Logs #Automation #ShellScripting
