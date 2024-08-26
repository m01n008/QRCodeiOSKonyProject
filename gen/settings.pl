#!/usr/bin/perl -w

use lib '.';
use Data::Dumper;
use XML::Parser;
use XML::Parser::EasyTree;

# create object
$XML::Parser::EasyTree::Noempty=1;
my $p=new XML::Parser(Style=>'EasyTree');

my $xmldatatree=$p->parsefile("konyappunzipped/Settings.properties.xml");

my $settingname;
my $settingreadonly;
my $settingdisplayname;
my $settingdisplayoption;
my $settingvalue;
my $needsBackgroundFetchHandler = "NO";
my $temp;
my $basePathForProjectAsset = $ARGV[1];

my $infoPlistFile = $basePathForProjectAsset."/Info.plist";
my $jsInfoPlistFile = $basePathForProjectAsset."/KonyJS/Info.plist";

#reading the properties and writing it into Root.plist	
my $propname = $$xmldatatree[0]->{'name'};
if ($propname =~ "settings") 
{
	$propname = $$xmldatatree[0]->{'content'}[1]->{'name'};
	if ($propname && $propname eq "applicationsettings") 
	{
		mkdir "Settings.bundle";
		
		open PLISTFILE, '>Root.plist' or die "Can not open project file to write!";
		print PLISTFILE "<plist>\n";
		print PLISTFILE "<dict>\n";
		print PLISTFILE "\t<key>PreferenceSpecifiers</key>\n";
		print PLISTFILE "\t<array>\n";
		
		$temp = $$xmldatatree[0]->{'content'}[1]->{'content'};
		foreach (@{$temp})
		{
			print PLISTFILE "\t\t<dict>\n";
			
			$settingname = $_->{'attrib'}->{'name'};
			$settingdisplayoption = $_->{'attrib'}->{'displayoption'};
			$settingdisplayname = $_->{'attrib'}->{'displayname'};
			$settingreadonly = $_->{'attrib'}->{'readonly'};
			$propname = $_->{'content'}[0]->{'name'};
			
			if ($settingdisplayoption eq "label" || $settingdisplayoption eq "switch" || $settingdisplayoption eq "textbox" || $settingdisplayoption eq "singleselect") 
			{
				print PLISTFILE "\t\t\t<key>Key</key>\n";
				print PLISTFILE "\t\t\t<string>$settingname</string>\n";
				
				if ($propname eq "value") {
					print PLISTFILE "\t\t\t<key>DefaultValue</key>\n";
					$settingvalue = $_->{'content'}[0]->{'content'}[0]->{'content'};
					
					if ($_->{'content'}[0]->{'attrib'}->{'type'} eq "bool") {
                        if (!($settingvalue && ($settingvalue =~ /^true$/ || $settingvalue =~ /^false$/))) {
                            $settingvalue = "false";
                        }
						$settingvalue = $settingvalue."/";
						print PLISTFILE "\t\t\t<$settingvalue>\n";
					} else {
						print PLISTFILE "\t\t\t<string>$settingvalue</string>\n";
					}
					
					if ($settingdisplayoption eq "textbox") {
						my $keyboardtype = $_->{attrib}->{keyboardtype};
						print PLISTFILE "\t\t\t<key>KeyboardType</key>\n";
						if ($keyboardtype eq "alphabet") {
							print PLISTFILE "\t\t\t<string>Alphabet</string>\n";
						} elsif ($keyboardtype eq "numbersandpunctuation") {
							print PLISTFILE "\t\t\t<string>NumbersAndPunctuation</string>\n";
						} elsif ($keyboardtype eq "numberpad") {
							print PLISTFILE "\t\t\t<string>NumberPad</string>\n";
						} elsif ($keyboardtype eq "url") {
							print PLISTFILE "\t\t\t<string>URL</string>\n";
						} elsif ($keyboardtype eq "emailaddress") {
							print PLISTFILE "\t\t\t<string>EmailAddress</string>\n";
						}
					}
				} else {
					
					print PLISTFILE "\t\t\t<key>Titles</key>\n";
					print PLISTFILE "\t\t\t<array>\n";
					foreach (@{$_->{'content'}[0]->{'content'}})
					{
						if ($propname eq "valuearray") {
							print PLISTFILE "\t\t\t\t<string>$_->{'content'}[0]->{'content'}</string>\n";
						} elsif ($propname eq "valuedict") {
							print PLISTFILE "\t\t\t\t<string>$_->{'content'}[0]->{'content'}[0]->{'content'}</string>\n";
						}
					}
					print PLISTFILE "\t\t\t</array>\n";
					print PLISTFILE "\t\t\t<key>Values</key>\n";
					print PLISTFILE "\t\t\t<array>\n";
					foreach (@{$_->{'content'}[0]->{'content'}})
					{
						my $selected;
						if ($propname eq "valuearray") {
							$selected = $_->{attrib}->{selected};
							if ($selected eq "true") {
								$settingvalue = $_->{'content'}[0]->{'content'};
							}
							print PLISTFILE "\t\t\t\t<string>$_->{'content'}[0]->{'content'}</string>\n";
						} elsif ($propname eq "valuedict") {
							$selected = $_->{content}[1]->{attrib}->{selected};
							if ($selected eq "true") {
								$settingvalue = $_->{'content'}[1]->{'content'}[0]->{'content'};
							}
							print PLISTFILE "\t\t\t\t<string>$_->{'content'}[1]->{'content'}[0]->{'content'}</string>\n";
						}
					}
					print PLISTFILE "\t\t\t</array>\n";
					
					print PLISTFILE "\t\t\t<key>DefaultValue</key>\n";
                    
                    #If default value is not provided, then set the first item as default
                    if(!$settingvalue) {
                        if ($propname eq "valuearray") {
                            $settingvalue = $_->{content}[0]->{content}[0]->{content}[0]->{content};
                        } elsif ($propname eq "valuedict") {
                            $settingvalue = $_->{content}[0]->{content}[0]->{content}[1]->{content}[0]->{content};
                        }
                    }
					print PLISTFILE "\t\t\t<string>$settingvalue</string>\n";
				}
				
			} elsif ($settingdisplayoption eq "multiselect") {
				#Display type is multiselect, So a childpane is needed
				
				print PLISTFILE "\t\t\t<key>File</key>\n";
				print PLISTFILE "\t\t\t<string>$settingname</string>\n";
				
				my $childfilename = $settingname.".plist";
				open CHILDPLISTFILE, ">$childfilename" or die "Can not open child plist file!"; #hardcoded to be changed
				print CHILDPLISTFILE "<plist>\n";
				print CHILDPLISTFILE "<dict>\n";
				print CHILDPLISTFILE "\t<key>PreferenceSpecifiers</key>\n";
				print CHILDPLISTFILE "\t<array>\n";
				
				foreach (@{$_->{'content'}[0]->{'content'}})
				{
					print CHILDPLISTFILE "\t\t<dict>\n";
					print CHILDPLISTFILE "\t\t\t<key>Key</key>\n";
					
					if ($propname eq "valuearray") {
						print CHILDPLISTFILE "\t\t\t<string>$_->{'content'}[0]->{'content'}</string>\n";
					} elsif ($propname eq "valuedict") {
						print CHILDPLISTFILE "\t\t\t<string>$_->{'content'}[0]->{'content'}[0]->{'content'}</string>\n";
					}
					
					print CHILDPLISTFILE "\t\t\t<key>Title</key>\n";
					
					if ($propname eq "valuearray") {
						print CHILDPLISTFILE "\t\t\t<string>$_->{'content'}[0]->{'content'}</string>\n";
					} elsif ($propname eq "valuedict") {
						print CHILDPLISTFILE "\t\t\t<string>$_->{'content'}[1]->{'content'}[0]->{'content'}</string>\n";
					}
					
					print CHILDPLISTFILE "\t\t\t<key>DefaultValue</key>\n";
					my $selected;
					if ($propname eq "valuearray") {
						$selected = $_->{attrib}->{selected};
						if ($selected eq "true") {
							print CHILDPLISTFILE "\t\t\t<true/>\n";
						} else {
							print CHILDPLISTFILE "\t\t\t<false/>\n";
						}
					} elsif ($propname eq "valuedict") {
						$selected = $_->{content}[1]->{attrib}->{selected};
						if ($selected eq "true") {
							print CHILDPLISTFILE "\t\t\t<true/>\n";
						} else {
							print CHILDPLISTFILE "\t\t\t<false/>\n";
						}
					}
					
					print CHILDPLISTFILE "\t\t\t<key>Type</key>\n";
					print CHILDPLISTFILE "\t\t\t<string>PSToggleSwitchSpecifier</string>\n";
					print CHILDPLISTFILE "\t\t</dict>\n";
				}

				print CHILDPLISTFILE "\t</array>\n";
				print CHILDPLISTFILE "</dict>\n";
				print CHILDPLISTFILE "</plist>\n";
				close CHILDPLISTFILE;
				
				system "mv $childfilename Settings.bundle/";
			}
			
			#writing into Root.plist
			print PLISTFILE "\t\t\t<key>Type</key>\n";
			if ($settingdisplayoption eq "switch") {
				print PLISTFILE "\t\t\t<string>PSToggleSwitchSpecifier</string>\n";
			} elsif ($settingdisplayoption eq "label") {
				print PLISTFILE "\t\t\t<string>PSTitleValueSpecifier</string>\n";
			} elsif ($settingdisplayoption eq "textbox") {
				print PLISTFILE "\t\t\t<string>PSTextFieldSpecifier</string>\n";
			} elsif ($settingdisplayoption eq "singleselect") {
				print PLISTFILE "\t\t\t<string>PSMultiValueSpecifier</string>\n";
			} elsif ($settingdisplayoption eq "multiselect") {
				print PLISTFILE "\t\t\t<string>PSChildPaneSpecifier</string>\n";
			} elsif ($settingdisplayoption eq "group") {
				print PLISTFILE "\t\t\t<string>PSGroupSpecifier</string>\n";
			}
			
			print PLISTFILE "\t\t\t<key>Title</key>\n";
			print PLISTFILE "\t\t\t<string>$settingdisplayname</string>\n";
			print PLISTFILE "\t\t</dict>\n";
		}
		
		print PLISTFILE "\t</array>\n";
		print PLISTFILE "</dict>\n";
		print PLISTFILE "</plist>\n";
		close PLISTFILE;
		
		system "mv Root.plist Settings.bundle/";
		system "mv Settings.bundle $basePathForProjectAsset/NLResources/";
	}
	
	$propname = $$xmldatatree[0]->{'content'}[0]->{'name'};
	if ($propname && $propname eq "platformsettings") 
	{
		my @plistData;
		open(PLISTFILE, '<', $infoPlistFile) or die "Can not open $infoPlistFile file!, $!";
		#print "File  opened successfully!\n";
		while (<PLISTFILE>) {
			$line = $_;
			
            if ($line =~ /<key>CFBundleURLTypes<\/key>/) {
				#CFBundleURLTypes is two-level array
				my $subtreestart = <PLISTFILE>;
				if ($subtreestart =~ /<array>/) {
					while((my $loopvar = <PLISTFILE>) !~ /<\/array>/) 
					{
						if ($loopvar =~ /<array>/) {
							while((my $loopvar1 = <PLISTFILE>) !~ /<\/array>/) 
							{
							}
						}
					}
				}
            } elsif ($line =~ /<key>UIBackgroundModes<\/key>/) {
                # UIBackgroundModes
                my $subtreestart = <PLISTFILE>;
                if ($subtreestart =~ /<array>/) {
                    while((my $loopvar = <PLISTFILE>) !~ /<\/array>/) {};
                }
            } elsif ($line =~ /<key>UIViewEdgeAntialiasing<\/key>/) {
                my $ignored = <PLISTFILE>
            } else {
				push(@plistData,$line);
			}
		}
		close PLISTFILE;
		
		open PLISTFILE, '>Info.plist' or die "Can not open Info.plist file to write!, $!";
		for (my $i = 0; $i < @plistData -2; $i++) 
		{
			$line = $plistData[$i];
			print PLISTFILE $line;
		}
		
		$temp = $$xmldatatree[0]->{'content'}[0]->{'content'};
		my $type;
		my $name;
		my $value;
		my $key;
		foreach (@{$temp}) 
		{
			$name = $_->{'attrib'}->{'name'};
			
			# If the setting name is "urlscheme" then create the key structure for Info.plist uniquely here.
			# Otherwise handle in the generic logic in the else block.
			if ($name eq "urlscheme") {
				
				my $scheme = $_->{content}[0]->{content}[0]->{content};
				
                if ($scheme && $scheme !~ /^$/) {
                
				print PLISTFILE "\t<key>CFBundleURLTypes</key>\n";
				print PLISTFILE "\t<array>\n";
				print PLISTFILE "\t\t<dict>\n";
				print PLISTFILE "\t\t\t<key>CFBundleTypeRole</key>\n";
				print PLISTFILE "\t\t\t<string>Editor</string>\n";
				print PLISTFILE "\t\t\t<key>CFBundleURLName</key>\n";
				print PLISTFILE "\t\t\t<string>$ARGV[0]</string>\n";
				print PLISTFILE "\t\t\t<key>CFBundleURLSchemes</key>\n";
				print PLISTFILE "\t\t\t<array>\n";
				print PLISTFILE "\t\t\t\t<string>$scheme</string>\n";
				print PLISTFILE "\t\t\t</array>\n";
				print PLISTFILE "\t\t</dict>\n";
				print PLISTFILE "\t</array>\n";
                    
                }
				
			} elsif ($name eq "backgroundmodes") {
                #backgroundmodes
                my $type = $_->{'content'}[0]->{'attrib'}->{'type'};
                my $value = $_->{'content'}[0]->{'content'}[0]->{'content'};
                if($type eq "string") {
                    if($value eq "Fetch") {
                        $needsBackgroundFetchHandler = "YES";
                        print PLISTFILE "\t<key>UIBackgroundModes<\/key>\n";
                        print PLISTFILE "\t<array>\n";
                        print PLISTFILE "\t\t<string>fetch</string>\n";
                        print PLISTFILE "\t</array>\n";
                    }
                }
            }elsif ($name eq "antialiaseddrawing") {
                my $type = $_->{'content'}[0]->{'attrib'}->{'type'};
                my $value = $_->{'content'}[0]->{'content'}[0]->{'content'};
                if ($type eq "bool") {
                    if (!($value && ($value =~ /^true$/ || $value =~ /^false$/))) {
                        $value = "false";
                    }
                    $value = $value."/";
                    print PLISTFILE "\t<key>UIViewEdgeAntialiasing<\/key>\n";
                    print PLISTFILE "\t<$value>\n";
                }
            }
		}
        
		print PLISTFILE "</dict>\n";
		print PLISTFILE "</plist>\n";
		close PLISTFILE;
		
        #Below block changes any setting names as required.
#        open PLISTFILE, '<Info.plist' or die "Can not open Info.plist file!";
#        my $plistArray;
#        while (<PLISTFILE>) {
#            $line = $_;
#            push(@plistArray,$line);
#        }
#        close PLISTFILE;
#
#        open PLISTFILE, '>Info.plist' or die "Can not open Info.plist file!";
#        for (my $i = 0; $i < @plistArray; $i++)
#        {
#            $line = $plistArray[$i];
#            if ($line =~ /<key>antialiaseddrawing<\/key>/) {
#                print PLISTFILE "\t<key>UIViewEdgeAntialiasing</key>\n";
#            } else {
#                print PLISTFILE $line;
#            }
#        }
#        close PLISTFILE;

		system "cp Info.plist $infoPlistFile";
        
        @plistData = ();
        
        open (PLISTFILE, '<', $jsInfoPlistFile) or die "Can not open $jsInfoPlistFile file!, $!";
        
        while (<PLISTFILE>) {
            $line = $_;
            if ($line =~ /<key>KONY_CAMERA<\/key>/) {
                #camerasettings is two-level dict
                my $subtreestart = <PLISTFILE>;
                if ($subtreestart =~ /<dict>/) {
                    while((my $loopvar = <PLISTFILE>) !~ /<\/dict>/)
                    {
                        if ($loopvar =~ /<dict>/) {
                            while((my $loopvar1 = <PLISTFILE>) !~ /<\/dict>/)
                            {
                            }
                        }
                    }
                }
            } elsif ($line =~ /<key>exceptionalert<\/key>/) {
                my $ignored = <PLISTFILE>;
            } elsif ($line =~ /<key>genericexceptionalert<\/key>/) {
                my $ignored = <PLISTFILE>;
            } elsif ($line =~ /<key>statusBarHidden<\/key>/) {
                my $ignored = <PLISTFILE>;
            } elsif ($line =~ /<key>extendTop<\/key>/) {
                my $ignored = <PLISTFILE>;
            } elsif ($line =~ /<key>extendBottom<\/key>/) {
                my $ignored = <PLISTFILE>;
            } elsif ($line =~ /<key>globalsmonitoring<\/key>/) {
                my $ignored = <PLISTFILE>;
            } elsif ($line =~ /<key>pasteboardtype<\/key>/) {
                my $ignored = <PLISTFILE>
            } elsif ($line =~ /<key>allowselfsignedcertificate<\/key>/) {
                my $ignored = <PLISTFILE>
            } elsif ($line =~ /<key>inputaccessoryviewtype<\/key>/) {
                my $ignored = <PLISTFILE>
            } elsif ($line =~ /<key>statusBarStyle<\/key>/) {
                my $ignored = <PLISTFILE>
            } elsif ($line =~ /<key>supported_environment<\/key>/) {
                my $ignored = <PLISTFILE>
            } elsif ($line =~ /<key>backward_compatibility_mode<\/key>/) {
                my $ignored = <PLISTFILE>
            } else {
                push(@plistData,$line);
            }
        }
        close PLISTFILE;
        
        open PLISTFILE, '>JSInfo.plist' or die "Can not open JSInfo.plist file to write!, $!";
        for (my $i = 0; $i < @plistData -2 ; $i++)
        {
            $line = $plistData[$i];
            print PLISTFILE $line;
        }
        
        $temp = $$xmldatatree[0]->{'content'}[0]->{'content'};

        foreach (@{$temp})
        {
            $name = $_->{'attrib'}->{'name'};
            if ($name eq "exceptionalert" || $name eq "genericexceptionalert"|| $name eq "statusBarHidden" || $name eq "extendTop" || $name eq "extendBottom" || $name eq "globalsmonitoring" || $name eq "pasteboardtype" || $name eq "allowselfsignedcertificate" || $name eq "inputaccessoryviewtype" || $name eq "statusBarStyle" || $name eq "camerasettings" || $name eq "supported_environment" || $name eq "backward_compatibility_mode" || $name eq "KonyHTTPPublicKeyPinning")
            {
                print PLISTFILE "\t<key>$name</key>\n";
                
                if ($_->{'content'}[0]->{'name'} eq "value") {
                    
                    $type = $_->{'content'}[0]->{'attrib'}->{'type'};
                    $value = $_->{'content'}[0]->{'content'}[0]->{'content'};
                    
                    if ($type eq "string") {
                        print PLISTFILE "\t<string>$value</string>\n";
                    } elsif ($type eq "number") {
                        print PLISTFILE "\t<integer>$value</integer>\n";
                    } elsif ($type eq "bool") {
                        if (!($value && ($value =~ /^true$/ || $value =~ /^false$/))) {
                            $value = "false";
                        }
                        $value = $value."/";
                        print PLISTFILE "\t<$value>\n";
                    }
                } elsif ($_->{'content'}[0]->{'name'} eq "valuearray") {
                    
                    print PLISTFILE "\t<array>\n";
                    
                    foreach (@{$_->{'content'}[0]->{'content'}})
                    {
                        if ($_->{'name'} eq "value") {
                            
                            $type = $_->{'attrib'}->{'type'};
                            $value = $_->{'content'}[0]->{'content'};
                            
                            if ($type eq "string") {
                                print PLISTFILE "\t\t<string>$value</string>\n";
                            } elsif ($type eq "number") {
                                print PLISTFILE "\t\t<integer>$value</integer>\n";
                            } elsif ($type eq "bool") {
                                if (!($value && ($value =~ /^true$/ || $value =~ /^false$/))) {
                                    $value = "false";
                                }
                                $value = $value."/";
                                print PLISTFILE "\t\t<$value>\n";
                            }
                            
                        } elsif ($_->{'name'} eq "valuearray") {
                            
                            print PLISTFILE "\t\t<array>\n";
                            foreach (@{$_->{'content'}}) {
                                if ($_->{'name'} eq "value") {
                                    $type = $_->{'attrib'}->{'type'};
                                    $value = $_->{'content'}[0]->{'content'};
                                    
                                    if ($type eq "string") {
                                        print PLISTFILE "\t\t\t<string>$value</string>\n";
                                    } elsif ($type eq "number") {
                                        print PLISTFILE "\t\t\t<integer>$value</integer>\n";
                                    } elsif ($type eq "bool") {
                                        if (!($value && ($value =~ /^true$/ || $value =~ /^false$/))) {
                                            $value = "false";
                                        }
                                        $value = $value."/";
                                        print PLISTFILE "\t\t\t<$value>\n";
                                    }
                                }
                            }
                            print PLISTFILE "\t\t</array>\n";
                        } elsif ($_->{'name'} eq "valuedict") {
                            
                            print PLISTFILE "\t\t<dict>\n";
                            foreach (@{$_->{'content'}}) {
                                
                                if ($_->{content}[1]->{'name'} eq "value") {
                                    
                                    $key = $_->{'content'}[0]->{'content'}[0]->{'content'};
                                    $type = $_->{content}[1]->{'attrib'}->{'type'};
                                    $value = $_->{'content'}[1]->{'content'}[0]->{'content'};
                                    
                                    print PLISTFILE "\t\t\t<key>$key</key>\n";
                                    if ($type eq "string") {
                                        print PLISTFILE "\t\t\t<string>$value</string>\n";
                                    } elsif ($type eq "number") {
                                        print PLISTFILE "\t\t\t<integer>$value</integer>\n";
                                    } elsif ($type eq "bool") {
                                        if (!($value && ($value =~ /^true$/ || $value =~ /^false$/))) {
                                            $value = "false";
                                        }
                                        $value = $value."/";
                                        print PLISTFILE "\t\t\t<$value>\n";
                                    }
                                }
                            }
                            print PLISTFILE "\t\t</dict>\n";
                        }
                    }
                    
                    print PLISTFILE "\t</array>\n";
                } elsif ($_->{'content'}[0]->{'name'} eq "valuedict") {
                    
                    print PLISTFILE "\t<dict>\n";
                    
                    foreach (@{$_->{'content'}[0]->{'content'}})
                    {
                        $key = $_->{'content'}[0]->{'content'}[0]->{'content'};
                        print PLISTFILE "\t\t<key>$key</key>\n";
                        
                        if ($_->{'content'}[1]->{'name'} eq "value") {
                            
                            $type = $_->{content}[1]->{'attrib'}->{'type'};
                            $value = $_->{'content'}[1]->{'content'}[0]->{'content'};
                            
                            if ($type eq "string") {
                                print PLISTFILE "\t\t<string>$value</string>\n";
                            } elsif ($type eq "number") {
                                print PLISTFILE "\t\t<integer>$value</integer>\n";
                            } elsif ($type eq "bool") {
                                if (!($value && ($value =~ /^true$/ || $value =~ /^false$/))) {
                                    $value = "false";
                                }
                                $value = $value."/";
                                print PLISTFILE "\t\t<$value>\n";
                            }
                        } elsif ($_->{'content'}[1]->{'name'} eq "valuearray") {
                            
                            print PLISTFILE "\t\t<array>\n";
                            
                            foreach (@{$_->{content}[1]->{content}}) {
                                
                                $type = $_->{'attrib'}->{'type'};
                                $value = $_->{'content'}[0]->{'content'};
                                
                                if ($type eq "string") {
                                    print PLISTFILE "\t\t\t<string>$value</string>\n";
                                } elsif ($type eq "number") {
                                    print PLISTFILE "\t\t\t<integer>$value</integer>\n";
                                } elsif ($type eq "bool") {
                                    if (!($value && ($value =~ /^true$/ || $value =~ /^false$/))) {
                                        $value = "false";
                                    }
                                    $value = $value."/";
                                    print PLISTFILE "\t\t\t<$value>\n";
                                }
                            }
                            
                            print PLISTFILE "\t\t</array>\n";
                            
                        } elsif ($_->{'content'}[1]->{'name'} eq "valuedict") {
                            
                            print PLISTFILE "\t\t<dict>\n";
                            
                            foreach (@{$_->{content}[1]->{content}}) {
                                $key = $_->{content}[0]->{content}[0]->{content};
                                $type = $_->{content}[1]->{attrib}->{type};
                                $value = $_->{content}[1]->{content}[0]->{content};
                                
                                print PLISTFILE "\t\t\t<key>$key</key>\n";
                                if ($type eq "string") {
                                    print PLISTFILE "\t\t\t<string>$value</string>\n";
                                } elsif ($type eq "number") {
                                    print PLISTFILE "\t\t\t<integer>$value</integer>\n";
                                } elsif ($type eq "bool") {
                                    if (!($value && ($value =~ /^true$/ || $value =~ /^false$/))) {
                                        $value = "false";
                                    }
                                    $value = $value."/";
                                    print PLISTFILE "\t\t\t<$value>\n";
                                }
                            }
                            
                            print PLISTFILE "\t\t</dict>\n";
                        }
                    }
                    
                    print PLISTFILE "\t</dict>\n";
                }
            }
        }
        
        print PLISTFILE "</dict>\n";
        print PLISTFILE "</plist>\n";
        close PLISTFILE;
        
        #Below block changes any setting names as required.
        open PLISTFILE, '<JSInfo.plist' or die "Can not open JSInfo.plist file!, $!";
        @plistArray = ();
        while (<PLISTFILE>) {
            $line = $_;
            push(@plistArray,$line);
        }
        close PLISTFILE;
        
        open PLISTFILE, '>JSInfo.plist' or die "Can not open JSInfo.plist file!, $!";
        for (my $i = 0; $i < @plistArray; $i++)
        {
            $line = $plistArray[$i];
            if ($line =~ /<key>camerasettings<\/key>/) {
                print PLISTFILE "\t<key>KONY_CAMERA</key>\n";
            } else {
                print PLISTFILE $line;
            }
        }
        close PLISTFILE;
        
        system "mv JSInfo.plist $jsInfoPlistFile";
        
    
	}
}

#fetch need status
print $needsBackgroundFetchHandler;
