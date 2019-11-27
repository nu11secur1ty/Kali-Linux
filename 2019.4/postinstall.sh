#!/usr/bin/bash
# remove bullshits

# removing the fucking keyring
curl -s https://raw.githubusercontent.com/nu11secur1ty/Kali-Linux/master/updater/official_up.py | python
apt purge gnome-keyring

# nu11secur1ty conky monitoring
curl -s https://raw.githubusercontent.com/nu11secur1ty/conky/master/conky.sh | bash
exit 0;
