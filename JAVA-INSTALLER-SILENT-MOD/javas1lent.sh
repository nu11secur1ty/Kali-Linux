#!/usr/bin/bash
# @nu11secur1ty

apt install -y default-jre
apt install -y default-jdk
apt install -y nodejs

_SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS"
jvs=_JAVA_OPTIONS
unset jvs

sleep 1
alias='java "$_SILENT_JAVA_OPTIONS"'
        echo "Check Versions..."
        sleep 3
        java -version
        echo "--------------"
        javac -version
        echo "--------------"
        node -v
        echo "--------------"
        exit 0;
