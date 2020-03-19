#!/usr/bin/bash
cd /root/
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
apt install ./teamviewer_amd64.deb -y
sleep 5
rm -rf *teamviewer_amd64.deb*
sleep 5;
  exit 0;

