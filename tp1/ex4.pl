#!/usr/bin/perl

use strict;
use warnings;



sub TableMult1{
	my ($n) = @_;

	for (my $i = 1; $i <=$n; $i++) {
		for (my $j = 1; $j <= $n; $j++) {
			printf('%5d ', $i*$j)
		}
		print "\n";
	}
}

sub TableMult2{
	my ($n) = @_;
	foreach my $x (1.. $n) {
		foreach my $y (1.. $n){
			printf('%5d ', $x*$y)
		}
		print "\n";
	}
}


sub TableMult3{
	my ($n) = @_;
	my $res ="";
	foreach my $x (1.. $n) {
		foreach my $y (1.. $n){
			$res .= sprintf '%5d ', $x*$y;
		}
		$res .= "\n";
	}
	return $res;
}


#TableMult1(4);
#TableMult2(4);



#if(defined($ARGV[0])){
#	TableMult2($ARGV[0]);
#}else{
#	TableMult2(10);
#}

#TableMult2($ARGV[0] // 10);
#TableMult2($ARGV[0]// $x //10);

my $s = TableMult3($ARGV[0] // 10);
print $s