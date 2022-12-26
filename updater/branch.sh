#!/usr/bin/bash
# Main Branch
# kali-rolling
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee /etc/apt/sources.list
# kali-last-snapshot
echo "deb-src http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee /etc/apt/sources.list
