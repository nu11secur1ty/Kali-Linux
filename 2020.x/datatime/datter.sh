#!/usr/bin/bash

echo "--- Performing upgrade ---"
sudo apt update -y
sudo apt upgrade -y
echo "---- Setting Timezone----"
echo "For example: Europe/Sofia"
# Europe/Sofia
read zone
sudo timedatectl set-timezone $zone
date
