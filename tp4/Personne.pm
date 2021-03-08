package Personne;
use Moose ;

with 'Fetard';

has nom => (is=>'ro', isa=>'Str' );
has '+boisson' => ();


sub delirer{
	my ($this) = @_;
	print $this->boisson." délire\n";
}

;1
