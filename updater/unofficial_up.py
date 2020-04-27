#!/usr/bin/python
# Author @nu11secur1ty
import os
os.system('sudo apt update -y')
os.system('sudo apt install -f -y')
os.system('sudo apt --fix-broken install -y')
os.system('sudo apt --fix-missing install -y')
os.system('sudo apt autoremove -y')
# Dist upgrade
os.system('sudo apt dist-upgrade -y')
os.system('sudo apt -y full-upgrade -y')
os.system('sudo dpkg --configure -a')
os.system('sudo apt --fix-broken install -y')
os.system('sudo apt install -f -y')
os.system('sudo apt autoremove -y')

question = input("If you need to re-login or reboot? Default is (N)y/n:")
if question == "y":
    start_over = os.system("telinit 6")
else:
    raise SystemExit

