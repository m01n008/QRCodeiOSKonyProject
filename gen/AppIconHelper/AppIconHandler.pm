#!/usr/bin/perl -w

package AppIconHandler;

use strict;
use lib '../../gen';
use JSONParser;
use Data::Dumper;

sub new
{
    my ($class) = @_;
    my $self = {};
    bless $self, $class;
    return $self;
}

sub updateContentsJSONForIphoneIpadAppIcons {
    my ($self, $iphoneIpadAppIconsImagesNameHashRef,$type) = @_;
    my $folderName = "iphone";
    if ($type eq 1){
        $folderName = "iphone";
    }elsif ($type eq 2){
        $folderName = "ipad";
    }elsif ($type eq 3){
        $folderName = "universal";
    }
    
    my $appIconHelperPath = "AppIconHelper/Asset/$folderName";
    opendir (DIR, $appIconHelperPath) or die $!;
    system "rm -rf ../Assets.xcassets/*";
    while (my $file = readdir(DIR)) {
        if($file ne ".DS_Store" & $file ne "." & $file ne ".."){
            system "cp -R $appIconHelperPath/$file ../Assets.xcassets/";
        }
    }
    my $parser = new JSONParser();
    my $contentsJSONPath = "../Assets.xcassets/AppIcon.appiconset/Contents.json";
    open my $FILE_HANDLE, "<$contentsJSONPath" or die "can't open Contents JSON File...";
    my $contentsFileHashRef = $parser->parseJSONFileToHash($FILE_HANDLE);
    close $FILE_HANDLE;
    
    my $imagesArrayRef = $contentsFileHashRef->{"images"};
    for my $imageInfoHashRef (@$imagesArrayRef) {
        my $imageName;
        my $path;
        if ($imageInfoHashRef->{"idiom"} eq "iphone") {
            # iphone Notification iOS7-11 20pts
            if ( $imageInfoHashRef->{"size"} eq "20x20"){
                if ($imageInfoHashRef->{"scale"} eq "2x") {
                    $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"iphone2x20"};
                }elsif ($imageInfoHashRef->{"scale"} eq "3x") {
                    $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"iphone3x20"};
                }
            }
            
            # iphone Spotlight iOS5-6 Settings ios5-11 29pts
            
            if($imageInfoHashRef->{"size"} eq "29x29"){
                if ($imageInfoHashRef->{"scale"} eq "2x") {
                    $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"iphone2x29"};
                }
                elsif ($imageInfoHashRef->{"scale"} eq "3x") {
                    $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"iphone3x29"};
                }
            }
            
            # iphone Spotlight iOS7-11 40pts
            
            if ($imageInfoHashRef->{"size"} eq "40x40"){
                if ($imageInfoHashRef->{"scale"} eq "2x") {
                    $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"iphone2x40"};
                }
                elsif ($imageInfoHashRef->{"scale"} eq "3x") {
                    $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"iphone3x40"};
                }
            }
            
            # iphone App iOS7-11 60pts
            
            if ($imageInfoHashRef->{"size"} eq "60x60"){
                if ($imageInfoHashRef->{"scale"} eq "2x") {
                    $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"iphone2x60"};
                }
                elsif ($imageInfoHashRef->{"scale"} eq "3x") {
                    $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"iphone3x60"};
                }
            }
        } elsif ($imageInfoHashRef->{"idiom"} eq "ipad") {
            
            if ($imageInfoHashRef->{"size"} eq "20x20"){
                if ($imageInfoHashRef->{"scale"} eq "1x") {
                    $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"ipad1x20"};
                }
                elsif ($imageInfoHashRef->{"scale"} eq "2x") {
                    $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"ipad2x20"};
                }
            }
            
            # iphone Spotlight iOS5-6 Settings ios5-11 29pts
            if ($imageInfoHashRef->{"size"} eq "29x29"){
                if ($imageInfoHashRef->{"scale"} eq "1x") {
                    $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"ipad1x29"};
                }
                elsif ($imageInfoHashRef->{"scale"} eq "2x") {
                    $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"ipad2x29"};
                }
            }
            
            # iphone Spotlight iOS7-11 40pts
            
            if ($imageInfoHashRef->{"size"} eq "40x40"){
                if ($imageInfoHashRef->{"scale"} eq "1x") {
                    $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"ipad1x40"};
                }
                elsif ($imageInfoHashRef->{"scale"} eq "2x") {
                    $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"ipad2x40"};
                }
            }
            
            # iphone App iOS7-11 76pts
            
            if ($imageInfoHashRef->{"size"} eq "76x76"){
                if ($imageInfoHashRef->{"scale"} eq "1x") {
                    $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"ipad1x76"};
                }
                elsif ($imageInfoHashRef->{"scale"} eq "2x") {
                    $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"ipad2x76"};
                }
            }
            # iphone App iOS7-11 76pts
            
            if ($imageInfoHashRef->{"size"} eq "76x76"){
                if ($imageInfoHashRef->{"scale"} eq "1x") {
                    $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"ipad1x76"};
                }
                elsif ($imageInfoHashRef->{"scale"} eq "2x") {
                    $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"ipad2x76"};
                }
            }
            
            elsif ( $imageInfoHashRef->{"size"} eq "83.5x83.5" && $imageInfoHashRef->{"scale"} eq "2x") {
                $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"ipad2x83_5"};
            }
            
            # Replace .png with ~ipad.png to read image specific to iPad app for Universal Kar($type = 3)
            if ($type == 3){
                my $find = ".png";
                my $replace = "~ipad.png";
                $imageName =~ s/$find/$replace/g;
            }
        } elsif ($imageInfoHashRef->{"idiom"} eq "ios-marketing") {
            if ( $imageInfoHashRef->{"size"} eq "1024x1024" && $imageInfoHashRef->{"scale"} eq "1x") {
                $imageName = $iphoneIpadAppIconsImagesNameHashRef->{"ios1024"};
            }
        }
        if (defined $imageName) {
            if ( $imageName ne ""){
                $imageInfoHashRef->{"filename"} = $imageName;
                if (-e "../NLResources/$imageName"){
                    system "cp '../NLResources/$imageName' '../Assets.xcassets/AppIcon.appiconset/'";
                }
            }
        } else {
            delete $imageInfoHashRef->{"filename"};
        }
        
    }
    use JSON;
    my $contentsJSON = encode_json($contentsFileHashRef);
    open my $fh, '>', $contentsJSONPath;
    print $fh $contentsJSON;
    close $fh;
}

1;







