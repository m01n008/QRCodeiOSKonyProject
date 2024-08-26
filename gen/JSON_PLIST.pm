#!/usr/bin/perl -w
package JSON_PLIST;
use JSON;
use Encode;
use autobox::universal qw(type);

sub WriteJsonDictToPlist
{
    my @plistData = ();
    my $perlDictRef = shift;
    my $PLISTFILE = shift;
    my $destPlist = shift;
    while (<$PLISTFILE>) {
        my $line = $_;
        my $keyFound = isKeyFoundInJSONDict($line, $perlDictRef);
        if($keyFound)
        {
            my $subtreestart = <$PLISTFILE>;
            if ($subtreestart =~ /<dict>/)
            {
                $PLISTFILE = skipEntireDict(\*$PLISTFILE);
            }
            elsif($subtreestart =~ /<array>/)
            {
                $PLISTFILE = skipEntireArray(\*$PLISTFILE);
            }
        }
        else
        {
            push(@plistData,$line);
        }
    }
    close $PLISTFILE;
    
    open my $fh,'>'.$destPlist or die "Can not Info.plist file for write!";
    for (my $i = 0; $i < @plistData-2; $i++)
    {
        print $fh $plistData[$i];
    }
    WriteDict($perlDictRef, \*$fh);
    print $fh "</dict>\n";
    print $fh "</plist>";
    close $fh;
}

#Start Reading JSON FILE
sub readJsonFileAndConvertToPerlDict
{
    my %perlDict;
    my $jsonFile = shift;
    my $perlDictRef;
    my $fileName;
    ($fileName = $jsonFile) =~s/.*\///;
    eval {
        $jsonContent = getJSONContent($jsonFile);
    };
    if($@)#catches the error thrown by eval
    {
        print "Couldn't open ".$fileName." : $!\n";
    }
    else
    {
        # Bug: MADP 3775: Process only valid JSON Content, for invalid json throws exception
        eval {
            print $fileName." file found\n";
            utf8::encode($jsonContent);
            $perlDictRef = decode_json $jsonContent;
            %perlDict = %$perlDictRef;
        };
        if($@)#catches the error thrown by eval
        {
            print "Waring: Invalid Json Found\n";
        }
    }
    return %perlDict;
}

#Getting the content from json file
sub getJSONContent
{
    $filename = shift;
    open(F, "<","$filename") or die "Couldn't open file file.txt, $!";
    local $/ = undef;           # Read entire file at once
    $contents = <F>;            # Return file as one single `line'
    close F;
    return $contents;
}

#start execute plist file
sub takeBackupIfNeedAndRestore
{
    my $jsonFile = shift;
    if(!-f $jsonFile)
    {
        if(-f "jsinfobkup.plist")
        {
            system "cp jsinfobkup.plist ../KonyJS/Info.plist";
            system "rm jsinfobkup.plist";
        }
        
        if(-f "bkup.plist")
        {
            system "cp bkup.plist ../Info.plist";
            system "rm bkup.plist";
        }
        return;
    }
    
    if(-f "jsinfobkup.plist")
    {
        system "cp jsinfobkup.plist ../KonyJS/Info.plist";
    }
    else
    {
        system "cp ../KonyJS/Info.plist jsinfobkup.plist";
    }
    
    if(-f "bkup.plist")
    {
        system "cp bkup.plist ../Info.plist";
    }
    else
    {
        system "cp ../Info.plist bkup.plist";
    }
}

sub isKeyFoundInJSONDict
{
    my $argKey      = shift;
    my $perlDictRef = shift;
    my %perlDict = %$perlDictRef;
    if(!%perlDict)
    {
        return 0;
    }
    $argKey =~ s/\t//g;# removes \t
    $argKey =~ s/\n//g;# removes \n
    for my $key (keys %perlDict)
    {
        my $keyStr = "<key>".$key."</key>";
        if($argKey eq $keyStr)
        {
            if( exists($perlDict{$key}) )
            {
                return 1;
            }
        }
    }
    return 0;
}

sub WriteDict
{
    my $objectref = shift;
    my $PLISTFILE = shift;
    my %object = %$objectref;
    foreach my $key  (keys %object)
    {
        my $value = $object{$key};
        writeValue($key,$value, $PLISTFILE);
    }
}

sub WriteArray
{
    my $objectref = shift;
    my $PLISTFILE = shift;
    my @object = @$objectref;
    for $value (@object)
    {
        writeValue("NOKEY",$value,$PLISTFILE);
    }
}

sub writeValue
{
    my $key = shift;
    my $value = shift;
    my $PLISTFILE = shift;
    if(!defined $value)
    {
        #print "$key => null\n";
        return;
    }
    if($key ne "NOKEY")
    {
        print $PLISTFILE "<key>$key</key>\n";
    }
    if( ref($value) eq "HASH")
    {
        print $PLISTFILE "<dict>\n";
        WriteDict($value, $PLISTFILE);
        print $PLISTFILE "</dict>\n";
    }
    elsif( ref($value) eq "ARRAY")
    {
        print $PLISTFILE "<array>\n";
        WriteArray($value, $PLISTFILE);
        print $PLISTFILE "</array>\n";
    }
    elsif( ref(\$value) eq "SCALAR")
    {
        if(type($value) eq INTEGER)
        {
            print $PLISTFILE "<integer>$value</integer>\n";
        }
        elsif(type($value) eq FLOAT)
        {
            print $PLISTFILE "<real>$value</real>\n";
        }
        elsif(type($value) eq STRING)
        {
            if($value =~ /date:/)
            {
                $l = length($value);
                $substr = substr $value, 5, $l-5;
                print $PLISTFILE "\t<date>$substr</date>\n";
            }
            elsif($value =~ /data:/)
            {
                $l = length($value);
                $substr = substr $value, 5, $l-5;
                print $PLISTFILE "\t<data>$substr</data>\n";
            }
            else
            {
                print $PLISTFILE "\t<string>$value</string>\n";
            }
        }
    }
    elsif(JSON::is_bool($value))
    {
        if($value==0)
        {
            print $PLISTFILE "<false/>\n";
        }
        else
        {
            print $PLISTFILE "<true/>\n";
        }
    }
}

sub skipEntireArray
{
    my $loopvar = "<array>";
    my $cou=0;
    my $PLISTFILE = shift;
    do
    {
        if ($loopvar =~ /<array>/)
        {
            $cou++;
        }
        elsif($loopvar =~ /<\/array>/)
        {
            $cou--;
        }
        if($cou!=0)
        {
            $loopvar = <$PLISTFILE>;
        }
    }while($cou!=0);
    return \*$PLISTFILE;
}

sub skipEntireDict
{
    my $loopvar = "<dict>";
    my $cou=0;
    my $PLISTFILE = shift;
    do
    {
        if ($loopvar =~ /<dict>/)
        {
            $cou++;
        }
        elsif($loopvar =~ /<\/dict>/)
        {
            $cou--;
        }
        if($cou!=0)
        {
            $loopvar = <$PLISTFILE>;
        }
    }while($cou!=0);
    return \*$PLISTFILE;
}

1;
