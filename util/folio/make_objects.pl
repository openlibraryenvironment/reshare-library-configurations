#! /usr/bin/perl

use strict;
use warnings;
use UUID::Tiny ':std';
use JSON;
use File::Basename;
use Getopt::Std;
use Data::Dumper;

our($opt_l, $opt_c, $opt_m, $opt_n);
$opt_m = -1;
getopts('l:c:m:n');

my $locfile = shift || die "Usage: make_objecst.pl [ -l <starting line num>, -c <code column num>, -n <name column num> -m <library match column> ] <tab separted locations file> [ <harvester confgs dir> ]";
my $hconfig = shift;
my $dir = dirname($locfile);
my $conf = parse_config($dir);

my $instcode = $conf->{institutionCode} or die "The config property \"institutionCode\" is required!";
my $instid = uuid($instcode);
my $instname = $conf->{institutionName} or die "The config property \"institutionName\" is required!";

my $campcode = $conf->{campusCode} ? $instcode . "/" . $conf->{campusCode} : "$instcode/$instcode";
my $campid = uuid($campcode);
my $campname = $conf->{campusName} || $instname; 

my $libcode = $conf->{libraryCode} || $instcode;
my $libname = $conf->{libraryName} || $instname;
my @libcodes = split(/,\s*/, $libcode);
my @libnames = split(/,\s*/, $libname);
my $libraries = {};
my $x = 0;
foreach (@libcodes) {
  my $code = "$campcode/$_";
  $libraries->{$code} = $libnames[$x];
  $x++;
}

my $locprefix = $conf->{locationPrefix} || $instname;

my $spcode = $conf->{servicePointCode} || $instcode;
my $spid = uuid("service-point/$spcode");
my $spname = $conf->{servicePointName} || $instname;

my $idname = $conf->{identifierName} || "Reshare_$instcode";
my $idid = uuid("identifier/$idname");

my $file_created = {};
my $json = JSON->new();
$json->canonical();
my @xsllocs;

# service point
my $sp = {
  id=>$spid,
  name=>$spname,
  code=>$spcode,
  discoveryDisplayName=>$spname,
  pickupLocation=>'true',
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
foreach (sort keys %{ $libraries }) {
  my $libcode = $_;
  my $libid = uuid($libcode);
  my $libname = $libraries->{$_};
  my $lib = {
    id=>$libid,
    name=>$libname,
    code=>$libcode,
    campusId=>$campid
  };
  write_jsonl('04-libraries', $lib);
  make_locations($instid, $campid, $libid, $libcode, $libname);
}

make_codes($instid, $idid, @xsllocs);

sub make_locations {
  my $instid = shift;
  my $campid = shift;
  my $libid = shift;
  my $libcode = shift;
  my $libname = shift;
  open LOC, $locfile or die "Can't find location file";
  my $c = 0;
  my $locttl = 0;
  my $skip = $opt_l || 0;
  my $lib_el = ($opt_m =~ /[0-9]/) ? $opt_m : -1;
  my $name_el = $opt_n || 1;
  my $code_el = $opt_c || 0;
  my $match_code = $libcode;
  $match_code =~ s/^.+\///;
  my $seen = {};
  my $names_used = {};
  while (<LOC>) {
    $c++;
    next if $c <= $skip;
    chomp;
    my @cols = split(/\t/);
    my $code = "$libcode/$cols[$code_el]";
    my $name = $cols[$name_el] || $cols[$code_el];
    my $libmatch = $cols[$lib_el] || '';
    next if $lib_el > -1 && $libmatch !~ /$match_code/;
    if ($lib_el > -1) {
      $name = "$libname $name";
    }
    # $name =~ s/^$libname\s*//;  # strip the library name from the front of location name
    if ($seen->{$code}) {
      print "Found duplicate code: $code. Skipping...\n";
      next;
    }
    if ($names_used->{$name}) {
      $name .= " ($cols[$code_el])";
    }
    my $loc = {
      id=>uuid($code),
      code=>$code,
      name=>"$locprefix - $name",
      isActive=>'true',
      institutionId=>$instid,
      campusId=>$campid,
      libraryId=>$libid,
      primaryServicePoint=>$spid,
      servicePointIds=>[ $spid ]
    };
    write_jsonl('05-locations', $loc);
    $seen->{$code} = 1;
    $names_used->{$name} = 1;
    $locttl++;
    push @xsllocs, $loc;
  }

  # add unmapped location
  my $umcode = "$libcode/UNMAPPED";
  my $libsect = '';
  if ($opt_m > -1 && $locprefix ne $libname) {
    $libsect = " $libname"
  }
  my $umname = "$locprefix -$libsect Unmapped location";
  my $umloc = {
      id=>uuid($umcode),
      code=>$umcode,
      name=>"$umname",
      isActive=>'true',
      institutionId=>$instid,
      campusId=>$campid,
      libraryId=>$libid,
      primaryServicePoint=>$spid,
      servicePointIds=>[ $spid ]
    };
  write_jsonl('05-locations', $umloc);
  $locttl++;
  push @xsllocs, $umloc;
    
  print "$locttl locations created for $libname\n";

}

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

sub make_codes {
  my $inst_id = shift;
  my $idid = shift;
  my $when;
  foreach (@_) {
    my $code = $_->{code};
    $code =~ s/(.+?\/){1,3}//;
    my $libcode = $_->{code};
    $libcode =~ s/.+\/.+\/(.+)\/.+/$1/;
    my $id = $_->{id};
    if ($_ eq $_[-1] && $code eq 'UNMAPPED') {
      $when .= "\n        <xsl:otherwise>$id</xsl:otherwise> <!-- Unmapped ($libcode) -->";
    } elsif ($code eq 'UNMAPPED') {
      $when .= "\n        <xsl:when test=\"starts-with(., '$libcode')\">$id</xsl:when> <!-- Unmapped ($libcode)-->";
    } else {
      $when .= "\n        <xsl:when test=\".='$code'\">$id</xsl:when>";
    }
  }
  my $xsl = <<"END_XSL";
<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output indent="yes" method="xml" version="1.0" encoding="UTF-8"/>
  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <!-- Map legacy code for the library/institution to a FOLIO resource identifier
       type UUID. Used for qualifying a local record identifier with the library
       it originated from in context of a shared index setup where the Instance
       represents bib records from multiple libraries.
  -->
  <xsl:template match="//identifierTypeIdHere">
    <identifierTypeId>$idid</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>$when
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>$instid</institutionId>
  </xsl:template>

</xsl:stylesheet>
END_XSL

  my $hdir = $dir;
  if ($hconfig) {
    $hconfig =~ s/\/$//;
    my $iname = $instname;
    $iname =~ s/'//g;
    $iname =~ s/[ ,.]+/-/g;
    $iname = lc $iname;
    mkdir "$hconfig/$iname";
    $hdir = "$hconfig/$iname";
    mkdir "$hdir/data";
  }
  my $xslfile = "$hdir/library-codes.xsl";
  print "Creating codes file at $xslfile\n";
  open XSL, ">$xslfile";
  print XSL $xsl;
  close XSL;
}