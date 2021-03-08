#!/usr/bin/perl

use strict;
use warnings;
use MIME::Parser;
use MIME::Base64 qw(decode_base64);
use Date::Manip;

use POSIX qw(strftime);


open(my $fd, 'courriel') or die("open: $!");


my $parser = MIME::Parser->new();

my $mime = $parser->parse($fd);

my $subject = $mime->get('Subject');

$subject =~ s/=\?utf-8\?[Bb]\?(.+?)\?=/decode_base64($1)/egi;
print $subject."\n";




my $date = Date::Manip::Date->new;

$date->parse( $mime->get('Date'));

my $sec = $date->printf('%s');

$ENV {TZ} = 'Europe/Paris';

print "Paris ".strftime('%H:%M', localtime($sec))."\n";

$ENV {TZ} = 'Europe/Moscow';
print "Moscow ".strftime('%H:%M', localtime($sec))."\n";

close($fd);