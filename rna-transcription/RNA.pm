package RNA;

use strict;
use warnings;
use feature qw<say>;

use Exporter qw<import>;
our @EXPORT_OK = qw<to_rna>;

my %DNA_TO_RNA_MAP = (
  'G' => 'C',
  'C' => 'G',
  'T' => 'A',
  'A' => 'U'
);

sub to_rna {
  my ($dna) = @_;

  my $rna = '';

  for my $i ( 0 .. length($dna) - 1 ) {
    my $char = substr( $dna, $i, 1 );
    $rna .= $DNA_TO_RNA_MAP{$char} || $char;
  }

  return $rna;
}

1;
