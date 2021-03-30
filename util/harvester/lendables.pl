#!/usr/bin/perl

# This short script will create lendable <xsl:when> lines from a tsv file.

my $in = shift or die "Usage: ./lendables.pl <lendable_location_file.tsv>";
open IN, $in or die "Can't find input file.";

while (<IN>) {
	chomp;
	my @d = split(/\t/);
	my $when = "                  <xsl:when test=\"\$loc-clean='$d[0] $d[1]'\">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>";
	print "$when\n";
}

