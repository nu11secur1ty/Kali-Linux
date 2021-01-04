#!/usr/bin/bash

apt purge libtss2-esys-3.0.2-0 libtss2-mu0 libtss2-sys1 -y
  rm -rf /var/lib/fwupd
  rm -rf /var/cache/app-info
apt install -y network-manager-openvpn-gnome
apt install -y network-manager-vpnc-gnome
apt install -y network-manager-openconnect-gnome


exit 0;
