#!/usr/bin/perl


use strict;
use warnings;


my $nb_line;
my $nb_error;
my $code;

my $volume_total;
my $volume;

my %url_oct =();
my $octets;
my %url_ip =();
my $ip;

my %volume_par_ip = ();

open(my $fd, '<' , 'access_log') or die("open: $!");

while (defined(my $ligne = <$fd>)) {
    chomp $ligne; # Supprime la fin de ligne
	$nb_line++;
    if(($ip, $octets, $code, $volume ) = $ligne =~ m/^(.*?) .*?".*? (.*?) .*?" (.*?) (.*?) /){};

    if($code != 200){
		$nb_error++;
    }
    $volume_total+=$volume;
	$url_oct{$octets}++;
	$url_ip{$ip}++;
	$volume_par_ip{$ip}+=$volume;
}



#Combien de requêtes y a-t-il eu au total ?
print "nombre de requêtes: $nb_line\n";

#Combien d’erreurs ?
print "nb d’erreurs: $nb_error\n";

#Quel est le nombre total d’octets transférés ?
print "volumeTotal: $volume_total\n";


#Affichez toutes les urls dans l’ordre décroissant du nombre d’accès.
print "\nURL dans l’ordre décroissant du nombre d’accès \n\n";
foreach my $x (
	sort {$url_oct{$b} <=> $url_oct{$a}} (keys %url_oct)){
       print "$x : $url_oct{$x}\n";
}

#Quel sont les 10 adresses IP ayant accédé le plus de fois au serveur ?
#Indiquez pour chacune de ces 10 IP le volume transféré ?
print "\n10 adresses IP ayant accédé le plus de fois au serveur avec le volume transféré \n\n";
map{print "$_ : access =$url_ip{$_} volume=$volume_par_ip{$_}\n" } (sort {$url_ip{$b} <=> $url_ip{$a}} (keys %url_ip))[0..9];

close($fd);