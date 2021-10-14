#! /usr/bin/perl

use strict;
use warnings;
use Config::Tiny;
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
  my $conf = Config::Tiny->read($cfile);
  my $fdir = $conf->{_}->{ftp_dir};
  my $last = $conf->{_}->{last_run};
  $fdir =~ s/\/$//;
  foreach my $file (<$fdir/*>) {
    print "$file\n";
  }
}