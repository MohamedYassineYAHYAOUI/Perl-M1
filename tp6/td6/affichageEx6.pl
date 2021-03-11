#!/usr/bin/perl

use strict;
use warnings;
use CGI;
use DBI;

my $source = 'dbi:Pg:host=sqletud.u-pem.fr;dbname=myahya01_db';
my $base = DBI->connect($source, 'session', 'mot de passe') or die('connect:'.$DBI::errstr);


print "Content-Type: text/html\n\n";



my $affichage = $base->prepare('SELECT prenom_nom,numero_tel FROM annuaire' ) or die($base->errstr());
$affichage->execute() or die($base->errstr());

while (my ($prenom_nom, $numero_tel) = $affichage->fetchrow_array() ){
	print "prenom nom $prenom_nom | numero tel : $numero_tel\n";
}




$base->disconnect();
