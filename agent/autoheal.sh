#!/bin/bash

BASE_DIR=$(dirname "$(realpath "$0")")
LOG_FILE="$BASE_DIR/../logs/system.log"

SERVICE="dummy_service.sh"

if ! pgrep -f "$SERVICE" > /dev/null
then
    nohup "$BASE_DIR/../$SERVICE" > "$BASE_DIR/../logs/service.log" 2>&1 &

    echo "$(date) AUTO-HEAL: Restarted $SERVICE" >> "$LOG_FILE"

    echo "SERVICE STATUS: RESTARTED"
else
    echo "$(date) SERVICE OK: $SERVICE running" >> "$LOG_FILE"

    echo "SERVICE STATUS: RUNNING"
fi
