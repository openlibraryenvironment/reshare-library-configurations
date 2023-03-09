#!/usr/bin/perl

my $infile = shift or die "Usage ./make-lendlocs.pl <locs_file>";

open IN, $infile or die "Can't open $infile!";
my @str;
while (<IN>) {
  chomp;
  next unless /\w/;
  my $val = $_;
  $val =~ s/'/\\'/g;
  push @str, "'$val'";
}
my $inner = join ', ', sort @str;
print "lendLocs: [ $inner ]\n";