#!/usr/bin/perl

use strict;
use warnings;
use POSIX qw(strftime);



my ($uid, $time) = (stat($ENV{HOME}))[4,9];


my @lst = getpwuid($uid);

print $lst[0]."\n";
print strftime('%Y/%m/%d %H:%M:%S' , localtime($time))."\n";