#!/usr/bin/perl

use strict;
use warnings;




sub Fact{
	my ($n) = @_;
	return 1 if($n <=1);
	return $n * Fact($n-1);
}

sub Fibo{
	my ($n) = @_;
	my @res = (1,0);
	foreach my $i (2..$n){
		$res[$i] = $res[$i-1] + $res[$i-2];	
	}
	return @res; 
}


#for my $j (0 .. 10){
#	print Fact($j)."\n";
#}


my @t = Fibo(10);

print "@t\n";


