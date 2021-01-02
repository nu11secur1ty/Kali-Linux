#!/usr/bin/bash
# Author @nu11secur1ty
apt update -y
apt install -f -y
apt --fix-broken install -y
apt --fix-missing install -y
apt autoremove -y
# Dist upgrade
apt dist-upgrade -y
apt -y full-upgrade -y
dpkg --configure -a
apt --fix-broken install -y
apt install -f -y
apt autoremove -y
apt full-upgrade -y
