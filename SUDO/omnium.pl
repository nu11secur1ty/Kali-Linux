#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Term::ANSIColor;

print color('bold red');
print "Change your root password for su\n";
my $pass_change = `wget https://raw.githubusercontent.com/nu11secur1ty/Kali-Linux/master/SUDO/pass.pl`;
my $exec = `perl pass.pl`;
  print color('reset');

print color('bold red');
print "Protect root from sudo\n";
  print color('reset');
  
my $omni = `sudo sed -i 's/root/#root/' /etc/sudoers`;
print color('bold blue');
  print "Done;";
  print color('reset');
