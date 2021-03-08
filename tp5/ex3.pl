#!/usr/bin/perl

use strict;
use warnings;
use IO::Socket;
use threads ;
use threads::shared;


my $index : shared = 1;


sub inc {
	my ($accept_socket) = @_;
	
	$accept_socket -> send ( $index++."\n");
	sleep(5);
	$accept_socket -> send ( $index++."\n");
	close ( $accept_socket );
}


my $listen_socket = IO::Socket::INET -> new (
	Proto =>'tcp', LocalPort =>2000 , Listen =>5 , Reuse =>1 )
	or die ("$@");


while (my $accept_socket = $listen_socket -> accept ()){
	print " Nouveau client\n ";
	my $th = threads->new(\&inc, $accept_socket)->detach();
}