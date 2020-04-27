#!/usr/bin/bash
sudo rm -rf *unofficial_up.py*
  sleep 3
wget https://raw.githubusercontent.com/nu11secur1ty/Kali-Linux/master/updater/unofficial_up.py
echo -e "\n";
sudo python3 unofficial_up.py
  echo -e "\n";
  exit 0
