#!/usr/bin/bash
# @nu11secur1ty 2023
mkdir -p skype
cd skype
wget https://repo.skype.com/latest/skypeforlinux-64.deb
sudo dpkg -i skypeforlinux-64.deb
sleep 3
cd ..
rm -rf skype 
