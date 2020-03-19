#!/usr/bin/bash
cd /root/
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
apt install ./teamviewer_amd64.deb -y
sleep 5
rm -rf *teamviewer*
sleep 5;
  exit 0;

