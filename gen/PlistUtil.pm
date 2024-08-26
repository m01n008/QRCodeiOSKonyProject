#==================================================================================================================================
#
#          FILE:  PlistUtil.pm
#
#         USAGE:
#
#   DESCRIPTION:  This module provides API's to edit Plist file, convert Plist file to JSON and vice versa.
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  Documentation/comments are not available for private methods because they are self explanatory :P
#        AUTHOR:  Hareesh.Veligeti Kh2032
#       COMPANY:  Kony Labs
#       VERSION:  1.0
#       CREATED:  06/06/2017 04:02:01 PM IST
#      REVISION:  ---
#==================================================================================================================================

package PlistUtil;
use strict;
use warnings FATAL => 'all';
use JSON;
use JSON_PLIST;

my $isAppNameUnicodeEncoded = 0;
my $isAppNameDecoded = 0;
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Private ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 createFileFromJSON

 Parameters  : Hash refernce and file path
 Returns     : None
 Description : Writes Hash reference a JSON file and then converts it to Plist
 				format and saves it to file path.
 				Don't worry we are deleting the temperary JSON :).

=cut

sub createFileFromJSON
{
	my ($json_ref, $fileName) = @_;
	$json_ref = encode_json($json_ref);
	open(my $fh, '>', "$fileName.json") or die "Could not open file $fileName.json $!";
	print $fh $json_ref;
	close $fh;
	$fileName =~ s/ /\\ /g;#replacing space as escape to make it look like path for shell cmd.
	my $JSONFileName = "$fileName.json";
	if($isAppNameDecoded == 1){
		`plutil -convert xml1 -o - $JSONFileName > $fileName`;
	}else{
		if($isAppNameUnicodeEncoded == 0){
			`plutil -convert xml1 -o - $JSONFileName > $fileName`;
		}
		elsif($isAppNameUnicodeEncoded == 1){
			`plutil -convert xml1 -o - $JSONFileName | sed "s/\\&amp;/\\&/g" > $fileName`;
		}
	}
	`rm $JSONFileName`;
}

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ End of Private methods ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ API's ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#JSONFromProjectFile
sub convertProjectFileToJSON
{
	my $content;
	my $fileName = shift;
	my $temp = $fileName;
	$temp =~ s/ /\\ /g;
	my $JSONFileName = "$temp.json";
	print `plutil -convert json -o - $temp > $JSONFileName`;
	open(my $fh, '<', "$fileName.json") or die "cannot open file $fileName";
	{
		local $/;
		$content = <$fh>;
	}
	close($fh);
	`rm $JSONFileName`;
	return decode_json($content);
}

#/////////////////////////////////////////////////////////////////////////////

=head2 convertPLISTFileToJSON

 Parameters  : Plist file path
 Returns     : Hash(JSON Dictionary)
 Description : converts plist to JSON file and returns perl Hash.

=cut


sub convertPLISTFileToJSON
{
	convertProjectFileToJSON(shift);
}


#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 createProjectFromJSON

 Parameters  : Hash refernce and file path
 Returns     : None
 Description : Refer to "createFileFromJSON".

=cut

sub createProjectFromJSON
{
	# Reads infoplist_configuration.json for key:decodeAppName
	# Reads infoplist_configuration.json for key:unicodeAppNameFlag
	sub setAppNameEncodingType
	{
		my $konyappunzipdir = "konyappunzipped";
		my $appPropFileLocation = $konyappunzipdir."/"."application.properties";

		# Reading application.properties file for platform of the app
		my $platformName = 'iphone';
		if ($appPropFileLocation !~ /^$/) {
			open FILE, "<$appPropFileLocation";
			while (my $line = <FILE>) {
				next if $line =~ /^#/;
					if ( $line !~ /^\s*$/ ) {
						chomp $line;
						my ($propName, $propValue) = split(/=/, $line);
						$propName =~ s/\s//g;
						if ($propName eq "konyapp.o.type") { # iphone 1, ipad 2, both 3
							if($propValue == 2){
								$platformName = 'ipad';
							}
						}
					}
			}
			close FILE;
		}

		#reading infoPlistConfigFile for the key decodeAppName
		#reading infoPlistConfigFile for the key unicodeAppNameFlag
		my $infoPlistConfigFile = $konyappunzipdir."/"."resources/".$platformName."/infoplist_configuration.json";
		if (-f $infoPlistConfigFile) {
			my %infoPlistConfigPerlDict = JSON_PLIST::readJsonFileAndConvertToPerlDict($infoPlistConfigFile);
			if(exists($infoPlistConfigPerlDict{'unicodeAppNameFlag'})){
				$isAppNameUnicodeEncoded = $infoPlistConfigPerlDict{'unicodeAppNameFlag'};
			}
			if(exists($infoPlistConfigPerlDict{'decodeAppName'})){
				$isAppNameDecoded = $infoPlistConfigPerlDict{'decodeAppName'};
				$isAppNameUnicodeEncoded = 0;
			}
		}
	}

	setAppNameEncodingType();
	my ($json_ref, $filename) = @_;
	createFileFromJSON($json_ref, $filename);
	$isAppNameDecoded = 0;
	$isAppNameUnicodeEncoded = 0;
}


#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 createPLISTFromJSON

 Parameters  : Hash refernce and file path
 Returns     : None
 Description : Refer to "createFileFromJSON".

=cut

sub createPLISTFromJSON
{
	my ($json_ref, $filename) = @_;
	createFileFromJSON($json_ref, $filename);
}

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~End of API's ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1;