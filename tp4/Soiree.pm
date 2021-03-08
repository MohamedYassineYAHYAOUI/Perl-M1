package Soiree;
use Moose ;

has capacite => ( is=>'ro', isa=>'Int', required =>1 );
has potes => (is=>'rw', isa=>'ArrayRef[Fetard]', default => sub { [] }, traits => [ 'Array' ], auto_deref => 1, handles => {
	entrer => 'push',
	expulser => 'pop', 
	nbPotes => 'count',
	});


sub fete{
	my($this) = @_;

	foreach my $pote (@{$this->potes}){
		#print $pote->nom;
		$pote->boire;
		$pote->delirer;
	}
	#print "\n";
};


before entrer => sub {
	my ($this, $elem) = @_;
	print $elem->nom."\n";
};

after entrer => sub {
	my($this, $elem) = @_;
	if( $this->capacite < $this->nbPotes){
		$this->expulser;
		print $elem-> nom."\n";
	}else{
		print "bienvenue ".$elem->nom."\n";
	}
}


;1