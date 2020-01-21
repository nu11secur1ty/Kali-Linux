#!/usr/bin/bash
# author @nu11secur1ty 2020
sed 's/figlet.*//' .bashrc > uninstall_logo  
  cat /dev/null > .bashrc 
    cat uninstall_logo > .bashrc 
      sleep 3;
      rm uninstall_logo
  exit 0;
