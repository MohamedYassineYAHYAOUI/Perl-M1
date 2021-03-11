#!/usr/bin/perl

use strict;
use warnings;
use CGI;
use DBI;

my $source = 'dbi:Pg:host=sqletud.u-pem.fr;dbname=myahya01_db';
my $base = DBI->connect($source, 'session', 'mot de passe') or die('connect:'.$DBI::errstr);

my $query = CGI->new();
print "Content-Type: text/html\n\n";
print "\n";

my $insert = $base->prepare(' INSERT INTO annuaire (prenom_nom,numero_tel) VALUES(?,?)' ) or die($base->errstr());

my $nom_prenom = $query->param('nom_prenom');
my $num = $query->param('num');
$insert->execute($nom_prenom, $num) or die($base->errstr());





$base->disconnect();

