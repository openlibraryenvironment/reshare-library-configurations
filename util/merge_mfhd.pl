#!/usr/bin/perl

# This script was specifically written to handle Voyager holdings and items
# -- it will probley work for other Bib/MFHD collections...

use MARC::Record;
use File::Basename;
use strict;
use warnings;
use MARC::File::XML ( BinaryEncoding => 'utf8', RecordFormat => 'UNIMARC' );

my $mrcfile = shift or die "Usage: ./merg_mfhd.pl <mrc_file>";

my $workdir = dirname($mrcfile);
my $fname = basename($mrcfile, '.marc', '.mrc', '.marc', '.bin', '.out');
mkdir("$workdir/merged");

# my $savefile = "$workdir/merged/${fname}-with-holdings.mrc";
# unlink $savefile;
# open OUT, ">", $savefile;

my $xmlfile = "$workdir/merged/${fname}-with-holdings.xml";
unlink $xmlfile;
my $file = MARC::File::XML->out($xmlfile);

$/ = "\x1D";
open MF, $mrcfile;

binmode(STDOUT, ':utf8');

my $id;
my $marc;
my $c = 0;
my $hc = 0;
my $done = 0;
while (<MF>) {
  if (/^\d{5}.[vxy]/) {
    my $mfhd = MARC::Record->new_from_usmarc($_);
    my $hid = $mfhd->field('001')->data();
    my $match = $mfhd->field('004')->data();
    if ($match eq $id and $hc < 50) {
      $hc++;
      print "  [$hc] Adding holdings $hid to $id\n";
      my @h852 = $mfhd->field('852');
      foreach (@h852) {
        $_->add_subfields('8', $hid);
      }
      $marc->insert_fields_ordered(@h852);

      my @h876 = $mfhd->field('876');
      @h876 = splice(@h876, 0, 100);
      foreach (@h876) {
        $_->add_subfields('9', $hid);
      }
      $marc->insert_fields_ordered(@h876);

      my @h866 = $mfhd->field('866');
      @h866 = splice(@h866, 0, 100);
      foreach (@h866) {
        $_->add_subfields('9', $hid);
      }
      $marc->insert_fields_ordered(@h866);
    }
  } else {
    $c++;
    if ($marc) {
      # print OUT $marc->as_usmarc();
      $file->write($marc);
    }
    $marc = MARC::Record->new_from_usmarc($_);
    $id = $marc->field('001')->data();
    print "[$c] Opening Bib# $id\n";
    $hc = 0;
  }
  if (eof (MF)) { 
    # print OUT $marc->as_usmarc();
    $file->write($marc);
  }
}