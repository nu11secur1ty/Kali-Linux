#!/usr/bin/bash
# Author V.Varbanovski @nu11secur1ty
#
#
# Prepare apache
cd /etc/
	echo "Type you IP"
	read IP
	echo "Type your fake domain"
	read fuck
		cat >> hosts << EOF
$IP $fuck
EOF
	exit 0;
