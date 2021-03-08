#!/usr/bin/perl

use strict;
use warnings;


sub fct1{
	my @t = (4,-5,7);
	push(@t, -2,3); 
	unshift(@t, 0,-1);
	@t[3] = 9;
	@t = map {$_*2} @t; # multiplication
	@t = grep {$_ > 0} @t; #element positive
	@t = sort{$b <=> $a} @t; # trie en ordre decroissant
	return @t;
}



print join (',' , fct1())."\n";