#!/usr/bin/perl

# This script takes a FOLIO locations object in JSONL format and creates an xsl:choose element, mapping codes to ids

use JSON;

my $infile = shift or die "Usage: locations2choose.pl <locations jsonl>";

open IN, $infile or die "Can't open input file!";

my $ind0 = ' ' x 4;
my $ind = ' ' x 6;

print "$ind0<permanentLocationId>\n";
print "$ind<xsl:choose>\n";
my $c = 0;
my $ow;
while (<IN>) {
  chomp;
  my $jsonl = decode_json($_);
  my $id = $jsonl->{id};
  my $code = $jsonl->{code};
  $code =~ s/^.+\///;
  if ($code eq 'UNMAPPED') {
    $ow = $id;
  } else {
    print "$ind  <xsl:when test=\".='$code'\">$id</xsl:when>\n";
  }
  $c++;
}
print "$ind  <xsl:otherwise>$ow</xsl:otherwise> <!-- UNMAPPED -->\n" if $ow;
print "$ind</xsl:choose>\n";
print "$ind0</permanentLocationId>\n"
