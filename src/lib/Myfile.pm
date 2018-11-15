package Myfile;

use strict;
use warnings;

1;
sub new {
  my $class = shift;
  my $filename = shift;
  my $self = {};
  bless($self, $class);
  $self->{filename} = $filename;
  return $self;
}

my $in;

sub open {
  my $self = shift;
  open($in, "<", $self->{filename}) or die "Can't open $self->{filename}";
}

sub print {
  my @lines = <$in>;
  print "@lines";
}

1;
