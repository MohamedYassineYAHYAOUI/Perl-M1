#!/usr/bin/perl
use strict;
use warnings;

use lib '.';
use Data::Dumper;
use Personne;
use Soiree;
use Fetard;


my $personne = Personne->new(nom=>"jack", boisson=>"jack daniel's");
#print Dumper($personne);

my $soiree = Soiree->new(capacite=>5);


#print Dumper($soiree);

print $personne->delirer;

$soiree->entrer($personne);
$soiree->fete;

