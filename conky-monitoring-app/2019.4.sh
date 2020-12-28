#!/bin/bash
# nu11secur1ty - http://nu11secur1ty.blogspot.com/
# Taken from: https://github.com/nu11secur1ty/conky/blob/master/conky.sh
# 2016-2019

# Up
curl -s https://raw.githubusercontent.com/nu11secur1ty/Kali-Linux/master/updater/official_up.py | python3


##### Installing conky ~ gui desktop monitor
echo -e "\n\e[01;32m[+]\e[00m Installing conky"
apt -qq install conky -y 
#apt install conky -y
#--- Configure conky
file=/root/.conkyrc; [ -e $file ] && cp -n $file{,.bkup}
echo -e '#http://forums.opensuse.org/english/get-technical-help-here/how-faq-forums/unreviewed-how-faq/464737-easy-configuring-conky-conkyconf.html\nbackground yes\n\nfont Monospace:size=8:weight=bold\nuse_xft yes\n\nupdate_interval 2.0\n\nown_window yes\nown_window_type normal\nown_window_transparent yes\nown_window_class conky-semi\nown_window_argb_visual yes  # GNOME & XFCE yes, KDE no\n#own_window_colour brown\nown_window_hints undecorated,below,sticky,skip_taskbar,skip_pager\n\ndouble_buffer yes\nmaximum_width 260\n\ndraw_shades yes\ndraw_outline no\ndraw_borders no\n\nstippled_borders 3\n#border_margin 9   # Old command\nborder_inner_margin 9\nborder_width 10\n\ndefault_color grey\n\nalignment bottom_right\n#gap_x 55 # KDE\n#gap_x 0  # GNOME\ngap_x 5\ngap_y 0\n\nuppercase no\nuse_spacer right\n\nTEXT\n${color dodgerblue3}SYSTEM ${hr 2}$color\n#${color white}${time %A},${time %e} ${time %B} ${time %G}${alignr}${time %H:%M:%S}\n${color white}Host$color: $nodename  ${alignr}${color white}Uptime$color: $uptime\n\n${color dodgerblue3}CPU ${hr 2}$color\n#${font Arial:bold:size=8}${execi 99999 grep "model name" -m1 /proc/cpuinfo | cut -d":" -f2 | cut -d" " -f2- | sed "s#Processor ##"}$font$color\n${color white}MHz$color: ${freq} ${alignr}${color white}Load$color: ${exec uptime | awk -F "load average: " '"'"'{print $2}'"'"'}\n${color white}Tasks$color: $running_processes/$processes ${alignr}${color white}CPU0$color: ${cpu cpu0}% ${color white}CPU1$color: ${cpu cpu1}%\n#${color #c0ff3e}${acpitemp}C\n#${execi 20 sensors |grep "Core0 Temp" | cut -d" " -f4}$font$color${alignr}${freq_g 2} ${execi 20 sensors |grep "Core1 Temp" | cut -d" " -f4}\n${cpugraph cpu0 25,120 000000 white} ${alignr}${cpugraph cpu1 25,120 000000 white}\n${color white}${cpubar cpu1 3,120} ${alignr}${color white}${cpubar cpu2 3,120}$color\n\n${color dodgerblue3}PROCESSES ${hr 2}$color\n${color white}NAME             PID     CPU     MEM\n${color white}${top name 1}${top pid 1}  ${top cpu 1}  ${top mem 1}$color\n${top name 2}${top pid 2}  ${top cpu 2}  ${top mem 2}\n${top name 3}${top pid 3}  ${top cpu 3}  ${top mem 3}\n${top name 4}${top pid 4}  ${top cpu 4}  ${top mem 4}\n${top name 5}${top pid 5}  ${top cpu 5}  ${top mem 5}\n\n${color dodgerblue3}MEMORY & SWAP ${hr 2}$color\n${color white}RAM$color   $memperc%  ${membar 6}$color\n${color white}Swap$color  $swapperc%  ${swapbar 6}$color\n\n${color dodgerblue3}FILESYSTEM ${hr 2}$color\n${color white}root$color ${fs_free_perc /}% free${alignr}${fs_free /}/ ${fs_size /}\n${fs_bar 3 /}$color\n#${color white}home$color ${fs_free_perc /home}% free${alignr}${fs_free /home}/ ${fs_size /home}\n#${fs_bar 3 /home}$color\n\n${color dodgerblue3}LAN eth0 (${addr eth0}) ${hr 2}$color\n${color white}Down$color:  ${downspeed eth0} KB/s${alignr}${color white}Up$color: ${upspeed eth0} KB/s\n${color white}Downloaded$color: ${totaldown eth0} ${alignr}${color white}Uploaded$color: ${totalup eth0}\n${downspeedgraph eth0 25,120 000000 00ff00} ${alignr}${upspeedgraph eth0 25,120 000000 ff0000}$color' > $file
ifconfig eth1 &>/devnull && echo -e '${color dodgerblue3}LAN eth1 (${addr eth1}) ${hr 2}$color\n${color white}Down$color:  ${downspeed eth1} KB/s${alignr}${color white}Up$color: ${upspeed eth1} KB/s\n${color white}Downloaded$color: ${totaldown eth1} ${alignr}${color white}Uploaded$color: ${totalup eth1}\n${downspeedgraph eth1 25,120 000000 00ff00} ${alignr}${upspeedgraph eth1 25,120 000000 ff0000}$color' >> $file
echo -e '${color dodgerblue3}WiFi (${addr wlan0}) ${hr 2}$color\n${color white}Down$color:  ${downspeed wlan0} KB/s${alignr}${color white}Up$color: ${upspeed wlan0} KB/s\n${color white}Downloaded$color: ${totaldown wlan0} ${alignr}${color white}Uploaded$color: ${totalup wlan0}\n${downspeedgraph wlan0 25,120 000000 00ff00} ${alignr}${upspeedgraph wlan0 25,120 000000 ff0000}$color\n\n${color dodgerblue3}CONNECTIONS ${hr 2}$color\n${color white}Inbound: $color${tcp_portmon 1 32767 count}  ${alignc}${color white}Outbound: $color${tcp_portmon 32768 61000 count}${alignr}${color white}Total: $color${tcp_portmon 1 65535 count}\n${color white}Inbound ${alignr}Local Service/Port$color\n$color ${tcp_portmon 1 32767 rhost 0} ${alignr}${tcp_portmon 1 32767 lservice 0}\n$color ${tcp_portmon 1 32767 rhost 1} ${alignr}${tcp_portmon 1 32767 lservice 1}\n$color ${tcp_portmon 1 32767 rhost 2} ${alignr}${tcp_portmon 1 32767 lservice 2}\n${color white}Outbound ${alignr}Remote Service/Port$color\n$color ${tcp_portmon 32768 61000 rhost 0} ${alignr}${tcp_portmon 32768 61000 rservice 0}\n$color ${tcp_portmon 32768 61000 rhost 1} ${alignr}${tcp_portmon 32768 61000 rservice 1}\n$color ${tcp_portmon 32768 61000 rhost 2} ${alignr}${tcp_portmon 32768 61000 rservice 2}' >> $file
#--- Add to startup (each login)
file=/usr/local/bin/conky.sh; [ -e $file ] && cp -n $file{,.bkup}
echo -e '#!/bin/bash\ntimeout 10 killall -q conky\nsleep 15\nconky &' > $file
chmod 0500 $file
mkdir -p /root/.config/autostart/
file=/root/.config/autostart/conkyscript.sh.desktop; [ -e $file ] && cp -n $file{,.bkup}
echo -e '\n[Desktop Entry]\nType=Application\nExec=/usr/local/bin/conky.sh\nHidden=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true\nName[en_US]=conky\nName=conky\nComment[en_US]=\nComment=' > $file

if [ -e /root/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml ]; then
  #--- Create Conky refresh script (it gets installed later)
  file=/usr/local/bin/conky_refresh.sh; [ -e $file ] && cp -n $file{,.bkup}
  echo -e '#!/bin/bash\ntimeout 5 killall -9 -q -w conky\nconky &' > $file
  chmod 0500 $file
  #--- Add keyboard shortcut (ctrl + r) to run the conky refresh script
  file=/root/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml   #; [ -e $file ] && cp -n $file{,.bkup}
  grep -q '<property name="&lt;Primary&gt;r" type="string" value="/usr/local/bin/conky_refresh.sh"/>' $file || sed -i 's#<property name="\&lt;Alt\&gt;F2" type="string" value="xfrun4"/>#<property name="\&lt;Alt\&gt;F2" type="string" value="xfrun4"/>\n      <property name="\&lt;Primary\&gt;r" type="string" value="/usr/local/bin/conky_refresh.sh"/>#' $file
fi

echo -e '\n\e[01;32m[+]\e[00m Done!\n'
