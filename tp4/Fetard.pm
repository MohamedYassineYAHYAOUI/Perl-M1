package Fetard ;

use Moose::Role;

has boisson =>(is=>'rw', isa=>'Str', required =>1);


sub boire{
	my ($this) = @_;
	print $this->boisson."\n";
}


requires 'delirer';

;1