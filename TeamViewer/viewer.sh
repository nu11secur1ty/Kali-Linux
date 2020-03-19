#!/usr/bin/bash
rm -rf teamviewer_amd64.deb
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
apt install ./teamviewer_amd64.deb -y
  sleep 5;
    rm -rf teamviewer_amd64.deb
    sleep 3;
exit 0;
