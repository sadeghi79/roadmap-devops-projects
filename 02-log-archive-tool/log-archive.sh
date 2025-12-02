#!/bin/bash

# ---------------------------
# Log Archive Tool (CLI)
# ---------------------------

# Check arguments
if [ $# -ne 1 ]; then
    echo "Usage: $0 <log-directory>"
    exit 1
fi

LOG_DIR="$1"

# Validate directory
if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Directory '$LOG_DIR' does not exist!"
    exit 1
fi

# Create archive directory
ARCHIVE_DIR="./archives"
mkdir -p "$ARCHIVE_DIR"

# Create timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Output archive filename
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="${ARCHIVE_DIR}/${ARCHIVE_NAME}"

# Create compressed archive
tar -czf "$ARCHIVE_PATH" -C "$LOG_DIR" .

if [ $? -eq 0 ]; then
    echo "Logs successfully archived: $ARCHIVE_PATH"
else
    echo "Error compressing logs!"
    exit 1
fi

# Log archive history
echo "$(date +"%Y-%m-%d %H:%M:%S") - Created archive: ${ARCHIVE_NAME}" >> archive.log
