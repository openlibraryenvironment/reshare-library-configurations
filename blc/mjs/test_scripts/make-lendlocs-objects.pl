#!/usr/bin/perl

my $infile = shift or die "Usage ./make-lendlocs.pl <locs_file>";

open IN, $infile or die "Can't open $infile!";
my @str;
while (<IN>) {
  chomp;
  my @c = split '\t';
  my $key = $c[0];
  my $val = $c[1];
  if ($key =~ /\W/) {
    $key = "'$key'";
  }
  $val =~ s/'/\\'/g;
  push @str, "$key: '$val'";
}
my $inner = join ', ', @str;
print "lendLocs: { $inner }\n";