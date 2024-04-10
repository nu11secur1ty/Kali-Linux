#!/bin/bash
echo "Installing necessary libraries..."
pip install requests stem

read -p "Do you want to configure or reconfigure the auth.txt file? (y/n) " user_input

if [[ $user_input == "y" || $user_input == "yes" ]]; then
    read -p "Enter your OpenVPN/VPN username: " vpn_username
    read -sp "Enter your VPN config password: " vpn_password
    echo

    echo "Updating auth.txt file..."
    > auth.txt
    echo "$vpn_username" > auth.txt
    echo "$vpn_password" >> auth.txt

    echo "auth.txt has been updated."
else
    echo "No changes made to auth.txt."
fi

echo "Running smsend.py..."
python smsend.py || { echo "Failed to run smsend.py"; exit 1; }

echo "Setup completed successfully."
