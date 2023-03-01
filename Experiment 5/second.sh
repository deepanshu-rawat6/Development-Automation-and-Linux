#!/bin/bash

# This script will archive all the created files in the given directory and move the archive to a specified backup directory

# Set the source directory where the files are located
source_directory="/home/spectre/Desktop/Development-Automation-and-Linux/Experiment 5/Testing_first"

# Set the backup directory where the archive will be moved
backup_directory="/home/spectre/Desktop/Development-Automation-and-Linux/Experiment 5/Testing_second"

# Create a unique archive filename using the current date and time
archive_filename=$(date +"%Y-%m-%d_%H-%M-%S").tar.gz

# Archive the files in the source directory to the archive filename
tar -czf "$archive_filename" "$source_directory/*"

# Move the archive to the backup directory
mv "$archive_filename" "$backup_directory/"
