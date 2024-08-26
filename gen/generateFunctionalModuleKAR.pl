#!/usr/bin/perl -w
use Getopt::Long;
use Data::Dumper;
use Fcntl;
use POSIX;
use LWP::Simple;
#use Cwd;

my $autoinject = 0;
GetOptions(	"injectloadmodulecalls" => \$autoinject );

if (@ARGV < 1) {
	print "Usage: generateFunctionalModuleKAR.pl  <URL to KBF file |local KBF file> --autoinject\n";
	exit -1;
}
# to Trim the strings
sub trim($)
{
	my $string = shift;
	$string =~ s/^\s+//;
	$string =~ s/\s+$//;
	return $string;
}
my $kbfZip = shift(@ARGV);
my $konyappunzipdir = "konyappunzippedfunctionalmodule";
my $targetKarFileName = $kbfZip;


  my $result = rindex($kbfZip, '/');
  if ($result ne -1){
  	$targetKarFileName = substr($kbfZip,$result+1);
  	my $result = rindex($targetKarFileName, '?');
  	if ($result ne -1){
  		$targetKarFileName = substr($targetKarFileName,0,$result);
  	}
  }
  $targetKarFileName =~ s/\.KAR$//;
  $targetKarFileName = $targetKarFileName.'FunctionalModule.KAR';

# Retrieve the KAR/KBF file and save as "konyapp" in filesystem
if ($kbfZip =~ /^http\:\/\//) {
	print "Retrieving  KAR/KBF...\n";
	## Appending extra parameter format=KAR to URL
	## This will fetch the KAR file from Latest IDE plugin 
	## with the old plugins, this fetches the KBF file
	$kbfZip = $kbfZip."&format=KAR";
	$kbfZipData = get $kbfZip;
	die 'Unable to retrieve KAR/KBF file!' unless defined $kbfZipData;
	$kbfZip = "konyapp";
	open ZIP,">$kbfZip" or die 'unable to create zipped file';
	print ZIP $kbfZipData;
	close ZIP;
}

# Determining KAR/KBF file type
open FILE, "file \"$kbfZip\"|";
chomp (@filetype = <FILE>);
close FILE;

if ( $filetype[0] =~ /Zip/) {

	print "KAR file retrieved\n";
	print "Extracting KAR...\n";
	system "rm -rf $konyappunzipdir";
	
	((system "unzip \"$kbfZip\" -d $konyappunzipdir > /dev/null") == 0) or die "Unable to extract the KAR file";
	print "Extracting KAR completed\n";

	if (-d $konyappunzipdir."/javascript"){

		my $sourceDir = $konyappunzipdir."/javascript/";
		my $targetDir = $sourceDir;

		#check for functionalmodules.xml file existance
		my @possibleFilenamesofFunctionalModuleXML = ('/resources/functionalModule.xml','/resources/functionalModules.xml','/functionalmodules/functionalModule.xml','/functionalmodules/functionalModules.xml');
        my $functionalModulefilename ;
        for my $xmlFilePath  (@possibleFilenamesofFunctionalModuleXML){
        	$functionalModulefilename = $konyappunzipdir.$xmlFilePath;    	           	
        	if (-e  $functionalModulefilename) {
        	if($functionalModulefilename =~/functionalModule\.xml/){
        		my $newFileName = $functionalModulefilename;
        		$newFileName=~ s/functionalModule\.xml$/functionalModules\.xml/;
        		system "mv -f $functionalModulefilename $newFileName ";
        		$functionalModulefilename = $newFileName;
        	}  
        		last;
        	}
        }

        if (-e  $functionalModulefilename){
        		print "Functional Modules configured KAR confirmed\n";
				print "Inserting loadfunctionalmodule calls in js files\n";
				if ($autoinject !=0) {
					insertLoadModuleAPICallsIntoScripts($functionalModulefilename,$sourceDir);	
				}
				print "Commenting view initialisation calls in startup.js and Adding initialisation functions to each view file\n";
				appendInitializationCodeToViews($sourceDir);

				#rezip files into KAR file
				chdir($konyappunzipdir) or die "cannot change: $!\n";

				((system "zip -r -X  \"../$targetKarFileName\"  * > /dev/null") == 0) or die "Unable to extract the KAR file";
				print "Generated KAR file :", $targetKarFileName ,"\n";
				chdir("../") or die "cannot change: $!\n";
				system "rm -rf $konyappunzipdir";

        }else {
        	system "rm -rf $konyappunzipdir";
        	die "KAR probable not configured for functional modules. i.e.functionalmodules.xml not found in KAR. \n";
        }
	} 
	print "Done.\n"; 
}


#Below function is used only  in 5.0 version. IDE takes care of this in 5.6.2 onwards.
#It creates a map of all forms as key and its corresponding module as value from functionalModule.xml. 
# further it scans all the js files and if a form variable is found being used, adds a loadFunctionalModule  call above it.
sub insertLoadModuleAPICallsIntoScripts{

	my $fnModuleFile = shift @_;
	my $jsFileDir = shift @_;
	use XML::Simple ':strict';

	my $xs = XML::Simple->new( KeepRoot => 0, KeyAttr => 1, ForceArray => 1 );
	my $modules = $xs->XMLin($fnModuleFile)->{functionalModule};
	my @formIds = ();
	my @scripFiles = ();
	my %moduleFormsMap = ();
	my %formModuleMap = ();

	my @empty =();
	$moduleFormsMap{"app"} = \@empty;
	my @allFileList = ();

	for my $i (0 .. $#$modules)
	{
		my $data = $modules->[$i]->{forms}[0];
	    
		if(defined $data){
		 	my @values = split(',', $data);
		 	$moduleFormsMap{$modules->[$i]->{name}} = \@values;
		  	foreach my $val (@values) {
		  		if(defined $val){
		  			push(@formIds,$val);
		    		$formModuleMap{$val} = $modules->[$i]->{name};
		  		}	    	
		  	}
		}
		$data = $modules->[$i]->{jsModules}[0];
		if(defined $data){
		 	my @values = split(',', $data);
		 	push(@scripFiles,@values);
		}
	}
	push(@allFileList,@formIds);
	push(@allFileList,@scripFiles);
#print "List of files \n",Dumper(@allFileList),"\n";
#print "Form Module Map\n",Dumper(\%formModuleMap),"\n";

	foreach my $key (@allFileList){
		if(!$key){
			next;
		}
		my $file = '';
		if( $key cmp 'app'){
			if($key =~/\.js$/){
				$file = $jsFileDir.'/'.$key;
			}else{
				$file = $jsFileDir.'/'.$key.'.js';
			}
		}
		else {
			if($key =~/\.js$/){
				$file = $jsFileDir.'/'.$key;
			}else{
				$file = $jsFileDir.'/'.$key.'.js';
			}
		}

		print "Processing file : $file\n";
		
# uncomment this to exclude adding loadfunctionalmodule calls to startup files	
#	my $tempKey = $key;
#	$tempKey=~ s/\.js$//;
#	   if($tempKey=~/^konylibrary$|^appskins$|^application$|^startup$/){
#    	print "Skipping  file : $file\n";
#    next;
#    }
		unless (-e $file) {
			print "skipping file $file. file not found\n";
			next;
		}
		open my $search_file, '<', $file   or die "Can't open file $file: $!";
		#Do Something  ##################################################################
		my @lines = <$search_file>;
		close $search_file or die $!;
		
		local $/ = undef;
		my $idx = 0;
		do {
			
			if($lines[$idx] =~ /^[ ]*\/\*/){
				while(!($lines[$idx] =~ /\*\//)){
					$idx++;
				}
			}
			
    		if(($lines[$idx] =~ /function .+/ or $lines[$idx] =~ /function\(/)and !($lines[$idx] =~ /^[ ]*\/\/*/)) {
    			while(!($lines[$idx] =~ /{/) and !($lines[$idx] =~ /^[ ]*\/\/*/)) {
    				$idx++;
    			}
    			my $openBraces = 0;
    			if($lines[$idx] =~ /}/){
    			    $openBraces = 0;
    			}
    			else {
    			    $openBraces = 1;
    			    $idx++;
    			}
        		my %tempModuleList = ();
        		my $functionInit = $idx;
        		while($openBraces > 0 and $idx < @lines){
        			if($lines[$idx] =~ /^[ ]*\/\*/){
						while(!($lines[$idx] =~ /\*\//)){
							$idx++;
						}
					}
        			if($lines[$idx] =~ /{/ and !($lines[$idx] =~ /^[ ]*\/\/*/)) {
        				#$openBraces+=($lines[$idx] =~ /{/g);
        				my $braces = ($lines[$idx] =~ tr/{//);
        				$openBraces+=$braces;
        			}
        			if($lines[$idx] =~ /}/ and !($lines[$idx] =~ /^[ ]*\/\/*/)) {
        				#$openBraces-=($lines[$idx] =~ /}/g);
        				my $braces = ($lines[$idx] =~ tr/}//);
        				$openBraces-=$braces;
        			}
        			
        			foreach my $keyForm (keys %formModuleMap){
	        			if(!($lines[$idx] =~ /^[ ]*\/\/*/) and ($lines[$idx] =~ /$keyForm\./ or $lines[$idx] =~ /$keyForm\[/)) {
    	    				#print "$idx   : $formModuleMap{$keyForm} : $functionInit \n";
        					if($formModuleMap{$keyForm} cmp $key) {
        						#print "****$functionInit  : $key : $formModuleMap{$keyForm}\n";
	        					$tempModuleList{$formModuleMap{$keyForm}} = "true"; 
	        				}
        				}
        			}
        			$idx++;
        			}
        			
        		foreach my $keyMod (keys %tempModuleList){
                    splice @lines, $functionInit, 0, "\n kony.modules.loadFunctionalModule(\"$keyMod\");\n";
        		}
    		}
    	$idx++;
		} until($idx >= @lines);
	#End ############################################################################
	
	open $search_file, '>', $file or die $!;
	print $search_file join("",@lines);
	close $search_file;
}
}


#  sub addFormInitialisationCodeToEachForm
#    1. opens startup.js file, 
#	 2.	Reads the appInit function and gets the list of initialisation and Global functions.
#	 3. Comments these initialisationa and global functions in startup.js and shifts them to the end of the corresponding file
#       so that it gets called when the actual js fle is loaded.
# Note: this function can be removed once 5.0 IDE starts providing these changes
sub appendInitializationCodeToViews {

	my $jsDirectory = shift @_;
	my $startupJavascriptPath=$jsDirectory.'startup.js';
	my $startToken    = qr/function appInit/;
	my $appInitFunctionFound = 0;
	my @matching_lines;
	my $endToken = qr/};/;
	my $initFnToken = qr/^initialize|Globals\(\);$/;

	unless(-e $startupJavascriptPath){
		return;
	}

 	open(my $fh, '<', $startupJavascriptPath) or die "unable to open file";
 	open my $out, '>', $startupJavascriptPath.'.new' or die "Can't write new file: $!";     
   	while (<$fh>) {
	   	my $lineToPrint = $_;
	   	if ($appInitFunctionFound == 0) {
	   		if (/$startToken/) {
	      		$appInitFunctionFound = 1;         
	      	}
	   	}elsif($appInitFunctionFound == 1 ){
	   		if (/$endToken/) {
	   			$appInitFunctionFound = 0
	   		}else{
			   	my $currentLine = $_;
			   	$currentLine =~ s/^\/\///; # remove comments // if presents
				$currentLine =~ s/^\s+//; 
				$currentLine =~ s/\s+$//;
				
	   			if($currentLine =~/$initFnToken/){
					push(@matching_lines,$currentLine);
					$lineToPrint =  "//".$_;
				}
			}
	    }
	    print $out $lineToPrint;
   }
	foreach my $jsFileToProcess (@matching_lines){
		my $originalFunction = $jsFileToProcess;
		#strip the actual function  of initialise and Globals()
		$jsFileToProcess =~s/^initialize|Globals\(\);|\(\);//gs;

		#check if function already inserted in file
		my $pathTojsFile = $jsDirectory.$jsFileToProcess.'.js';
		unless (-e $pathTojsFile) {
			print "skipping file $pathTojsFile. file not found\n";
			next;
		}
		open (FOO, $pathTojsFile) || die "ERROR Unable to open $pathTojsFile: $!\n";
		while (<FOO>) {$last = $_}
		close FOO;
		$last =~ s/^\s+//; 
		$last =~ s/\s+$//;
		my $ndx = index($last, "$originalFunction");
		if($ndx == -1){ # if function already added to last line, skip it
			open (F, ">>$pathTojsFile") || die "Could not open file: $!\n";
			#print "\n Adding $originalFunction to file $pathTojsFile\n";
			print F "\n",$originalFunction;
			close F;	
		}
	}

rename $startupJavascriptPath.'.new', $startupJavascriptPath;

}
