#!/bin/bash

while true
do
    clear

    CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print int($2 + $4)}')
    MEM=$(bash memory_monitor.sh)
    DISK=$(bash disk_monitor.sh)

    if pgrep -f "dummy_service.sh" > /dev/null
    then
        STATUS="RUNNING"
    else
        STATUS="DOWN"
    fi

    echo "====================================="
    echo " Linux Auto-Heal Monitoring Dashboard"
    echo "====================================="
    echo ""
    echo "CPU Usage      : $CPU%"
    echo "Memory Usage   : $MEM%"
    echo "Disk Usage     : $DISK%"
    echo "Service Status : $STATUS"
    echo "Last Check     : $(date)"
    echo ""
    echo "====================================="

    sleep 5
done
