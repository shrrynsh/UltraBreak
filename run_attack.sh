#!/bin/bash

# Activate your environment if necessary
cd ~/UltraBreak

# Log file with timestamp
LOG_FILE="logs/run_attack_$(date +%Y%m%d_%H%M%S).log"
mkdir -p logs

# Redirect all stdout and stderr to both terminal and log file
exec > >(tee -a "$LOG_FILE") 2>&1

echo "===== Attack run started at $(date) ====="
echo "Logging to: $LOG_FILE"
echo ""

# Run your python script
python evaluation/attack.py --model_name "THUDM/GLM-4.1V-9B-Thinking" --attack_config "safebench_jailbroken_mode_1300"