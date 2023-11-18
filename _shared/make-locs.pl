#!/usr/bin/perl

my $infile = shift or die "Usage ./make-locs.pl <locs_file> [ constant ]";
my $const = shift || '{}';

open IN, $infile or die "Can't open $infile!";
my @str;
while (<IN>) {
  chomp;
  next unless /\w/;
  $_ =~ s/^ +| +$//g;
  my $val = $_;
  $val =~ s/'/\\'/g;
  $val =~ s/\[/\\[/g;
  $val =~ s/\]/\\]/g;
  if ($val =~ /\W/) { 
    $val = "'$val'";
  }
  push @str, "$val:$const";
}
my $inner = join ", ", sort @str;
print "lendLocs: {$inner}\n";
