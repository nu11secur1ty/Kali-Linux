#!/usr/bin/python
import os

os.system("dpkg --configure -a")
os.system("apt --fix-broken install")
os.system("apt update -y")
os.system("apt full-upgrade -y")
