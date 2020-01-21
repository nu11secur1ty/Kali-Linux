#!/usr/bin/bash
sed 's/figlet.*//' .bashrc > uninstall_logo && cat uninstall_logo >> .bashrc && rm uninstall_logo
  exit 0;
