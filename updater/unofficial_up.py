#!/usr/bin/python
# Author @nu11secur1ty
import os
os.system('apt update -y')
os.system('apt install -f -y')
os.system('apt --fix-broken install -y')
os.system('apt --fix-missing install -y')
os.system('apt autoremove -y')
# Dist upgrade
os.system('apt dist-upgrade -y')
os.system('apt -y full-upgrade -y')
os.system('dpkg --configure -a')
os.system('apt --fix-broken install -y')
os.system('apt install -f -y')
os.system('apt autoremove -y')

question = input("If you neet to relogin or reboot? y/n: ")
start_over = "action"
if question == "y":
    start_over = os.system("telinit 6")
    print(start_over)
else:
    raise SystemExit

