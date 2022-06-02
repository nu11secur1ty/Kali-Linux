#!/usr/bin/python3
# Author @nu11secur1ty
import os
os.system('apt update -y')
os.system('apt install -f -y')
os.system('apt --fix-broken install -y')
os.system('apt --fix-missing install -y')
os.system('apt full-upgrade -y')
os.system('apt autoremove -y')
# Dist upgrade
os.system('apt dist-upgrade -y')
os.system('apt -y full-upgrade -y')
os.system('dpkg --configure -a')
os.system('apt --fix-broken install -y')
os.system('apt install -f -y')
os.system('apt autoremove -y')
