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
my $libname = $conf->{libraryName} || $instname;

my $spcode = $conf->{servicePointCode} || $instcode;
my $spid = uuid("service-point/$spcode");
my $spname = $conf->{servicePointName} || $instname;

my $idname = $conf->{identifierName} || "Reshare_$instcode";
my $idid = uuid("identifier/$idname");

my $file_created = {};
my $json = JSON->new();
$json->canonical();

# service point
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
write_jsonl('00-service-points', $sp);

# identifier-type
my $ident = {
  id=>$idid,
  name=>$idname,
  source=>'RESHARE',
};
write_jsonl('01-identifier-types', $ident);

# institution
my $inst = {
  id=>$instid,
  name=>$instname,
  code=>$instcode,
};
write_jsonl('02-institutions', $inst);

# campus
my $camp = {
  id=>$campid,
  name=>$campname,
  code=>$campcode,
  institutionId=>$instid
};
write_jsonl('03-campuses', $camp);

# library
my $lib = {
  id=>$libid,
  name=>$libname,
  code=>$libcode,
  campusId=>$campid
};
write_jsonl('04-libraries', $lib);

# locations
open LOC, $locfile or die "Can't find location file";
my $c = 0;
while (<LOC>) {
  $c++;
  next if $c <= 2;
  chomp;
  my @cols = split(/\t/);
  my $name = $cols[1];
  $name =~ s/^$libname\s*//;  # strip the library name from the front of location name
  print $name . "\n";
  my $code = "$libcode/$cols[0]"; 
  my $loc = {
    id=>uuid($code),
    code=>$code,
    name=>"$instname - $name",
    isActive=>true,
    institutionId=>$instid,
    campusId=>$campid,
    libraryId=>$libid,
    primaryServicePoint=>$spid,
    servicePointIds=>[ $spid ]
  };
  write_jsonl('05-locations', $loc);
}
print $c - 2 . " locations created...\n";

sub write_jsonl {
  my $name = shift;
  my $obj = shift;
  my $json = $json->encode($obj);
  my $path = "$dir/$name.jsonl";
  if (!$file_created->{$name}) {
    unlink $path;
    print "Writing $name to $path\n";
    $file_created->{$name} = 1;
  }
  open JOUT, ">>$path";
  print JOUT $json . "\n"; 
  close JOUT;
}

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