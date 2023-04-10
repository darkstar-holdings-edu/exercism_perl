package AtbashCipher;

use strict;
use warnings;
use feature qw<say>;

use Exporter qw<import>;
our @EXPORT_OK = qw<encode_atbash decode_atbash>;

sub encode_decode {
  my ($phrase) = @_;

  my $data = '';

  for my $char ( split //, ( lc $phrase ) ) {
    $data .= $char =~ m/[a-z]/ ? chr( 122 - ( ord($char) - 97 ) ) : $char;
  }

  return $data;
}

sub encode_atbash {
  my ($phrase) = @_;

  my $parsed_phrase = $phrase =~ s/[\s[:punct:]]*//gr;
  my $encoded       = encode_decode($parsed_phrase);

  return join " ", unpack( "(A5)*", $encoded );
}

sub decode_atbash {
  my ($phrase) = @_;
  my $encoded_phrase = $phrase =~ s/\s//gr;
  return encode_decode($encoded_phrase);
}

1;
