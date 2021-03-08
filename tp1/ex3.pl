#!/usr/bin/perl

use strict;
use warnings;


sub SommeTest{
	my ($x, $y, $n) = @_;
	return ($x + ($x.$y)) == $n
}



#if(SommeTest($ARGV[0],$ARGV[1],$ARGV[2])){
if(SommeTest(@ARGV)){
	print "true\n";
}else{
	print "false\n";
}