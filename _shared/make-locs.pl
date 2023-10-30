#!/usr/bin/perl

my $infile = shift or die "Usage ./make-locs.pl <locs_file> [ no_lend ]";
my $no_lend = shift || '';
my $lend = 1;
if ($no_lend) {
  $lend = 0;
}

open IN, $infile or die "Can't open $infile!";
my @str;
while (<IN>) {
  chomp;
  next unless /\w/;
  my $val = $_;
  $val =~ s/'/\\'/g;
  $val =~ s/\[/\\[/g;
  $val =~ s/\]/\\]/g;
  if ($val =~ /\W/) { 
    $val = "'$val'";
  }
  push @str, "$val:{}";
}
my $inner = join "," , sort @str;
print "lendLocs: {$inner}\n";
