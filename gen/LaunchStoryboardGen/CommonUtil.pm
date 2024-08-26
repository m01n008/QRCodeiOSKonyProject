use strict;
use warnings;

use Constants;

package CommonUtil;

my %StoryboardObjectIDHash;

=pod
=head2 getResourceInfo
Parameters  : resourceName
Returns     : Currently None - Should return width and height  
Description : Storyboard XML generation requires resources to be added to the XML file
			  It also requires width and height of the image resource specified
			  Currently if not provided, the Xcode handles it
			  If not, readFile -> getInfo -> return width-height	 
=cut
sub getResourceInfo{
	my ($resourceName) = @_;
#	get file info and return width and height
}

=pod
=head2 getConfigForViewModel
Parameters  : storyboardXMLConfig(JSON) viewModel(view model JSON object)
Returns     : View model node config
Description : ViewModel returns its own Node config which acts as a viewConfig
			  This viewConfig determines the nodes view structure in the XML file
=cut
sub getConfigForViewModel{
	my ($storyboardXMLConfig, $viewModel) = @_;
	if($viewModel->isa('RootContainerViewModel')){
		return $storyboardXMLConfig->{'ViewContainerNode'};
	}elsif($viewModel->isa('ImageViewModel')){
		return $storyboardXMLConfig->{'ImageNode'};
	}elsif($viewModel->isa('LabelViewModel')){
		return $storyboardXMLConfig->{'LabelNode'};
	}
}

=pod
=head2 getNodeTypeForViewModel
Parameters  : storyboardXMLConfig(JSON) viewModel(view model JSON object)
Returns     : Node which determines viewModel-Node mapping
Description : ViewModel to Node mapping
			  This method determines which node to be used for viewModel
=cut
sub getNodeTypeForViewModel{
	my ($storyboardXMLConfig, $viewModel) = @_;
	if($viewModel->isa('RootContainerViewModel')){
		return 'ViewContainerNode';
	}elsif($viewModel->isa('ImageViewModel')){
		return 'ImageNode';
	}elsif($viewModel->isa('LabelViewModel')){
		return 'LabelNode';
	}
}

=pod
=head2 getConfigForNode
Parameters  : storyboardXMLConfig(JSON) nodeName
Returns     : Node config (view config)based on the name of the node(view)
Description : This method returns view config based on node/view name			
=cut
sub getConfigForNode{
	my ($storyboardXMLConfig, $nodeName) = @_;
	return $storyboardXMLConfig->{$nodeName};
}

=pod
=head2 getParentFrame
Parameters  : None
Returns     : Container view frame object
Description : This method returns root container UIView frame			
=cut
sub getParentFrame{
	my $rootContainerFrame = {};
	$rootContainerFrame->{'x'} = 0;
	$rootContainerFrame->{'y'} = 0;
	$rootContainerFrame->{'width'} = 375;
	$rootContainerFrame->{'height'} = 812;
	return $rootContainerFrame;
}

=pod
=head2 getUniqueXcodeObjectID
Parameters  : None
Returns     : Returns objectID
Description : Generates unique Xcode object identifiers
			  These ids are used as objectID for UIElements in xcode-IdentityInspector			
=cut
sub getUniqueXcodeObjectID{
	my @chars = ("A".."Z", "a".."z", "0".."9");
	my $uniqueStorboardObjectID = "";
	$uniqueStorboardObjectID .= $chars[rand @chars] for 1..3;
	$uniqueStorboardObjectID .="-";
	$uniqueStorboardObjectID .= $chars[rand @chars] for 1..2;
	$uniqueStorboardObjectID .="-";
	$uniqueStorboardObjectID .= $chars[rand @chars] for 1..3;
	
	if (exists($StoryboardObjectIDHash{$uniqueStorboardObjectID})) {
		$uniqueStorboardObjectID = UIDFormatter();
	} else {
		$StoryboardObjectIDHash{$uniqueStorboardObjectID} = 1;
	}	
	
	return $uniqueStorboardObjectID;
}

=pod
=head2 convertHexToRGBA
Parameters  : Hexadecimal color string - representing RRGGBBAA
Returns     : Array of [R,G,B,A]
Description : Takes hexadecimal string as input and generates array of RGBA values
			  Each array element varies from 0-1			
=cut
sub convertHexToRGBA{
	my ($colorHexString) = @_;
	my $rgbaList = [];
	my $eachAttribute;
	
	my $index = 0;
	while($index lt 8){
		$eachAttribute = substr($colorHexString,$index,2);
		if($index==6){
			# Tools assumes a reverse sense for alpha/opacity
			# Opaticy 1 means transparent and 0 means opaque, general sense should be the reverse of it
            push @{$rgbaList},1-((hex($eachAttribute))/100);
		}else{
            push @{$rgbaList},(hex($eachAttribute))/255;
		}
		$index = $index+2;
	}
	
	return $rgbaList;
}

=pod
=head2 isSizeInPixels
Parameters  : Size string(can be left,right,top,bottom,centerX,centerY)
Returns     : Boolean
Description : This method validates whether the size input is measuded in
			  pixels(DP) or percentage(%)		
=cut
sub isSizeInPixels{
	my ($sizeValue) = @_;
	if($sizeValue =~ m[dp]){
		return 1;
	}
	else{
		return 0;
	}
}

=pod
=head2 getSizePixels
Parameters  : Size DP string(can be left,right,top,bottom,centerX,centerY)
Returns     : integer value of size
Description : Takes the size dp string, parses string and returns int(sizeDPValue)	
=cut
sub getSizePixels{
	my ($sizeValue) = @_;
	$sizeValue =~ m[dp];
	my $sizeValueInString = $`;
	return int($sizeValueInString);
}

=pod
=head2 getSizePercentage
Parameters  : Size % string(can be left,right,top,bottom,centerX,centerY)
Returns     : integer value of size
Description : Takes the size % string, parses string and returns int(sizePercentageValue)	
=cut
sub getSizePercentage{
	my ($sizeValue) = @_;
	$sizeValue =~ m[%];
	my $sizeValueInString = $`;
	return int($sizeValueInString);
}

=pod
=head2 isElementRootContainer
Parameters  : storyboardMetaJSON
Returns     : Boolean - True if element UIRootContainerElement, False - if element is any other
Description : Returns boolean according to UIElementType	
=cut
sub isElementRootContainer{
	my ($storyboardMetaJSON) = @_;
	if(defined $storyboardMetaJSON->{children}){
		return 1;
	}else{
		return 0;
	}
}

=pod
=head2 isElementImage
Parameters  : storyboardMetaJSON
Returns     : Boolean - True if element is imageUIElement, False - if element is any other
Description : Returns boolean according to UIElementType	
=cut
sub isElementImage{
	my ($storyboardMetaJSON) = @_;
	if($storyboardMetaJSON->{StorybaordMetaJSONConstants::KEY_UI_ELEMENT_TYPE} eq Constants::UI_ELEMENT_IMAGE){
		return 1;
	}else{
		return 0;
	}
}

=pod
=head2 isElementLabel
Parameters  : storyboardMetaJSON
Returns     : Boolean - True if element is labelUIElement, False - if element is any other
Description : Returns boolean according to UIElementType	
=cut
sub isElementLabel{
	my ($storyboardMetaJSON) = @_;
	if($storyboardMetaJSON->{StorybaordMetaJSONConstants::KEY_UI_ELEMENT_TYPE} eq Constants::UI_ELEMENT_LABEL){
		return 1;
	}else{
		return 0;
	}
}

1;