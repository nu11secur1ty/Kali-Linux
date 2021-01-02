#!/usr/bin/python3
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

# Offline mode
question = input("If you need to re-login or reboot? Default is (N)y/n:")
os.system('echo')
if question == "y":
    start_over = os.system("telinit 6")
else:
    raise SystemExit
