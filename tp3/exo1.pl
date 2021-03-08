#!/usr/bin/perl

use strict;
use warnings;



my @files = glob('~/.*');

@files= grep{not -x $_ } @files;


@files = sort{-s $a <=> -s $b } @files;

my @taille = map{-s $_ }@files;



foreach (@taille){
    print "$_\n";
}

