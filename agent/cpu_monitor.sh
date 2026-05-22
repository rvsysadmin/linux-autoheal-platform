#!/bin/bash

BASE_DIR=$(dirname "$(realpath "$0")")
LOG_FILE="$BASE_DIR/../logs/system.log"

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

TIMESTAMP=$(date)

echo "$TIMESTAMP CPU Usage: $CPU_USAGE%" >> "$LOG_FILE"

echo "CPU Usage: $CPU_USAGE%"
