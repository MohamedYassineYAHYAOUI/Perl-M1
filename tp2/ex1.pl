#!/usr/bin/perl

use strict;
use warnings;

my %h = ("janvier", 31, "février", 28, "Mars", 31, "Avril", 30, "Mai", 31, "Juin", 30, "Juillet", 31, "Août", 31, "Septembre", 30, 
	"Octobre", 31, "Novembre", 30, "Décembre", 31);  
foreach my $m (@ARGV){
	if( exists($h{$m})){
		print($m.":".$h{$m});
	}else{
		print ($m." : inconnu\n"); 
	}
}

delete $mois{"fevrier"}