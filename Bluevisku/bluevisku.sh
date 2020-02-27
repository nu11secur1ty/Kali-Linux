#!/usr/bin/bash
# Author @nu11secur1ty 2020 Kali Linux 2020.x
echo -e "\e[1;93mType bluevisku.sh scan, or for help just press ENTER\e[00m"
        sleep 3
systemctl enable bluetooth.service 
systemctl start bluetooth.service
        sleep 1;

        echo -e "\e[1;94m Your interface device is \e[00m"
        hciconfig

#hcitool 
#echo "Total Arguments:" $#
#echo "All Arguments values:" $@
 
# You can also access all arguments in an array and use them in a script.
        echo -e "\e[1;43m Your target list \e[00m"
args=("$@")
        hcitool ${args[0]}
        printf "\n"
                echo -e "\e[1;73m-------------------------------------------------\e[00m"
                echo -e "\e[1;45m Stop the BLUETOOTH service \e[00m"
        sleep 1;
                systemctl stop bluetooth.service
                systemctl disable bluetooth.service
        exit 0;
