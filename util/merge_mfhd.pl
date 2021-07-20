#!/usr/bin/perl

# This script was specifically written to handle Voyager holdings and items
# -- it will probley work for other Bib/MFHD collections...

use MARC::Record;
# use MARC::Charset 'marc8_to_utf8';
use File::Basename;
use strict;
use warnings;

my $mrcfile = shift or die "Usage: ./merg_mfhd.pl <mrc_file>";

my $workdir = dirname($mrcfile);
my $fname = basename($mrcfile, '.marc', '.mrc', '.marc', '.bin', '.out');
mkdir("$workdir/merged");
my $savefile = "$workdir/merged/${fname}-with-holdings.mrc";
# open OUT, ">:encoding(UTF-8)", $savefile;
open OUT, ">", $savefile;

$/ = "\x1D";
open MF, $mrcfile;

binmode(STDOUT, ':utf8');

my $id;
my $marc;
my $c = 0;
my $done = 0;
while (<MF>) {
  # $_ = marc8_to_utf8($_) if $_ !~ /^\d{5}... a/;
  if (/^\d{5}.[vxy]/) {
    my $mfhd = MARC::Record->new_from_usmarc($_);
    my $hid = $mfhd->field('001')->data();
    my $match = $mfhd->field('004')->data();
    if ($match eq $id) {
      print "  Adding holdings $hid to $id\n";
      my @h852 = $mfhd->field('852');
      foreach (@h852) {
        $_->add_subfields('8', $hid);
      }
      $marc->insert_fields_ordered(@h852);

      my @h876 = $mfhd->field('876');
      foreach (@h876) {
        $_->add_subfields('9', $hid);
      }
      $marc->insert_fields_ordered(@h876);

      my @h866 = $mfhd->field('866');
      foreach (@h866) {
        $_->add_subfields('9', $hid);
      }
      $marc->insert_fields_ordered(@h866);
    }
  } else {
    $c++;
    if ($marc) {
      print OUT $marc->as_usmarc();
    }
    $marc = MARC::Record->new_from_usmarc($_);
    $id = $marc->field('001')->data();
    print "[$c] Opening Bib# $id\n";
  }
  if (eof (MF)) { print OUT $marc->as_usmarc(); }
}