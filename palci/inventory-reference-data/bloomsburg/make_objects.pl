#! /usr/bin/perl
use UUID::Tiny ':std';
use JSON;

my $isil = 'US-PBBS';
my $instid = uuid($isil);
my $campcode = "$isil/$isil";
my $campid = uuid($campcode);
my $libcode = "$isil/$isil/$isil";
my $libid = uuid("$libcode");

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
  my $code = "$libcode/$cols[0]"; 
  my $obj = {
    id=>uuid($code),
    code=>$code,
    name=>$cols[1],
    isActive=>true,
    institutionId=>$instid,
    campusId=>$campid,
    libraryId=>$libid
  };
  my $json = JSON->new();
  $json->canonical();
  my $out = $json->encode($obj);
  print $out . "\n";
}

# identifiers object;