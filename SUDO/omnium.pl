#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Term::ANSIColor;

print color('bold red');
print "Change your root password for su\n";
our $pass_change = `sudo passwd root`;
  print color('reset');

print color('bold red');
print "Protect root from sudo\n";
  print color('reset');
  
our $omni = `sudo sed -i 's/root/#root/' /etc/sudoers`;
print color('bold blue');
  print "Done;";
  print color('reset');