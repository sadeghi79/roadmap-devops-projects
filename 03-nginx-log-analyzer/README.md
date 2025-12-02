# Nginx Log Analyzer

This project is part of the DevOps Roadmap and helps practice log analysis and shell scripting using a sample Nginx access log file.

## Features

- Top 5 IP addresses with the most requests  
- Top 5 requested paths  
- Top 5 response status codes  
- Top 5 user agents  
- Pure Bash solution using `awk`, `sort`, `uniq`, and `head`  
- Compatible with standard Nginx `access.log` format  

---

## Usage

Run the script:

```bash
chmod +x analyze-nginx.sh
./analyze-nginx.sh access.log
```

---

## Example Output

```
Top 5 IP addresses with the most requests:
45.76.135.253 - 1000 requests
142.93.143.8 - 600 requests
178.128.94.113 - 50 requests
43.224.43.187 - 30 requests
178.128.94.113 - 20 requests
```

---

## Technologies Used

- Bash scripting  
- awk  
- sort  
- uniq  
- grep / sed (optional)

---

## Stretch Goals

Try adding:

- A version of the script **without using awk**  
- A version that outputs JSON  
- A version that filters requests by status code or HTTP method  

---

## Tags
#DevOps #Linux #Bash #Logs #Nginx #ShellScripting #Automation #Roadmap
