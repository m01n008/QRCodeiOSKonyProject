use strict;
use warnings;

use lib '../../gen';
use JSONParser;

package SwiftUIUtil;

sub getXValueFromLeftValue{
	my ($leftValue) = @_;
	return getSizeFromDPString($leftValue->{value});
}

sub getYValueFromTopValue{
	my ($topValue) = @_;
	return getSizeFromDPString($topValue->{value});
}

sub getWidthFromTopValue{
	my ($widthValue) = @_;
	return getSizeFromDPString($widthValue->{value});
}

sub getHeightFromTopValue{
	my ($heightValue) = @_;
	return getSizeFromDPString($heightValue->{value});
}

sub getDPValueFromString{
	my ($dpObject) = @_;
	
	if(not defined $dpObject){
		return undef;
	}
	
	my $dpString = $dpObject->{value};
	if(index($dpString, "dp") != -1){
		return getSizeFromDPString($dpString);
	}else{
		return undef;
	}
}

sub getPercentageValueFromString{
	my ($percentageObject) = @_;
	
	if(not defined $percentageObject){
		return undef;
	}
	
	my $percentageString = $percentageObject->{value};
	if(index($percentageString, "%") != -1){
		return getPercentageFromDPString($percentageString);
	}else{
		return undef;
	}
}



sub getFlexRoundedBooleanFromSkinValue{
	my ($skinValue) = @_;
	
	my $flexBorderStype = $skinValue->{border_style};
	if($flexBorderStype eq "rc"){
		return 1;
	}
	else{
		return 0;
	}
}

sub getSizeFromDPString{
	my ($sizeValue) = @_;
	$sizeValue =~ m[dp];
	my $sizeValueInString = $`;
	return int($sizeValueInString);
}

sub getPercentageFromDPString{
	my ($sizeValue) = @_;
	$sizeValue =~ m[%];
	my $sizeValueInString = $`;
	return int($sizeValueInString);
}

sub getColorsArray{
	my ($hexString) = @_;
	
	my ($colorHexString) = @_;
	my $rgbaList = [];
	my $eachAttribute;
	
	my $index = 0;
	while($index lt 8){
		$eachAttribute = substr($colorHexString,$index,2);
#		if($index==6){
#			# Tools assumes a reverse sense for alpha/opacity
#			# Opaticy 1 means transparent and 0 means opaque, general sense should be the reverse of it
#			push $rgbaList,1-((hex($eachAttribute))/100);
#		}else{
#			push $rgbaList,(hex($eachAttribute))/255;
#		}
		push @{ $rgbaList }, (hex($eachAttribute))/255;
		$index = $index+2;
	}
	
	return $rgbaList;
}

sub getColor{
	my ($colorHexString) = @_;
#	Pre processing if any
	
	return $colorHexString;
}

sub getImageSourceName{
	my ($imageNameWithExtension) = @_;
	$imageNameWithExtension =~ m[.png];
	my $imageName = $`;
	return $imageName;
}

sub getFontSize{
	my ($fontPercentageValue) = @_;
	return int((int($fontPercentageValue) * 14)/100);
}

sub getVisibilityValue{
	my ($visibilityValue) = @_;
	if($visibilityValue eq 1){
		return 'true';
	}else{
		return 'false';
	}
	
	return $visibilityValue;
}

sub getDateStyle{
	my ($dateStyle) = @_;
	
	if(defined $dateStyle){
		if($dateStyle eq "time"){
			return ".time"
		}elsif($dateStyle eq "date"){
			return ".date"
		}elsif($dateStyle eq "relative"){
			return ".relative"
		}elsif($dateStyle eq "offset"){
			return ".offset"
		}elsif($dateStyle eq "timer"){
			return ".timer"
		}else{
			return ".relative"
		}
	}else{
		return ".relative"
	}
}

sub getContentAlignment{
	my ($contentalignment) = @_;

	if(defined $contentalignment && $contentalignment > 0){
		if($contentalignment == 1){
			return ".topLeading";
		}elsif($contentalignment == 2){
			return ".top";
		}elsif($contentalignment == 3){
			return ".topTrailing";
		}elsif($contentalignment == 4){
			return ".leading";
		}elsif($contentalignment == 5){
			return ".center";			
		}elsif($contentalignment == 6){
			return ".trailing";			
		}elsif($contentalignment == 7){
			return ".bottomLeading";			
		}elsif($contentalignment == 8){
			return ".bottom";			
		}elsif($contentalignment == 8){
			return ".bottomTrailing";			
		}
	}else{
		return ".leading";
	}
}

sub getLayoutType{
	my ($layoutType) = @_;

	if($layoutType == 2){
		return ".FlexFree"
	}elsif($layoutType == 3){
		return ".FlexHorizontal"
	}elsif($layoutType == 4){
		return ".FlexVertical"
	}

	return ".FlexFree"
}

sub shouldReverseLayout{
	my ($reverseLayoutDirection) = @_;

	if(defined $reverseLayoutDirection){
		if($reverseLayoutDirection eq 1){
			return "true";
		}else{
			return "false";
		}
	}else{
		return "false";
	}
}

1;