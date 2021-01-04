#!/usr/bin/bash
apt purge -y google-chrome-stable
echo "Give your username"
read user
cd /home/$user/.config
rm -rf google-chrome*
rm -rf /usr/bin/google*
  exit 0
