#!/bin/bash
# Author: nu11secur1ty
# Check if the script is running with root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run the script as root (sudo)."
  exit
fi
  echo "--- Starting /boot cleanup ---"
# 1. Remove configuration files of already removed kernels
echo "Removing residual configuration files..."
apt purge $(dpkg --list | grep '^rc' | awk '{print $2}') -y

# 2. Automatically remove unnecessary packages and old kernels
echo "Executing apt autoremove..."
apt autoremove --purge -y

# 3. Update the GRUB menu
echo "Updating GRUB..."
update-grub

# 4. Clear the apt cache
echo "Clearing apt cache..."
apt clean

echo "--- Cleanup completed successfully! ---"
df -h /boot | grep /boot
