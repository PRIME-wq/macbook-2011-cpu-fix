#!/bin/bash
# Script to unlock CPU throttling on 2011 MacBook Pro
# Load MSR module
sudo modprobe msr
# Flip the BD PROCHOT bit to unlock frequency
sudo wrmsr 0x1fc 2
echo "CPU Unlocked! Check lscpu for 3300MHz."
