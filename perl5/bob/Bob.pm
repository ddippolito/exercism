package Bob;

sub new {
  my ($class, %args) = @_;
  my $self = {};

  bless $self, $class;

  return $self;
}

sub hey {
  my $self = shift;

  print 'Hey';
}

1;
