#!/usr/bin/perl


use strict;
use warnings;

open(my $fd, '<' , 'psswd.txt') or die("open: $!");
my %tab_hash = ();

while (defined(my $ligne = <$fd>)) {
    chomp $ligne; # Supprime la fin de ligne
    
    my ($x, undef, $uid) = split(/:/, $ligne);
    $tab_hash{$x} = $uid; 
    #acces au element de table de hashage
}

#foreach my $x (keys %h) {
#    print $x.":".$h{$x}."\n";
#}

#
#foreach my $x (
#    sort {$h{$a} <=> $h{$b}} (keys %h)) {
#        print $x.":".$h{$x}."\n";
#}

foreach my $login (
	# on peut faire sans les {$a comp $b}, soit 
	# sort (keys %tab_hash)) 
	# pour affiner le sort on peut faire : 
	# sort {$tab_hash{$a} <=> $tab_hash{$a} or $a cmp $b} keys %tab_hash
	# si le $tab_hash{$a}  ==  $tab_hash{$a} ce n'est pas le bon critére

    sort {$a cmp $b} (keys %tab_hash)) {
        print $login.":".$tab_hash{$login}."\n";
}

close($fd); #il faut mettre la close
