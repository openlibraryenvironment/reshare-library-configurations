#!/usr/bin/perl

# This script was specifically written to handle Voyager holdings and items
# -- it will probley work for other Bib/MFHD collections...

use MARC::Record;
use File::Basename;
use strict;
use warnings;

my $mrcfile = shift or die "Usage: ./wms_merge.pl <wms_mrc_file>";

my $workdir = dirname($mrcfile);
my $fname = basename($mrcfile, '.marc', '.mrc', '.marc', '.bin', '.out');
my $savefile = "$workdir/${fname}-with-holdings.mrc";
open OUT, ">:encoding(UTF-8)", $savefile;

$/ = "\x1D";
open MF, $mrcfile;

binmode(STDOUT, ':utf8');

my $id;
my $marc;
my $c = 0;
my $done = 0;
while (<MF>) {
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