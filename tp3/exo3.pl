#!/usr/bin/perl

use strict;
use Data::Dumper;
use warnings;


sub parse{
	my ($path) = @_;
	my %rh = ();
	open(my $fd, '<' , $path ) or die( "open: $!" );
	while( defined( my $ligne = <$fd>)){
		
		my ($login, $passwd, $uid, $gid, $info, $home, $shell) = split(":", $ligne);
		$rh{$login} ={
			passwd => $passwd,
			uid => $uid,
			gid => $gid,
			info => $info,
			home => $home,
			shell => $shell
		}
	}
	close($fd);
	return \%rh;
}

sub display1{
	my ($table) =@_;

	foreach my $login (keys %$table){
		print " login $login \n";
		print "\tpasswd $table->{$login}{passwd}\n";
		print "\tuid $table->{$login}{uid }\n";
		print "\tgid $table->{$login}{gid}\n";
		print "\tinfo $table->{$login}{info }\n";
		print "\thome $table->{$login}{home }\n";
		print "\tshell $table->{$login}{shell}\n";
	}
}

sub display2{
	my ($table) =@_;
	my @newTable = sort(keys %$table);

	foreach my $login (@newTable){
		print " login $login \n";
		print "\tpasswd $table->{$login}{passwd}\n";
		print "\tuid $table->{$login}{uid }\n";
		print "\tgid $table->{$login}{gid}\n";
		print "\tinfo $table->{$login}{info }\n";
		print "\thome $table->{$login}{home }\n";
		print "\tshell $table->{$login}{shell}\n";
	}

}

sub display3 {
    my ($table) = @_;

    foreach my $login (sort { $table->{$b}{uid} <=> $table->{$a}{uid} or $a cmp $b } (keys %$table)) {
        print " login $login \n";
		print "\tpasswd $table->{$login}{passwd}\n";
		print "\tuid $table->{$login}{uid }\n";
		print "\tgid $table->{$login}{gid}\n";
		print "\tinfo $table->{$login}{info }\n";
		print "\thome $table->{$login}{home }\n";
		print "\tshell $table->{$login}{shell}\n";
    }
}





my $ref = parse('passwd.txt');

#print Dumper($ref);

#display2($ref);

display3($ref);


