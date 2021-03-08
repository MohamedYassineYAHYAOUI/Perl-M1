#!/usr/bin/perl

use strict;
use Data::Dumper;
use warnings;


my $r = {  Jean=>{Tel => "01.23.13.54",
				Adr => "14, rue Pasteur",
				Enfants => [ "enfant", "enfant1", ]},
		Paul=> {Tel => "01.23.13.54",
				Adr => "14, rue Pasteur",
				Enfants => [ "Julien2", "enfant2", ]},
		Jack=>{Tel => "01.23.13.54",
				Adr => "14, rue Pasteur",
				Enfants => [ "Julien3", "enfant3", ]},
	};


#print Dumper($r);


foreach my $nom (keys %$r){
	print "nom $nom\n";
	print "tel $r->{$nom}{Tel}\n";
	print "Adr $r->{$nom}{Adr}\n";
	print "Enfants ";
	#foreach my $enf (@{$r->{$nom}{Enfants}}){
	#	print "$enf ";
 	#}
 	print join(', ', @{$r->{$nom}{Enfants}})."\n"; 
 	my $size = @{$r->{$nom}{Enfants}};
 	print "nb enfants $size\n";
 	#print "\n";
}