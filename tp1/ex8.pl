#!/usr/bin/perl

use strict;
use warnings;



sub premier{
	my ($n) = @_;
	foreach my $x (2..$n-1) {
		return 0 if $n % $x == 0;
	}
	return 1;
}

sub Eratosthene{
	my ($n) = @_;
	my @res = ();
	foreach my $x (2..$n) {
		push(@res, $x) if(premier($x));
	}
	return @res;
}


#correction

sub Eratosthene2 {
    my ($n) = @_;
    my @c = (2..$n);
    my @p = ();

    while ( @c ) {
        push @p, $c[0];
        @c = grep { $_ % $c[0] != 0} @c;
    }
    return @p; 
}


print join(', ', Eratosthene($ARGV[0])), "\n";

print join(', ',Eratosthene(120))."\n";
