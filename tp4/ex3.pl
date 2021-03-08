#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

use lib '.';
use Disque qw (:DEFAULT);
use Anneau qw (:DEFAULT);



my $disque = Disque->new(2 ,1,5);

print Dumper($disque);

print $disque->surface()."\n";

print $disque->dump()."\n";

my $anneau = Anneau->new(2, 1, 3, 1);

print Dumper($anneau);
print $anneau -> dump()."\n";
print $anneau ->surface()."\n";