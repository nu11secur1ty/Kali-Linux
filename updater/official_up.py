#!/usr/bin/python3
# Author @nu11secur1ty
import os
os.system('sudo apt update -y')
os.system('sudo apt install -f -y')
os.system('sudo apt --fix-broken install -y')
os.system('sudo apt --fix-missing install -y')
os.system('sudo apt autoremove -y')
