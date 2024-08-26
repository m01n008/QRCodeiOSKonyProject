#!/usr/bin/perl -w
use File::Basename;
use File::Find;

package extractModule;


our $isCompositeApp;

#============================================================================================
# recursiveCopy
# Takes 2 arguments and copies all the .js files in the source directory to destination directory by maintaining the exact folder sturcture. 
# argument 1 - source directory path
# argument 2 - target directory path 
#============================================================================================
sub recursiveCopy
{
	my ($sourceDirJs,$targetDirJS) = @_;
	opendir (DIR, $sourceDirJs) or die $!;
	my @fileNames = readdir(DIR);
    foreach my $file (@fileNames){
	    next if($file =~ /^\.$/);
		next if($file =~ /^\.\.$/);

       if(-f "$sourceDirJs/$file" && $file =~ /\.js$/){
       		system "cp -f $sourceDirJs/$file $targetDirJS/";	
       }
       elsif(-d "$sourceDirJs/$file"){
       	    if(! -d "$targetDirJS/$file"){ 
       			system "mkdir $targetDirJS/$file";
       		}
       		recursiveCopy("$sourceDirJs/$file","$targetDirJS/$file");
       }
       
    }					
	closedir(DIR);		
}

#============================================================================================
# relativename
# Takes 2 arguments and returns the relative path from absolute file path. 
# argument 1 - basepath
# argument 2 - absolute file path
# returns relative path from absolute file path. 
#============================================================================================
sub relativename
{
	my ($path,$relativeFromPath) = @_;
	return substr($path,index($path,$relativeFromPath)+length($relativeFromPath)+1,length($path));
}

#============================================================================================
# getStartupFileList
# Takes 2 arguments and returns an array which holds the js filePaths. 
# argument 1 - directory which contains the js files
# argument 2 - array which holds the js files list.
# returns an array which holds the js file paths. 
#============================================================================================
sub getStartupFileList{
	my ($iphoneStartupDir,@startupFiles) = @_;
	
	my $_startupFiles;
	my @tempStartupFiles;
	
	if($extractModule::isCompositeApp){
		$_startupFiles = `find $iphoneStartupDir -name "*.js"`;
		@tempStartupFiles = sort split('\n', $_startupFiles);
		for my $scriptFullPath (@tempStartupFiles) {
	          push @startupFiles, relativename($scriptFullPath,$iphoneStartupDir);
	      }
	}
	else{
		$_startupFiles = $iphoneStartupDir."/*.js";
		@tempStartupFiles = glob $_startupFiles;
		for my $scriptFullPath (@tempStartupFiles) {
	    	push @startupFiles, File::Basename::basename($scriptFullPath);
		}
	}
	
	return @startupFiles;
}

#============================================================================================
# copyDirectory
# Takes 2 arguments and copies all the .js files in the source directory to destination directory. 
# argument 1 - source directory path
# argument 2 - target directory path 
#============================================================================================
sub copyDirectory{
	my ($sourceDirectory,$targetDirectory) = @_;
	
	if($extractModule::isCompositeApp){
	 	recursiveCopy($sourceDirectory,$targetDirectory);
	}
	else{
		system "cp -f $sourceDirectory/*.js $targetDirectory/";
	}	
	
}


#============================================================================================
# moveFilesToResourcesForGivenDirName
# Takes 3 arguments and moves all files in directory that matches with given directory name
# argument 1 - Root/full path of directory excluding directory name
# argument 2 - Directory name from which files will be moved
# argument 3 - Name to be matched
# returns list of file names that are moved. 
#============================================================================================

sub moveFilesToResourcesForGivenDirName{
    my @retVals; 
    if ($#_ != 3)
    {
        print "Invalid number of arguments passed to moveFilesToResourcesForGivenDirName.\n";
        return
    }
    my $root = $_[0];
    my $resource = $_[1];
    my $dirName = $_[2];
    my $rscHandler = $_[3];
    if ($resource eq $dirName)
    {
        $root = $root."/".$resource;
        #print "***$root\n";
        opendir(DIR, $root) or die $!;
        foreach $file (readdir(DIR))
        {
            #print "***$file\n";
            if (not -d $file)
            {
                $temp = $root."/".$file;
                `mv $temp $rscHandler->{_NLResources}/`;
                push(@retVals, $temp)
            }
        }
        closedir(DIR);
    }
    return @retVals;
}
1;
