#!/usr/bin/bash
cd /root/
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
apt install ./teamviewer_amd64.deb -y
rm -rf teamviewer_amd64.deb
sleep 5;

