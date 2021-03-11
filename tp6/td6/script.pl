#!/usr/bin/perl

use strict;
use warnings;
use CGI ;


my $query = CGI->new();

print "Content-Type: text/html\n\n";
print "\n";
my $saisie = $query->param('saisie');

print $saisie."\n";
