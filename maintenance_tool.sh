#!/bin/bash

# Function to update the system
update_system() {
  echo "Updating the system..."
  sudo apt update && sudo apt upgrade -y
  echo "System updated."
}

# Function to clean up unnecessary files
clean_system() {
  echo "Cleaning up unnecessary files..."
  sudo apt autoremove -y
  sudo apt clean
  echo "System cleaned."
}

# Function to check disk usage
check_disk_usage() {
  echo "Checking disk usage..."
  df -h
}

# Main function to call all maintenance functions
perform_maintenance() {
  echo "System Maintenance Tool"
  echo "-----------------------"
  update_system
  clean_system
  check_disk_usage
  echo "Maintenance complete."
}

# Execute the main function
perform_maintenance
