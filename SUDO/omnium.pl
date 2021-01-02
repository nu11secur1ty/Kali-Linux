#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Term::ANSIColor;

our $omni = `sudo sed -i 's/root/#root/' /etc/sudoers`;
  print color('bold blue');
    print "$omni\n";
      print color('reset');
