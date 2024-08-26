use Getopt::Long;
use LWP::Simple;
use Fcntl;
use POSIX;
use Encode;
use Data::Dumper;
use Storable;
use File::Basename;
use File::Find;

# Usage : perl autojsbinding.pl --jsnativebindingpath <folder path where generated binding files present>

GetOptions(	"jsnativebindingsourcepath=s" => \$jsnativebindingsourcepath ,
            "jsnativebindingdestpath=s" => \$jsnativebindingdestpath);


my @jsnativebindfiles = ();	
find( 
	sub { push @jsnativebindfiles, $File::Find::name unless -d; }, 
	$jsnativebindingsourcepath
);

if( ! -d $jsnativebindingdestpath)
{
    mkdir $jsnativebindingdestpath;
}

for my $jsnativebindfile (@jsnativebindfiles) {
		if ($jsnativebindfile =~ /\.(h|m)$/) {
			system "cp '$jsnativebindfile' '$jsnativebindingdestpath'";
		}
}
