package Disque;
use parent qw(Exporter);

use Math::Trig;

#our @EXPORT = qw(new)

sub new{
	my ($class, $x, $y, $r ) = @_;
	my $this ={};
	$this-> {X} = $x // 0;
	$this-> {Y} = $y // 0;
	$this-> {R} = $r // 1;

	bless($this, $class);
	return $this;
};

sub surface{
	my ($this) = @_;
	return pi * ( $this->{R} **2);
}

sub dump{
	my ($this) = @_;
	return ref($this)." ".$this->{X}." ".$this->{Y}." ".$this->{R};
}



;1



