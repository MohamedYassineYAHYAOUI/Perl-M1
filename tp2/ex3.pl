#!/usr/bin/perl


use strict;
use warnings;

open(my $fd, '<' , 'psswd.txt') or die("open: $!");


while (defined(my $ligne = <$fd>)) {
    chomp $ligne; # Supprime la fin de ligne
    if($ligne =~ m/^jc:/){
    	print $ligne."\n";
    }


    if($ligne !~ m/bash/ ){
        print $ligne."\n";
    }

    $ligne =~ s:/home/:/mnt/home/:g;
    print $ligne."\n";

    $ligne =~ s/(.+?):(?:.+?):(.+)/$1::$2/g;
    print $ligne."\n";

    $ligne =~ s/(.+?):(.+?):(.+?)/$2:$1:$3/g;
    print $ligne."\n";


    $ligne =~ s/((?:.*?:){2})(.*?):(.*?):/$1$3:$2:/;
    print $ligne . "\n";

}

close($fd);