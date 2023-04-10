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

  return ($strand1 ^ $strand2) =~ tr/\0//c;
}

1;
