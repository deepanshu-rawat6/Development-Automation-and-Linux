#!/bin/bash

# This script will automatically delete the archive files in the backup archive that are older than 30 minutes

# Set the backup directory where the archive files are located
backup_directory="/home/spectre/Desktop/Development-Automation-and-Linux/Experiment 5/Testing_second"

# Find all the archive files that are older than 30 minutes
old_files=$(find "$backup_directory" -type f -mmin +30)

# Delete the old archive files
if [ -n "$old_files" ]; then
    rm "$old_files"
fi
