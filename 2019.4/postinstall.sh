#!/usr/bin/bash
# Author nu11secut1ty

# removing the fucking keyring
curl -s https://raw.githubusercontent.com/nu11secur1ty/Kali-Linux/master/updater/official_up.py | python

# nu11secur1ty conky monitoring
curl -s https://raw.githubusercontent.com/nu11secur1ty/conky/master/conky.sh | bash
exit 0;
