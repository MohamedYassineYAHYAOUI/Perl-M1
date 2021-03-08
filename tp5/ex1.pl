#!/usr/bin/perl

use strict;
use warnings;
use POSIX qw(strftime);

my $str = strftime('%A, %d %B %Y', 0, 0, 0, 14, 8, 97);
print $str."\n";