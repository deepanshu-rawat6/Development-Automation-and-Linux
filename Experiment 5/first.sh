#!/bin/zsh

# Set the directory where the files should be created
directory="/home/spectre/Desktop/Development-Automation-and-Linux/Experiment 5/Testing_first"

# Create a unique filename using the current date and time
filename=$(date +"%Y-%m-%d_%H-%M-%S").txt

# Create the file in the specified directory
touch "$directory/$filename"
