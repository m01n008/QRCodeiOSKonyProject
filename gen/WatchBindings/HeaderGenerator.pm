#!/usr/bin/perl -w

package HeaderGenerator;

use FormModel;
use strict;
use Data::Dumper;

sub new
{
    my ($class) = @_;
    my $self = [];
    bless $self, $class;
    return $self;
}


sub getFileHeader {
	my $filename = shift @_;
  	return "//\
//  $filename\
//\
//  Generated by Watch ObjC-Template generator.\
//  Do not modify this file.\
//  Copyright (c) 2016 Kony Solutions. All rights reserved.\
//\
\
#import <WatchKit/WatchKit.h>\
#import <Foundation/Foundation.h>\
\
";
}

sub getPropertiesList {
	my $formModel = shift @_;
	my $propertiesList = "";
	
	my $outletsArrayRef = $formModel->getFormattedValueForKey("outlets");
	for my $outletHashRef (@$outletsArrayRef) {
		my $outletType = $outletHashRef->{"type"};
		my $outletID = $outletHashRef->{"property"};
		$propertiesList .= "\@property (unsafe_unretained, nonatomic) IBOutlet WKInterface".$outletType." *$outletID;\n";	
	}

	return $propertiesList;
}

sub getClassBody {
	my ($filename, $superClass, $fModel) = @_;
	my $propertiesList = getPropertiesList($fModel);

	return "\
\@interface $filename : $superClass\
\
$propertiesList\
\@end\
";
}


sub generateHeaderForFormModel {
	
	my ($self, $formModel) = @_;
	my $HEADER_FILE_CONTENT = "";
	
	my $controllerName = $formModel->getFormattedValueForKey("customclass");
	my $headerFileName = $controllerName.".h";
	
	my $superClass = "WKInterfaceController";
	if ($formModel->{'wType'} eq 'Template') {
		$superClass = "NSObject";
	} elsif ($formModel->{'wType'} eq "WatchDynamicNotificationForm") {
		$superClass = "WKUserNotificationInterfaceController";
	}
	
	open HEADER_FILE, ">WatchBindings/WatchGeneratedSources/$headerFileName" or die "Can't open Header file $headerFileName";
	$HEADER_FILE_CONTENT .= getFileHeader($headerFileName);
	$HEADER_FILE_CONTENT .= getClassBody($controllerName, $superClass, $formModel);
	print HEADER_FILE $HEADER_FILE_CONTENT;
	
	return $headerFileName;
}


1;

