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

#$mime->add('X-Mailer'=> 'monprog.pl V1.3'); // ajouter une entête
#my $field = $mime->get(’X-Mailer’); // récupérer une entête
#$mime->sign(Path => ’/home/moi/.signature’); //ajouter une signature


$mime->send('smtp','smtp.gmail.com');



#if( $mime -> get('Content-Type') =~ m :^multipart/mixed: ){
#	foreach my $part ($mime->parts()) {
#		my $content_type = $part->get('Content-Type');
#		if( $content_type =~ m:^ text /: ) {
#			print @{ $part-> body() };
#		} elsif( $content_type =~ m:^ image /: and
#			$part->get('Content-Transfer-Encoding') eq " base64 \ n" ) {
#			open (my $fd ,'>','image.jpg') or die("$!" );
#			binmode $fd;
#			print $fd decode_base64( join'', @{ $part->body() } );
#			close $fd;
#		}
#	}
#}