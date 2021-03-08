package Anneau;
use strict;
use warnings;

use lib ".";
use parent qw(Disque);
use Math::Trig;

sub new{
	my ($class, $x, $y, $r, $ri ) = @_;
	my $this = $class->SUPER::new($x, $y, $r);
	$this-> {RI} = $ri;
	bless($this, $class);
	return $this;
}

sub dump{
	my ($this) = @_;
	$this -> SUPER::dump()." ".$this-> {RI} ;
}


sub surface{
	my ($this) = @_;
	$this -> SUPER::surface() - (pi * ( $this->{RI} **2) );
}



;1