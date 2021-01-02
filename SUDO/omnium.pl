#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Term::ANSIColor;

print color('bold red');
print "Protect root from sudo\n";
  print color('reset');
  
my $omni_root = `sudo sed -i 's/root/#root/' /etc/sudoers`;
my $omni_sudo = `sudo sed -i 's/%sudo/#%sudo/' /etc/sudoers`;
print color('bold blue');
  print "Done;";
  print color('reset');
