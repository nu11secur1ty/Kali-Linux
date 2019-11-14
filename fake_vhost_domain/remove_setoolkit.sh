#!/usr/bin/bash
# Author V.Varbanovski @nu11secur1ty
#
# Remove fake domain
	echo "Check the fake domain on which line is"
	cat -n /etc/hosts
    echo "Execute the command: sed -i '5d' /etc/hosts in your terminal to remove the fake domain it depends on which line number is"
	exit 0;
