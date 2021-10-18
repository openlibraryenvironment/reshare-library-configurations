#! /usr/bin/perl

use strict;
use warnings;
use Config::Tiny;
use MARC::Record;
use Time::Piece;
use Data::Dumper;

my $conf_dir = shift || 'configs';
$conf_dir =~ s/\/$//;
my @conf_files;

if (-f $conf_dir) {
  push @conf_files, $conf_dir;
} else {
  foreach(<"$conf_dir/*.ini">) {
    push @conf_files, $_;
  }
}

foreach my $cfile (@conf_files) {
  my $now = localtime->ymd;
  my $conf = Config::Tiny->read($cfile);
  my $fdir = $conf->{_}->{ftp_dir};
  my $last = $conf->{_}->{last_run};
  my $date_field = $conf->{_}->{date_field};
  my $format = $conf->{_}->{date_format};
  $fdir =~ s/\/$//;
  foreach my $file (<$fdir/*>) {
    print "$file\n";
    parseMarc($file, $date_field, $format, $last);
  }
}

sub parseMarc {
  my $file = shift;
  my $date_field = shift;
  my $format = shift;
  my $last_time = shift;
  my ($tag, $subf) = split(/\$/, $date_field);
  $/ = "\x1D";
  open my $mf, $file or die "There was a problem opening $file!\n";
  while (<$mf>) {
    my $marc = MARC::Record->new_from_usmarc($_);
    my $f = $marc->field($tag);
    if ($f && $f->tag) {
      my $mdate;
      if ($f->is_control_field) {
        $mdate = $f->data();
        $mdate =~ s/(.{8}).*/$1/;
      } else {
        my $f = $marc->field($tag);
        $mdate = $f->as_string($subf);
      }
      my $udate = Time::Piece->strptime($mdate, $format)->strftime('%Y-%m-%d');
      print "$udate\n";
      if ($udate ge $last_time) {
        print $_;
      }
    } else {
      # print "WARN date_field ($tag) not found in record.\n"
    }
  }
}