#!/bin/bash

# --------------------------------------
# Nginx Access Log Analyzer (DevOps Roadmap Project)
# --------------------------------------

if [ $# -ne 1 ]; then
    echo "Usage: $0 <access-log-file>"
    exit 1
fi

LOGFILE="$1"

if [ ! -f "$LOGFILE" ]; then
    echo "Error: Log file '$LOGFILE' not found!"
    exit 1
fi

echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' "$LOGFILE" | sort | uniq -c | sort -nr | head -5
echo

echo "Top 5 most requested paths:"
awk '{print $7}' "$LOGFILE" | sort | uniq -c | sort -nr | head -5
echo

echo "Top 5 response status codes:"
awk '{print $9}' "$LOGFILE" | sort | uniq -c | sort -nr | head -5
echo

echo "Top 5 user agents:"
awk -F\" '{print $6}' "$LOGFILE" | sort | uniq -c | sort -nr | head -5
echo
