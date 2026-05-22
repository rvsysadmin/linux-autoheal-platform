#!/bin/bash

LOG_DIR="/app/logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/system.log"

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print int($2 + $4)}')

echo "$(date) CPU Usage: $CPU_USAGE%" >> "$LOG_FILE"
echo "CPU Usage: $CPU_USAGE%"
