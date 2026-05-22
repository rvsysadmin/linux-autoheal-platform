#!/bin/bash

BASE_DIR=$(dirname "$(realpath "$0")")
LOG_DIR="/app/logs"
mkdir -p "$LOG_DIR"

echo "Starting Linux Auto-Heal Monitor..."

while true
do
    echo "-----------------------------------"
    echo "Running checks at: $(date)"

    bash "$BASE_DIR/cpu_monitor.sh"
    bash "$BASE_DIR/autoheal.sh"

    sleep 10
done
