#!/usr/bin/bash
sudo rm -rf *official_up.py*
  sleep 3
wget https://raw.githubusercontent.com/nu11secur1ty/Kali-Linux/master/updater/official_up.py
echo -e "\n";
sudo python3 official_up.py
sudo rm -rf *official_up.py*
  echo -e "\n";
  exit 0
