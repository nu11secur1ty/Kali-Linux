#!/usr/bin/bash
git clone --depth=1 https://github.com/nu11secur1ty/Kali-Linux.git
cd Kali-Linux
git sparse-checkout set SMSend-Anon-SMS-Sender
git sparse-checkout set --no-cone SMSend-Anon-SMS-Sender
exit 0;
