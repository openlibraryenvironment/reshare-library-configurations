#! /usr/bin/perl
use UUID::Tiny ':std';
use JSON;

my $isil = 'US-PBBS';

sub uuid {
  my $msg = shift;
  my $uuid_bin = create_uuid(UUID_SHA1, UUID_NS_DNS, $msg);
  my $uuid = uuid_to_string($uuid_bin);
  return $uuid;
}

my $locfile = shift || die "Usage: make_objecst.pl <tab separted locations file>";

# open locations file
open LOC, $locfile or die "Can't find location file";
my $locout = $locfile;
$locout =~ s/\.+$/.jsonl/;
my $c = 0;
while (<LOC>) {
  $c++;
  next if $c <= 2;
  chomp;
  my @cols = split(/\t/);
  my $obj = {
    id=>uuid($cols[0]),
    code=>$cols[0],
    name=>$cols[1]
  };
  my $json = JSON->new();
  $json->canonical();
  my $out = $json->encode($obj);
  print $out . "\n";
}

# identifiers object;