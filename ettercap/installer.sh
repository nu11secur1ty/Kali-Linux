#!/usr/bin/bash
# nu11secur1ty 1.01.2020.4
# 
apt update -y
################################################################
apt install -y debhelper bison check cmake flex ghostscript libbsd-dev libcurl4-openssl-dev 
apt install -y libgeoip-dev libltdl-dev libluajit-5.1-dev libncurses5-dev libnet1-dev libpcap-dev
apt install -y libpcre3-dev libssl-dev libgtk-3-dev libgtk2.0-dev
################################################################
rm -rf /usr/local/lib/etter*
rm -rf /usr/bin/ettercap*
# Remove old ettercap "libettercap" 
apt remove ettercap-common ettercap-graphical -y
rm -rf /usr/local/bin/ettercap*
rm -rf /etc/ettercap

apt update -y
apt autoremove -y
apt install gcc -y

cd /opt/
      rm -rf *ettercap*

# nu11secur1ty fork source
# git clone https://github.com/nu11secur1ty/ettercap.git

# Original source
git clone https://github.com/Ettercap/ettercap.git

cd ettercap
      mkdir build
      cd build
            cmake ../
      make && make install
ln -s /usr/local/bin/ettercap /usr/bin/ettercap-nu11secur1ty
  
# If the build fails because you're missing a dependency:
# (Install any missing dependencies.)
# make clean-all
# cmake ../
# make
# make install


#### Bundled libraries
# Ettercap now bundles the following libraries with the source distribution:
#  libnet 1.1.6
# curl 7.44.0
#  luajit 2.0.4
#  check 0.10.0


# We will build bundled libraries that Ettercap depends upon, so you 
# don't have to! 

# By default, the build system will search for system-provided libraries. If it 
# doesn't find the particular library it wants, it will build the library, itself.

# To disable the use of bundled libraries:
# $ cmake -DBUNDLED_LIBS=Off ../

# To disable the searching for system-provided libraries, and use 
# bundled libraries exclusively:
# $ cmake -DSYSTEM_LIBS=Off ../
exit 0;
