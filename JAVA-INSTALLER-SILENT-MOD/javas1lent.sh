#!/usr/bin/bash
# @nu11secur1ty

apt install -y default-jre
apt install -y default-jdk
_SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS"
sleep 1
unset _JAVA_OPTIONS
sleep 1
alias='java "$_SILENT_JAVA_OPTIONS"'
        echo "Check Version..."
        sleep 3
        java -version
        javac -version
        exit 0;
