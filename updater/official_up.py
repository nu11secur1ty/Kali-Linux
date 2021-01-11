#!/usr/bin/python3
# Author @nu11secur1ty
import os
# Checking 
print("Checking what is for upgrade\n")
os.system('apt list -a --upgradable')
#
os.system('apt update -y')
os.system('apt upgrade -y')
os.system('apt dist-upgrade -y')
os.system('apt install -f -y')
os.system('dpkg --configure -a')
os.system('apt --fix-broken install -y')
os.system('apt --fix-missing install -y')
os.system('apt autoremove -y')
