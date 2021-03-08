#!/usr/bin/perl

use strict;
use warnings;



sub Intervalle{
	my ($n, $x) = @_;
	return grep{$_ != $x}(1..$n);
}


sub NonMult{
	my ($n, $x) = @_;
	return grep{$_ % $x}(1..$n);
}




print join (',', Intervalle(10,4))."\n";


print join (',', NonMult(10,3))."\n";