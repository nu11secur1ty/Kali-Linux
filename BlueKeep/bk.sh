#!/usr/bin/bash
cd /opt
git clone https://github.com/rapid7/metasploit-framework.git
cd metasploit-framework
git fetch origin pull/12283/head:bluekeep
git checkout bluekeep
gem install bundler && bundle

