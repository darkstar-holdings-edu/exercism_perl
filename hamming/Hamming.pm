package Hamming;

use strict;
use warnings;
use feature qw<say>;

use Exporter qw<import>;
our @EXPORT_OK = qw<hamming_distance>;

sub hamming_distance {
  my ( $strand1, $strand2 ) = @_;

  unless ( length $strand1 == length $strand2 ) {
    die 'strands must be of equal length';
  }

  my $hamming_distance = 0;

  for my $i ( 0 .. length($strand1) - 1 ) {
    $hamming_distance++ if substr( $strand1, $i, 1 ) ne substr( $strand2, $i, 1 );
  }

  return $hamming_distance;
}

1;
