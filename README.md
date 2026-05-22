# Linux Auto-Heal Platform

A lightweight Linux monitoring and auto-healing platform built using Bash scripting.

## Features

- Continuous CPU monitoring
- Service health checks
- Automatic service recovery
- Logging system
- Linux process monitoring
- Self-healing architecture

## Architecture

Monitoring Agent
    ↓
Health Check
    ↓
Failure Detection
    ↓
Auto-Healing
    ↓
Logging

## Project Structure

linux-autoheal-platform/
│
├── agent/
│   ├── cpu_monitor.sh
│   ├── autoheal.sh
│   └── run.sh
│
├── logs/
│
├── dummy_service.sh
│
└── README.md

## Technologies Used

- Linux
- Bash Scripting
- Process Management
- Linux Monitoring
- Automation

## How It Works

1. Monitoring loop runs every 10 seconds
2. CPU health is checked
3. Service status is verified
4. If service is down:
   - Auto-restart is triggered
   - Event is logged

## Run Project

```bash
chmod +x agent/*.sh
nohup ./dummy_service.sh &
./agent/run.sh
