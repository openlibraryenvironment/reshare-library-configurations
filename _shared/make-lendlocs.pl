#!/usr/bin/perl

my $infile = shift or die "Usage ./make-lendlocs.pl <locs_file>";

open IN, $infile or die "Can't open $infile!";
my @str;
my $seen = {};
while (<IN>) {
  chomp;
  next unless /\w/;
  my $val = $_;
  $val =~ s/'/\\'/g;
  $val =~ s/\[/\\[/g;
  $val =~ s/\]/\\]/g;
  push @str, "'$val'" unless $seen->{$val};
  $seen->{$val} = 1;
}
my $inner = join ', ', sort @str;
print "lendLocs: [ $inner ]\n";
