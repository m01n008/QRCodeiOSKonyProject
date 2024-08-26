use strict;
use warnings;

use XML::LibXML;
use lib '../../gen';
use JSONParser;
use CommonUtil;

package StoryboardGenerator;

my $konyLaunchStoryboardPath;

=pod
=head2 StoryboardGenerator constructor
Parameters  : storyboardDeviceID - retina6_5(iphone 11ProMax/XSMax) retina5_9(iphone 11Pro/XS/X)
Returns     : StoryboardGenerator instance  
Description : Initialises StoryboardGenerator. Responsible for generating storyboard
			  XML structure generation	 
=cut
sub new {
	my ($class,$storyboardDeviceID, $rscHandler) = @_;
    my $self = {
    	storyboardXMLConfig => undef,
    	storyboardDeviceInfo => undef,
    	resourcesList => [],
    	docElement => undef,
    	rootElement => undef,
    	scenesElement => undef,
    	viewControllerElement => undef
    };
    bless $self, $class;
    $konyLaunchStoryboardPath = "../$rscHandler->{_LaunchStoryBoard}/KonyLaunch.storyboard";
    initialiseStoryboard($self,$storyboardDeviceID);
    createDocument($self);
    return $self;
}

=pod
=head2 initialiseStoryboard
Parameters  : storyboardDeviceID - retina6_5(iphone 11ProMax/XSMax) retina5_9(iphone 11Pro/XS/X)
Returns     : None  
Description : Initialises the generator, with generating static XML content
=cut
sub initialiseStoryboard{
	my ($self,$storyboardDeviceID) = @_;
	initStoryboardXMLConfig($self);
	initStoryboardDeviceInfo($self,$storyboardDeviceID);
}

=pod
=head2 initStoryboardXMLConfig
Parameters  : None
Returns     : None  
Description : Initialises the XML config. Reads the SBXMLCondif file and references the configJSON
			  StoryboardXMLConfig contains metadata about a Node,NodeAttributes,SubNodes
=cut
sub initStoryboardXMLConfig{
	my ($self) = @_;
	
	my $jsonFilePath = "LaunchStoryboardGen/SBXMLConfig.json";
	open my $FILE_HANDLE, "<$jsonFilePath" or die "can't open JSON File...";
	
	my $parser = new JSONParser();
	my $storyboardMetaJSON = $parser->parseJSONFileToHash($FILE_HANDLE);
	$self->{storyboardXMLConfig} = $storyboardMetaJSON;
	close $FILE_HANDLE;
}

=pod
=head2 initStoryboardDeviceInfo
Parameters  : None
Returns     : None  
Description : Initialises the storyboard device type. Generates XML responsible for device types
=cut
sub initStoryboardDeviceInfo{
	my ($self,$storyboardDeviceID) = @_;
	$self->{storyboardDeviceInfo}->{deviceID} = $storyboardDeviceID;
	$self->{storyboardDeviceInfo}->{orientation} = 'portrait';
	$self->{storyboardDeviceInfo}->{appearance} = 'light';
}

=pod
=head2 createDocument
Parameters  : None
Returns     : None  
Description : Generates part of the static XML content
=cut
sub createDocument{
	my($self) = @_;
	
	my $doc = XML::LibXML::Document->new( '1.0', 'utf-8' );
	$self->{docElement} = $doc;
	
	my $root = $doc->createElement('document');
	$self->{rootElement} = $root;
	$root->addChild($doc->createAttribute( type => 'com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB'));
	$root->addChild($doc->createAttribute( version => '3.0'));
	$root->addChild($doc->createAttribute( toolsVersion => '15705'));
	$root->addChild($doc->createAttribute( targetRuntime => 'iOS.CocoaTouch'));
	$root->addChild($doc->createAttribute( propertyAccessControl => 'none'));
	$root->addChild($doc->createAttribute( useAutolayout => 'YES'));
	$root->addChild($doc->createAttribute( launchScreen => 'YES'));
	$root->addChild($doc->createAttribute( useTraitCollections => 'YES'));
	$root->addChild($doc->createAttribute( useSafeAreas => 'YES'));
	$root->addChild($doc->createAttribute( colorMatched => 'YES'));
#	$root->addChild($doc->createAttribute( initialViewController => 'XXX-XX-XXX'));

	my $device = $doc->createElement ('device');
	my $deviceInfo = $self->{storyboardDeviceInfo};
	$device->addChild($doc->createAttribute(id => $deviceInfo->{deviceID}));
	$device->addChild($doc->createAttribute(orientation => $deviceInfo->{orientation}));
	$device->addChild($doc->createAttribute(appearance => $deviceInfo->{appearance}));
	$root->addChild($device);

	my $dependencies = $doc->createElement ('dependencies');
	
	my $deployment = $doc->createElement ('deployment');
#	deployment version for ios to be added carefully : 2304 ios9
	$deployment->addChild($doc->createAttribute(version => '2304'));
	$deployment->addChild($doc->createAttribute(identifier => 'iOS'));
	$dependencies->addChild($deployment);
	
	my $plugIn = $doc->createElement ('plugIn');
	$plugIn->addChild($doc->createAttribute( identifier => 'com.apple.InterfaceBuilder.IBCocoaTouchPlugin'));
	$plugIn->addChild($doc->createAttribute( version => '15706'));
	$dependencies->addChild($plugIn);
	
	my $capability = $doc->createElement('capability');
	$capability->addChild($doc->createAttribute(name => "Safe area layout guides"));
	$capability->addChild($doc->createAttribute(minToolsVersion => "9.0"));
	$dependencies->addChild($capability);
	
	$capability = $doc->createElement('capability');
	$capability->addChild($doc->createAttribute(name => "documents saved in the Xcode 8 format"));
	$capability->addChild($doc->createAttribute(minToolsVersion => "8.0"));
	$dependencies->addChild($capability);
	
	$root->addChild($dependencies);

	my $scenes = $doc->createElement('scenes');
	$self->{scenesElement} = $scenes;
	$root->addChild($scenes);
	$doc->setDocumentElement($root);
	
	my $scene = $doc->createElement('scene');
	$scene->addChild($doc->createAttribute(sceneID => CommonUtil::getUniqueXcodeObjectID()));
	$scenes->addChild($scene);
	
	my $sceneObjects = $doc->createElement('objects');
	$scene->addChild($sceneObjects);
	
	my $viewController = $doc->createElement('viewController');
	my $viewControllerObjectID = CommonUtil::getUniqueXcodeObjectID();
	$viewController->addChild($doc->createAttribute(id => $viewControllerObjectID));
	$viewController->addChild($doc->createAttribute(sceneMemberID => 'viewController'));
	$sceneObjects->addChild($viewController);
	
	my $placeholder = $doc->createElement('placeholder');
	$placeholder->addChild($doc->createAttribute(placeholderIdentifier => 'IBFirstResponder'));
	$placeholder->addChild($doc->createAttribute(id => CommonUtil::getUniqueXcodeObjectID()));
	$placeholder->addChild($doc->createAttribute(userLabel => 'First Responder'));
	$placeholder->addChild($doc->createAttribute(sceneMemberID => 'firstResponder'));
	$sceneObjects->addChild($placeholder);
	
	my $point = $doc->createElement('point');
	$point->addChild($doc->createAttribute(key => 'canvasLocation'));
	$point->addChild($doc->createAttribute(x => '50'));
	$point->addChild($doc->createAttribute(y => '350'));
	$scene->addChild($point);
	
	$root->addChild($doc->createAttribute(initialViewController => $viewControllerObjectID));
	$self->{viewControllerElement} = $viewController;
}

=pod
=head2 generateLaunchStoryboard
Parameters  : rootContainerModel KonyLaunch.storyboard file path
Returns     : None  
Description : Generates KonyLaunch.storyboard file at given path
=cut
sub generateLaunchStoryboard{
	my($self,$rootContainerModel,$storyboardPath) = @_;
	generateViewForContainerModel($self,$rootContainerModel);
	addResourcesToStoryboard($self,$self->{resourcesList});
	generateXML($self,$storyboardPath);
}

=pod
=head2 generateViewForContainerModel
Parameters  : rootContainerModel
Returns     : None  
Description : Takes input rootContainerModel and creates a rootContainerViewModel
			  This view model uses viewConfig(SBXMLConfig) and generates XML
=cut
sub generateViewForContainerModel{
	my($self,$rootContainerModel) = @_;
	my $viewController = $self->{viewControllerElement};
	my $rootContainerViewModel = $rootContainerModel->getViewModel();
	generateViewForModel($self,$viewController,$rootContainerViewModel);
}

=pod
=head2 generateViewForChildrenViewModels
Parameters  : parentNode nodeSubviewModel(subset of viewModel object)
Returns     : None  
Description : Generates view for containerViewModels children(ImageViewModel, LabelViewModel)
=cut
sub generateViewForChildrenViewModels{
	my ($self,$parentNode,$nodeSubviewModel) = @_;
	my $nodeSubviewModelList = $nodeSubviewModel->{subviewViewModels};
	
	for my $eachChildViewModel (@$nodeSubviewModelList){
		generateViewForModel($self,$parentNode,$eachChildViewModel);
	}
}

=pod
=head2 generateViewForChildrenViewModels
Parameters  : parentNode nodeViewModel(view model object)
Returns     : None  
Description : Generic method for view generation using viewModel and viewConfig
=cut
sub generateViewForModel{
	my ($self,$parentNode,$nodeViewModel) = @_;
	my $viewNodeType = CommonUtil::getNodeTypeForViewModel($self->{storyboardXMLConfig},$nodeViewModel);
	my $viewConfig = CommonUtil::getConfigForNode($self->{storyboardXMLConfig},$viewNodeType);
	generateNode($self,$parentNode,$viewNodeType,$viewConfig,$nodeViewModel);
	
	if($nodeViewModel->isa('ImageViewModel')){
        push @{$self->{resourcesList}},$nodeViewModel->getResources();
	}
}

=pod
=head2 generateNode
Parameters  : parentNode(XMLParentNode) 
			  nodeType(XML node type)
			  nodeConfig(SBXMLConfig for a specific node(viewConfig))
			  nodeModel(subset of node viewModel)
Returns     : None  
Description : Generic method for XML node generation(view)
=cut
sub generateNode{
	my ($self,$parentNode,$nodeType,$nodeConfig,$nodeModel) = @_;
	my $nodeName = $nodeConfig->{name};
	if(ref($nodeModel) eq 'ARRAY'){
		for my $eachModel (@$nodeModel){
			generateNode($self,$parentNode,$nodeType,$nodeConfig,$eachModel);
		}
	}
	else{
		my $doc = $self->{docElement};
		my $newNode = $doc->createElement($nodeName);
		
		if($nodeType eq 'SubviewsNode'){
			generateViewForChildrenViewModels($self,$newNode,$nodeModel);
		}
		
		if(defined $nodeConfig->{attributes}){
			generateAttributeForNode($self,$newNode,$nodeConfig->{'attributes'},$nodeModel);
		}
		
		if(defined $nodeConfig->{subnodes}){
			my $subnodesList = $nodeConfig->{subnodes};
			for my $eachChildType (@$subnodesList){
				my $eachChildNodeConfig = CommonUtil::getConfigForNode($self->{storyboardXMLConfig},$eachChildType);
				my $eachNodeName = $eachChildNodeConfig->{name};
				generateNode($self,$newNode,$eachChildType,$eachChildNodeConfig,$nodeModel->{$eachNodeName});
			}
		}
		
		$parentNode->addChild($newNode);
	}
}

=pod
=head2 generateAttributeForNode
Parameters  : StoryboardGenerator instance  
			  node(view) 
			  attributesList(possible attributes for node)
			  attributesModel(nodeViewModel)
Returns     : None  
Description : Generic method for XML node attributes generation(view)
=cut
sub generateAttributeForNode{
	my ($self,$node,$attributesList,$attributesModel) = @_;
	my $doc = $self->{docElement};
	for my $attribute (@$attributesList){
		if(defined $attributesModel->{$attribute}){
			$node->addChild($doc->createAttribute($attribute => $attributesModel->{$attribute}));
		}
	}
}

=pod
=head2 addResourcesToStoryboard
Parameters  : StoryboardGenerator instance, resourcesList array
Returns     : None  
Description : Adds the storyboard dependent resouce file to generated XML
=cut
sub addResourcesToStoryboard(){
	my ($self,$resourcesList) = @_;
	my %addedResources;
	
	my $doc = $self->{docElement};
	my $root = $self->{rootElement};
	
	my $resourcesElement = $doc->createElement('resources');
	
	for my $eachResource (@$resourcesList){
		if(!defined $addedResources{$eachResource}){
			my $resourceElement = $doc->createElement('image');
			$resourceElement->addChild($doc->createAttribute(name => $eachResource));
			
			my $resourceInfo = CommonUtil::getResourceInfo($eachResource);
			$resourceElement->addChild($doc->createAttribute(width => ""));
			$resourceElement->addChild($doc->createAttribute(height => ""));
			
			$resourcesElement->addChild($resourceElement);
			$addedResources{$eachResource} = 1;
		}
	}
	
	$root->addChild($resourcesElement);
}

=pod
=head2 generateXML
Parameters  : StoryboardGenerator instance, KonyLaunch.storyboard path
Returns     : None  
Description : Creates KonyLaunch.storyboard with generated XML content
=cut
sub generateXML{
	my ($self,$storyboardPath) = @_; 
	my $docElement = $self->{'docElement'};
    my $xml = $docElement->toString(1);
    open XML, ">$storyboardPath";
    print XML $xml;
    close XML;
}

1;
