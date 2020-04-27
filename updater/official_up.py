#!/usr/bin/python
# Author @nu11secur1ty
import os
os.system('sudo apt update -y')
os.system('sudo apt install -f -y')
os.system('sudo apt autoremove -y')
os.system('sudo dpkg --configure -a')
os.system('sudo apt --fix-broken install -y')
