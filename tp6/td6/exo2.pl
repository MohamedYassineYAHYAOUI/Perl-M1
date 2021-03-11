#!/usr/bin/perl

use strict;
use warnings;
use DBI;

my $source = 'dbi:Pg:host=sqletud.u-pem.fr;dbname=myahya01_db';
my $base = DBI->connect($source, 'session', 'mot de passe') or die('connect:'.$DBI::errstr);

# $base ->do('CREATE TABLE annuaire(
# 	prenom_nom VARCHAR(40),
# 	numero_tel VARCHAR(20)
# 	)');

#my $req = $base->prepare(' INSERT INTO annuaire (prenom_nom,numero_tel) VALUES(?,?)' ) or die($base->errstr());
#$req->execute('Robert', '12 35 14 85') or die($base->errstr());
#$req->execute('John', '65 35 35 51') or die($base->errstr());
#$req->execute('Dane', '154 54 24 23') or die($base->errstr());
#$req->execute('Smail', '35 35 46 35') or die($base->errstr());



my $req = $base->prepare('SELECT prenom_nom,numero_tel FROM annuaire' ) or die($base->errstr());
$req->execute() or die($base->errstr());

while (my ($prenom_nom, $numero_tel) = $req->fetchrow_array() ){
	print "prenom nom $prenom_nom | numero tel : $numero_tel\n";
}



$base->disconnect();

