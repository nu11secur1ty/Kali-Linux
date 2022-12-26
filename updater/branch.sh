#!/usr/bin/bash
# Main Branch
# kali-rolling
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" | sudo tee /etc/apt/sources.list
# kali-last-snapshot
echo "deb http://http.kali.org/kali kali-last-snapshot main contrib non-free" | sudo tee /etc/apt/sources.list
