#!/usr/bin/perl

# This script will merge MFHD records with its associated Bib record.
# Since the holdings may be rather large, this script writes MARC XML.
# The output will be encoded in UTF8, so it is a good idea to convert
# the input MARC collection to UTF8 first (use the -u option to do this).

# This script will run the gzip command on the finished file using the -z option

# NOTE: You must have yaz installed to run the -u option.  If so, yaz-marcdump will 
# handle the conversion from marc8 to utf8.

my $holdings_limit = 25;
my $items_limit = 100;

use MARC::Record;
use File::Basename;
use strict;
use warnings;
use MARC::File::XML (BinaryEncoding => 'utf8', RecordFormat => 'MARC21');

my $convert_flag = 0;
my $zip_flag = 0;
my $yaz_flag = 0;
for (my $x = 0; $x < @ARGV; $x++) {
  my $arg = $ARGV[$x];
  if ($arg =~ /^-(u|z)$/) {
    splice(@ARGV, $x, 1);
    $x--;
    if ($arg =~ /u/) {
      $convert_flag = 1;
    }
    if ($arg =~ /z/) {
      $zip_flag = 1;
    }
  }
}

my $mrcfile = shift or die "Usage: ./merge_mfhd.pl [OPTIONS: -u (convert to utf8), -z (gzip output file)] <mrc_file>\n";
if (! -e $mrcfile) {
  die "Can't find MARC file at $mrcfile\n";
}

my $workdir = dirname($mrcfile);
my $fname = basename($mrcfile, '.marc', '.mrc', '.marc', '.bin', '.out');
mkdir("$workdir/merged");

if ($convert_flag) {
  $fname .= '-utf8';
  my $ufile = "$workdir/$fname.mrc";
  my $cmd = "yaz-marcdump -f marc8 -t utf8 -o marc -l 9=97 $mrcfile > $ufile";
  print "Running command: $cmd\n(This may take awhile...)\n";
  `$cmd`;
  $mrcfile = $ufile;
}

my $xmlfile = "$workdir/merged/${fname}-with-holdings.xml";
unlink $xmlfile;
my $file = MARC::File::XML->out($xmlfile);

$/ = "\x1D";
open MF, $mrcfile or die "There was a problem opening $mrcfile!\n";

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
    if ($match eq $id and $hc < $holdings_limit) {
      $hc++;
      print "  [$hc] Adding holdings $hid to $id\n";
      my @h852 = $mfhd->field('852');
      foreach (@h852) {
        $_->add_subfields('8', $hid);
      }
      $marc->insert_fields_ordered(@h852);

      my @h876 = $mfhd->field('876');
      @h876 = splice(@h876, 0, $items_limit);
      foreach (@h876) {
        $_->add_subfields('9', $hid);
      }
      $marc->insert_fields_ordered(@h876);

      my @h866 = $mfhd->field('866');
      @h866 = splice(@h866, 0, $items_limit);
      foreach (@h866) {
        $_->add_subfields('9', $hid);
      }
      $marc->insert_fields_ordered(@h866);
    }
  } else {
    $c++;
    if ($marc) {
      $file->write($marc);
    }
    $marc = MARC::Record->new_from_usmarc($_);
    $id = $marc->field('001')->data();
    print "[$c] Opening Bib# $id\n";
    $hc = 0;
  }
  if (eof (MF)) { 
    $file->write($marc);
  }
}

if ($zip_flag) {
  print "----------\n";
  print "Zipping $xmlfile with gzip\n";
  print "(This may take awhile...)\n";
  my $cmd = "gzip $xmlfile";
  `$cmd`;
  print "Done zipping...\n"
}

print "----------\nFinished! $c record(s) created.\n";