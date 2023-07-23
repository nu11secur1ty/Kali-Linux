#!/usr/bin/python
# @nu11secur1ty 2023
# https://www.nu11secur1ty.com/
import os

os.system("dpkg --configure -a")
os.system("apt --fix-broken install -y")
os.system("apt update -y")
os.system("apt full-upgrade -y")
os.system(apt --fix-broken install -y)
os.system("apt autoremove -y")
