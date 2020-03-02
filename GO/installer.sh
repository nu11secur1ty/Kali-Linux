#!/usr/bin/bash
wget https://dl.google.com/go/go1.14.linux-amd64.tar.gz
  tar -C /usr/local -xzf go1.14.linux-amd64.tar.gz
    export PATH=$PATH:/usr/local/go/bin
    exit 0;
