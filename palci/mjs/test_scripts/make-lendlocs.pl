#!/usr/bin/perl

my $infile = shift or die "Usage ./make-lendlocs.pl <locs_file>";

open IN, $infile or die "Can't open $infile!";
my @str;
while (<IN>) {
  chomp;
  my $val = $_;
  $val =~ s/'/\\'/g;
  push @str, "'$val'";
}
my $inner = join ', ', @str;
print "lendLocs: [ $inner ]\n";