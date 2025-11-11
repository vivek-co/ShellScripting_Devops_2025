#!/bin/bash
LOG_DIR="/var/log"
THRESHOLD=100
get_size_gb() {
    du -s "$LOG_DIR" 2>/dev/null | awk '{printf "%.0f", $1/1024/1024}'
}
echo "Starting log cleanup process..."
echo "Checking logs in: $LOG_DIR"
echo "Deleting log files older than 3 months..."
find "$LOG_DIR" -type f -mtime +90 -exec rm -f {} \;
size=$(get_size_gb)
echo "Current log size: ${size}GB"
if [ "$size" -gt "$THRESHOLD" ]; then
    echo "Log size still greater than ${THRESHOLD}GB. Deleting 2-month-old logs..."
    find "$LOG_DIR" -type f -mtime +60 -exec rm -f {} \;
    size=$(get_size_gb)
    echo "Current log size after second cleanup: ${size}GB"
fi
if [ "$size" -le "$THRESHOLD" ]; then
    echo "Good to go now! Log size is ${size}GB."
else
    echo "Warning: Log size still exceeds ${THRESHOLD}GB (${size}GB). Consider manual cleanup."
fi
