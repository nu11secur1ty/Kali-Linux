#!/usr/bin/bash
git clone --depth=1 https://github.com/nu11secur1ty/Kali-Linux.git
cd Kali-Linux || exit 1
git sparse-checkout set Soof-SMS
git sparse-checkout set --no-cone Soof-SMS
exit 0;
