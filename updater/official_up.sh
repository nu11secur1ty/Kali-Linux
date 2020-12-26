#!/usr/bin/bash
# Author @nu11secur1ty
sudo apt update -y
sudo apt install -f -y
sudo apt --fix-broken install -y
sudo apt --fix-missing install -y
sudo apt autoremove -y
# Dist upgrade
sudo apt dist-upgrade -y
sudo apt -y full-upgrade -y
sudo dpkg --configure -a
sudo apt --fix-broken install -y
sudo apt install -f -y
sudo apt autoremove -y
sudo apt full-upgrade -y
