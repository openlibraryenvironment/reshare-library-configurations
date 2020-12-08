#! /usr/bin/perl
use UUID::Tiny ':std';
use JSON;
use File::Basename;

my $isil = 'US-PBBS';
my $spid = uuid("service-point/$isil");
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
my $dir = dirname($locfile);

my $json = JSON->new();
$json->canonical();

# service point
my $sppath = "$dir/service-points.jsonl";
unlink $sppath;
open SPOUT, ">>$sppath";
my $sp = {
  id=>$spid,
  name=>'Bloomsburg',
  code=>$isil,
  discoveryDisplayName=>'Bloomsburg',
  pickupLocation=>true,
  holdShelfExpiryPeriod=>{
    duration=>3,
    intervalId=>'Weeks'
  }
};
my $spout = $json->encode($sp);
print SPOUT $spout . "\n";

# locations
open LOC, $locfile or die "Can't find location file";
my $c = 0;
my $locpath = "$dir/locations.jsonl";
unlink $locpath;
open LOCOUT, ">>$locpath";
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
    libraryId=>$libid,
    primaryServicePoint=>$spid,
    servicePointIds=>[ $spid ]
  };
  my $out = $json->encode($obj);
  print LOCOUT $out . "\n";
}

# identifiers object;