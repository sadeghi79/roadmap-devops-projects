# Roadmap DevOps Projects

This repository contains a collection of practical DevOps and Bash/Linux projects built while following the **DevOps Roadmap**.  
The goal of these projects is to improve skills in system administration, automation, shell scripting, monitoring, and working with real-world server environments.

Each project is placed in its own directory with a dedicated README and source files.

---

## Projects

### 1) Server Performance Stats  
A Bash-based monitoring tool that displays real-time server resource usage.

Features:
- CPU usage
- RAM usage
- Disk usage
- Top CPU-consuming processes
- Top memory-consuming processes

Folder:
```
01-server-performance-stats
```

---

### 2) Log Archive Tool  
A simple Bash tool that compresses logs into a `tar.gz` file and stores them in an archive directory.  
It also logs each archive creation with a timestamp.

Features:
- Accepts log directory as input
- Creates timestamped `.tar.gz` archives
- Saves them inside `archives/`
- Logs every operation into `archive.log`

Folder:
```
02-log-archive-tool
```

---

## Purpose of This Repository

This repository was created with the goal of:

- Building a DevOps-oriented portfolio  
- Practicing Linux system administration  
- Improving shell scripting skills  
- Learning log management and monitoring  
- Completing real-world tasks from the DevOps Roadmap  

---

## How to Use

To run any project:

```bash
cd PROJECT_FOLDER
chmod +x SCRIPT_NAME.sh
./SCRIPT_NAME.sh
```

Example:

```bash
cd 01-server-performance-stats
chmod +x server-stats.sh
./server-stats.sh
```

---

## Contribution

Feel free to submit issues or pull requests if you have ideas to improve or extend these tools.

---

## License  
MIT License

