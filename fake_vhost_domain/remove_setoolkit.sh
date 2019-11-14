#!/usr/bin/bash
# Author V.Varbanovski @nu11secur1ty
#
# Remove fake domain
	echo "Check the fake domain on which line is"
	cat -n /etc/hosts
    echo "Execute the command in your terminal to remove the fake domain it depend on which line numer is\
    for example sed -i '5d' /etc/hosts"
	exit 0;
