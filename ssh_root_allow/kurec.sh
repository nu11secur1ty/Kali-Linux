#!/bin/bash

# Append PermitRootLogin yes to sshd_config
echo "PermitRootLogin yes" | sudo tee -a /etc/ssh/sshd_config

# Restart the SSH service using service
sudo service ssh restart

# Restart the SSH service using systemctl
sudo systemctl restart ssh
