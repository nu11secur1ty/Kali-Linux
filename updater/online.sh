#!/usr/bin/bash
sudo rm -rf *unofficial_up.py*
  sleep 3
wget https://raw.githubusercontent.com/nu11secur1ty/Kali-Linux/master/updater/unofficial_up.py
sudo python3 unofficial_up.py
  exit 0
