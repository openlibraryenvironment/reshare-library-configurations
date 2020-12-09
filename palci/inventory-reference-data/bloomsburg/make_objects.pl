#! /usr/bin/perl
use UUID::Tiny ':std';
use JSON;
use File::Basename;
use Data::Dumper;

my $locfile = shift || die "Usage: make_objecst.pl <tab separted locations file>";
my $dir = dirname($locfile);
my $conf = parse_config($dir);

my $instcode = $conf->{institutionCode} or die "The config property \"institutionCode\" is required!";
my $instid = uuid($instcode);
my $instname = $conf->{institutionName} or die "The config property \"institutionName\" is required!";

my $campcode = $conf->{campusCode} ? $instcode . "/" . $conf->{campusCode} : "$instcode/$instcode";
my $campid = uuid($campcode);
my $campname = $conf->{campusName} || $instname; 

my $libcode = $conf->{libraryCode} ? $campcode . "/" . $conf->{libraryCode} : "$campcode/$instcode";
my $libid = uuid("$libcode");
my $libname = $conf->{libname} || $instname;

my $spcode = $conf->{servicePointCode} || $instcode;
my $spid = uuid("service-point/$spcode");
my $spname = $conf->{servicePointName} || $instname;

my $json = JSON->new();
$json->canonical();

# service point
my $sppath = "$dir/service-points.jsonl";
unlink $sppath;
open SPOUT, ">>$sppath";
my $sp = {
  id=>$spid,
  name=>$spname,
  code=>$spcode,
  discoveryDisplayName=>$spname,
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
print $c - 2 . " locations created...\n";

sub uuid {
  my $msg = shift;
  my $uuid_bin = create_uuid(UUID_SHA1, UUID_NS_DNS, $msg);
  my $uuid = uuid_to_string($uuid_bin);
  return $uuid;
}

sub parse_config {
  my $dir = shift;
  my $path = "$dir/config.json";
  local $/ = '';
  open CONF, $path or die "Can't find config.json file in \"$dir\"!";
  my $conf = decode_json(<CONF>);
}