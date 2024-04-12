#!/usr/bin/bash
# spoofinger by nu11secur1ty
git clone --depth=1 https://github.com/nu11secur1ty/Kali-Linux.git
cd Kali-Linux
git sparse-checkout set spoofinger
git sparse-checkout set --no-cone spoofinger

exit 0;
