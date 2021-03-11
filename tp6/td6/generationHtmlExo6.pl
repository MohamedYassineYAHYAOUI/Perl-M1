#!/usr/bin/perl

use strict;
use warnings;
use CGI;
use DBI;



my $source = 'dbi:Pg:host=sqletud.u-pem.fr;dbname=myahya01_db';
my $base = DBI->connect($source, 'session', 'mot de passe') or die('connect:'.$DBI::errstr);


print "Content-Type: text/html\n\n";


	