#!/usr/bin/perl

use strict;
use warnings;
use MIME::Lite;

my $mime = MIME::Lite->new(
	From => 'myahya01@etud.u-pem.fr',
	To => 'yassiney1997@gmail.com',
	Subject => 'ex4',
	Data => "hello"
);

$mime->attach(
	Type => 'application/pdf',
	Encoding => 'base64',
	Path => '/media/sf_D_shared_folder_Ubuntu_20.04/perl/tp5/td05.pdf',
	Filename => 'td05.pdf'
);

$mime->send('smtp','smtp.gmail.com');