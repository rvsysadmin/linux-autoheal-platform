#!/bin/bash

DISK_USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

echo "$DISK_USAGE"
