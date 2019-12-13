#!/usr/bin/bash
# nu11secur1ty
apt install -y debhelper bison check cmake flex ghostscript libbsd-dev libcurl4-openssl-dev 
apt install -y libgeoip-dev libltdl-dev libluajit-5.1-dev libncurses5-dev libnet1-dev libpcap-dev
apt install -y libpcre3-dev libssl-dev libgtk-3-dev libgtk2.0-dev
################################################################
apt purge ettercap-common -y
      apt update -y
      apt autoremove -y
      apt install gcc -y
cd /opt/
rm -rf *ettercap*
wget https://github.com/Ettercap/ettercap/archive/v0.8.2.tar.gz
tar -xvf v0.8.2.tar.gz
cd ettercap-0.8.2
mkdir build
cd build
cmake ../
make && make install
