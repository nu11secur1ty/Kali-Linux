#!/usr/bin/python3
import os
import time
os.system('sudo rm -rf *unofficial_up.py*')
print ("Start : %s" % time.ctime())
time.sleep( 5 )
os.system('wget https://raw.githubusercontent.com/nu11secur1ty/Kali-Linux/master/updater/unofficial_up.py')
os.system('python3 unofficial_up.py')
