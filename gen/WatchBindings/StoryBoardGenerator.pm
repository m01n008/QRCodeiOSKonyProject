#!/usr/bin/perl -w

use strict;
use warnings;
use feature qw(say);
use XML::LibXML;
use XMLElement;
use XMLAttribute;
use lib '../../gen';
use JSONParser;
use FormModel;
use Log::Log4perl;

package StoryBoardGenerator;

my $logger = Log::Log4perl->get_logger("StoryBoardGenerator");

sub new {
	my $class = shift;
	my $globalModelStore = shift;
    my $self = {
    	xmlElementHash => undef,
    	docElement => undef,
    	rootElement => undef,
    	scenesElement => undef,
    };
    
    bless $self, $class;
    return $self;
}

sub init {
	my($self, @formModelSet) = @_;

	$self->initSBConfig(); 

	$self->createDocument();
    
}

my $instance;
my %TemplateModelsHash;    	# holds all the template's models as values and template Ids as keys.
my %FormModelsHash;    		# holds all the form's models as values and formIds as keys.

sub saveTemplateModelHash {
	my ($self, $templateId, $templateModelHashRef) = @_;
	$TemplateModelsHash{$templateId} = $templateModelHashRef;
}

sub saveFormModelHash {
	my ($self, $formId, $formModelHashRef) = @_;
	$FormModelsHash{$formId} = $formModelHashRef;
	
}

sub getInstance {
   if(defined $instance) {
        $logger->debug("Returning the existing StoryBoardGenerator instance");
   }
   else {
       $logger->debug("Creating StoryBoardGenerator instance..");  
       $instance = new StoryBoardGenerator();
       $instance->init();
   }
   return $instance;
}

sub generate {
    my($self) = @_;
    my $docElement = $self->getDocElement();
    my $xml = $docElement->toString(1);
    open XML, ">WatchBindings/WatchGeneratedSources/Interface.storyboard";
    print XML $xml;
    close XML;
}

sub addForms {
    my($self, @formModelSet) = @_;
    
    my $scenes = $self->getScenesElement();
    use Data::Dumper;
    $logger->debug(Dumper @formModelSet);
    foreach (@formModelSet) {
        addElements($self, $_, $scenes);    
    }
}


sub addElements {
	my($self, $model, $src) = @_;

	my $xmlElements =  $self->{xmlElementHash};
	my %xmlElementHash = %$xmlElements;

	my $nodeType = $model->getType();
	$nodeType .= "Node";
	$logger->debug("\n**Widget type: $nodeType");
	
	$self->addInitialViewController($model);
	
	my $formSBConfigElement =  $xmlElementHash{$nodeType};
	my $name = $formSBConfigElement->getName();
	my $attribs = $formSBConfigElement->getAttributes();
	my $nodes = $formSBConfigElement->getNodes();

	my $doc = $self->getDocElement();
	
	my $isRendered = checkDefined($model->getFormattedValueForKey("isrendered"));
    
	#unless((defined $isRendered) and ($isRendered eq "NO")) {
	
    	my $element = $doc->createElement($name);
    	
    	addAttributes($self, $attribs, $element, $doc, $model);
    
    	addNodes($self, $nodes, $element, $doc, $model);
    	
    	$src->addChild($element);
	#}
}

sub addInitialViewController {
    my($self, $model) = @_;
    if(($model->getType() eq "Form") and $model->isStartupForm()) {
       my $root = $self->getRootElement();
       my $doc = $self->getDocElement();
       $root->addChild($doc->createAttribute("initialViewController" => $model->getFormattedValueForKey("id")) );
    }
}

# Adds nodes to the given source
# nodes - Array ref of nodes
# src - Source of whom nodes need to be added
# doc - self document element to create element

sub addNodes {
	my ($self, $nodesRef, $src, $doc, $model) = @_;
	my @nodes = @$nodesRef;

	addMenuItems($model,$src,$doc);
	
	addOutlets($model,$src,$doc);
	
	addSegues($model,$src,$doc);
	    
	addActions($model,$src,$doc);
	
	addVariations($model,$src,$doc);
	
	foreach my $node (@nodes) {
		
		## check for table row templates..
		if (defined $node->getType() and $node->getType() eq 'template') {
			#print Dumper $model;
			my $rowTemplateId = $model->getFormattedValueForKey("tableid");
			if (defined $rowTemplateId) {
				my $rowTemplateModel = $TemplateModelsHash{$rowTemplateId};
				my $childrenArrayRef = $rowTemplateModel->getChildrenList();
				my $grpModel = $childrenArrayRef->[0];
			
				if ($node->getName() eq "rowContent") {
					addElements($self, $grpModel, $src);				
				} elsif ($node->getName() eq "rowConnections") {
					my $nodeElement = $doc->createElement("connections");
					$src->addChild($nodeElement);
					addOutlets($rowTemplateModel,$nodeElement,$doc);
				}
			}
		} 
		else
		{
			my $nodeElement = $doc->createElement($node->getName());
			
			#in case node type is defined as children in SB xml config get the children
			if($model->can("getChildrenList") and defined $node->getType() and $node->getType() eq 'children') { 
			  my $childrens = $model->getChildrenList();
			  foreach (@$childrens) {
				  my $childModel = $_;
				  $logger->debug( "Adding child of type: ". $childModel->getType());
				  addElements($self, $_, $nodeElement);
			  }
			}

			my $nodeAttribs = $node->getAttributes();
			my $nodeSubNodes = $node->getNodes();
			my $minAttributeCount = $node->getMinAttributeCount();
		
	#            my $childsExist = false; //TODO: ADD Element ONLY WHEN at least one ATTRIB OR NODE EXISTS
			my $flag = 1;
            
#           Added check for sashcolor.
            if($model->getValueForKey("wType") eq "WatchStaticNotificationForm"){
                if($node->getName() eq "color"){
#                   Needsashcolor is mapped to sash blur in IDE.
                    if($model->getValueForKey("needsashcolor")){
#                       ignore generating color node if needsashcolor is true.
                        $nodeAttribs = undef;
                    }
                }
            }
            
            

			if(defined $nodeAttribs) {
				$flag = addAttributes($self, $nodeAttribs, $nodeElement, $doc, $model, $minAttributeCount);
			}
			if(defined $nodeSubNodes) {
				addNodes($self, $nodeSubNodes, $nodeElement, $doc, $model);
			}
			if($flag and defined $nodeElement) {
				$src->addChild($nodeElement);
			}
		}
	}
}

sub addVariations {
	my ($model,$src,$doc) = @_;
	my $variations = $model->getFormattedValueForKey("variations");
	if(defined $variations && $model->isa('ContainerModel') && ($src->getName() eq "controller" || $src->getName() eq "group" )) {
		$logger->debug( "Creating variations");
		my $variationElement = $doc->createElement("variation");
		$variationElement->addChild($doc->createAttribute("key" => "default"));
		my $maskElement = $doc->createElement("mask");
		$variationElement->addChild($maskElement);
		$maskElement->addChild($doc->createAttribute("key" => "items"));
		foreach(@$variations) {
			$logger->debug( "adding varaiation: ", $_);
			my $excludeElement = $doc->createElement("exclude");
			$excludeElement->addChild($doc->createAttribute("reference" => $_));
			$maskElement->addChild($excludeElement);
		}
		$src->addChild($variationElement);
	}
}

sub addMenuItems {
	my ($model,$src,$doc) = @_;
	my $menuItemsArrayRef = $model->getFormattedValueForKey("menuItems");
	
	if ($src->getName() eq "controller" && defined $menuItemsArrayRef) {
		
		# Add menu node..
		my $menuElement = $doc->createElement("menu");
		my $menuId = $model->getFormattedValueForKey("menuId");
		$menuElement->addChild( $doc->createAttribute("key" => "menu") );
		$menuElement->addChild( $doc->createAttribute("id" => $menuId) );
		$src->addChild($menuElement);
		
		# Add items node..
		my $itemsElement = $doc->createElement("items");
		$menuElement->addChild($itemsElement);
		 
		# Add all the menuitem nodes..
		for my $menuItemHashRef (@$menuItemsArrayRef) {
			
			# Add menuItem node..
			my $menuItemElement = $doc->createElement("menuItem");
			$itemsElement->addChild($menuItemElement);
			
			$menuItemElement->addChild( $doc->createAttribute("title" => $menuItemHashRef->{"title"}) );
			$menuItemElement->addChild( $doc->createAttribute("image" => $menuItemHashRef->{"image"}) );
			$menuItemElement->addChild( $doc->createAttribute("id" => $menuItemHashRef->{"menuItemId"}) );
			
			if (defined $menuItemHashRef->{"selector"}) {
				# Add connections node..
				my $connectionsElement = $doc->createElement("connections");
				$menuItemElement->addChild($connectionsElement);
		
				# Add action node..
				my $actionElement = $doc->createElement("action");
				$connectionsElement->addChild($actionElement);
		
				$actionElement->addChild( $doc->createAttribute("selector" => $menuItemHashRef->{"selector"}) );
				$actionElement->addChild( $doc->createAttribute("destination" => $menuItemHashRef->{"destination"}) );
				$actionElement->addChild( $doc->createAttribute("id" => $menuItemHashRef->{"actionId"}) );
			}
		}
	}
}

sub addActions {
    my($model,$src,$doc) = @_;
    if($src->getName() eq "connections") {
       # $logger->debug("Creating action for " . $model->getValueForKey('id'));
       my $action = $model->getFormattedValueForKey("action");
       if(defined $action) {
           my $actionElement = $doc->createElement("action");
           while ((my $key,my $value) = each %$action) {
               $actionElement->addChild($doc->createAttribute($key => $value) );
            }
            $src->addChild($actionElement);
        }
    }
}

sub addOutlets {
    my($model,$src,$doc) = @_;
    if($src->getName() eq "connections") {
       my $outlets = $model->getFormattedValueForKey("outlets");
       foreach (@$outlets) {
           my %outlet = %$_;
           # $logger->debug("Creating outlet for " . $model->getValueForKey('id'));
           my $outletElement = $doc->createElement("outlet");
           while ((my $key,my $value) = each %outlet) {
            	# $logger->debug("Adding outlet attributes $key=$value");
        		if ($key ne "type") {
               		$outletElement->addChild($doc->createAttribute($key => $value) );
               	}
            }
            $src->addChild($outletElement);
       }
    }
}

sub replaceDestinationForNextPage {
	my($segueHashRef) = @_;
	## If the segue is for nextPage, change the destination's value from nextFormIdentifier to nextFormId.
	my $relationship = $segueHashRef->{"relationship"};
	if (defined $relationship && $relationship eq "nextPage") {
		my $nextFormIdentifier = $segueHashRef->{"destination"};
		my $nextFormModel = $FormModelsHash{$nextFormIdentifier};
		my $nextFormId = $nextFormModel->getFormattedValueForKey("id");
		$segueHashRef->{"destination"} = $nextFormId;
	}
	
	return $segueHashRef;
}

sub addSegues {
    my($model,$src,$doc) = @_;
    if($src->getName() eq "connections") {
       my $segues = $model->getFormattedValueForKey("segues");
       foreach (@$segues) {
			my %segue = %$_;
			# $logger->debug("Creating outlet for " . $model->getValueForKey('id'));
			my $modifiedSegueHashRef = replaceDestinationForNextPage(\%segue);
			%segue = %$modifiedSegueHashRef;
						
			my $segueElement = $doc->createElement("segue");
			while ((my $key,my $value) = each %segue) {
				# $logger->debug("Adding outlet attributes $key=$value");
				$segueElement->addChild($doc->createAttribute($key => $value) );
			}
			$src->addChild($segueElement);
       }
    }
}

# Adds attributes to the given source
# attribs - Array ref of attributes
# src - Source of whom attributes need to be added
# doc - self document element to create attribute

sub addAttributes {
	my ($self, $attribsRef, $src, $doc, $model, $minAttributeCount) = @_;
	my @attribs = @$attribsRef;
	my $minAttribCount;
	if (defined $minAttributeCount) {
		$minAttribCount = $minAttributeCount + 0;
	} 
	my $attribCounter = 0;
	foreach my $attrib (@attribs) {
		if(defined $attrib) {
			my $inputKey = $attrib->getInputKey();
			my $value = $attrib->getDefaultValue();
			unless(defined $value) {
			     $value = $model->getFormattedValueForKey(lc($inputKey));
			}
			$logger->debug("Inputkey: " . checkDefined($inputKey) . " and formatted value: " . checkDefined($value));
			if(defined $value && $value ne '') {
				if(defined $attrib->getName())
				{
					 $src->addChild($doc->createAttribute($attrib->getName() => $value) );
					 $logger->debug("Attribute key: " . $attrib->getName() . " and formatted value: " . checkDefined($value));
					 $attribCounter++;
				}
				else
				{
					if	(ref($value) eq 'HASH')
					{
						for my $key (keys %$value) {
							my $valueforkey = $value->{$key};
							$src->addChild($doc->createAttribute($key => $valueforkey) );
							$logger->debug("Attribute hashed key: " . $key . " and formatted value: " . $valueforkey);
							$attribCounter++;
						}
					}
				}
			}
			else {
			     $logger->debug("Ignoring $inputKey as the formatted value not available in the model");
			}
		}
	}
	if (!defined $minAttributeCount || ($attribCounter >= $minAttribCount)) {
		return 1;
	} else {
		return 0;
	}
}

sub createDocument {
	my($self) = @_;
	my $doc = XML::LibXML::Document->new( '1.0', 'utf-8' );
	$self->setDocElement($doc);
	my $root = $doc->createElement ('document');
	$self->setRootElement($root);
	$root->addChild($doc->createAttribute( type => 'com.apple.InterfaceBuilder.WatchKit.Storyboard'));
	$root->addChild($doc->createAttribute( version => '3.0'));
	$root->addChild($doc->createAttribute( toolsVersion => '7706'));
	$root->addChild($doc->createAttribute( systemVersion => '14E46'));
	$root->addChild($doc->createAttribute( targetRuntime => 'watchKit'));
	$root->addChild($doc->createAttribute( propertyAccessControl => 'none'));
	$root->addChild($doc->createAttribute( useAutolayout => 'YES'));
	$root->addChild($doc->createAttribute( useTraitCollections => 'YES'));

	my $dependencies = $doc->createElement ('dependencies');
	my $plugIn = $doc->createElement ('plugIn');
	$plugIn->addChild($doc->createAttribute( identifier => 'com.apple.InterfaceBuilder.IBCocoaTouchPlugin'));
	$plugIn->addChild($doc->createAttribute( version => '7703'));
	$dependencies->addChild($plugIn);
	$plugIn = $doc->createElement ('plugIn');
	$plugIn->addChild($doc->createAttribute( identifier => 'com.apple.InterfaceBuilder.IBWatchKitPlugin'));
	$plugIn->addChild($doc->createAttribute( version => '7701'));
	$dependencies->addChild($plugIn);
	$root->addChild($dependencies);

	my $scenes = $doc->createElement ('scenes');
	$self->setScenesElement($scenes);
	$root->addChild($scenes);
	$doc->setDocumentElement ($root);
}

sub getDocElement {
	my $self= shift;
	return $self->{docElement};
}

sub setDocElement {
	my ($self, $doc) = @_;
	$self->{docElement} = $doc;
}

sub getRootElement {
	my $self= shift;
	return $self->{rootElement};
}

sub setRootElement {
	my ($self, $rootElement) = @_;
	$self->{rootElement} = $rootElement;
}

sub getScenesElement {
	my $self= shift;
	return $self->{scenesElement};
}

sub setScenesElement {
	my ($self, $scenesElement) = @_;
	$self->{scenesElement} = $scenesElement;
}

sub initSBConfig{
	my($self) = @_;
	my $parser = new JSONParser();
	my $JSONFile = "WatchBindings/SBXMLConfig.json";
	open my $FILE_HANDLE, "<$JSONFile" or die "can't open SBXMLConfig File... $!";
	my $sbConfigHash = $parser->parseJSONFileToHash($FILE_HANDLE);

	my %xmlElementHash;    
    my %xmlAttributeHash;
    
    my $attributeConfigHash = $sbConfigHash->{"attributeConfig"};
    for my $attribKey (keys %$attributeConfigHash)
    {
    	my $attributeConfig = $attributeConfigHash->{$attribKey};
    	my $xmlAttributeConfig = new XMLAttribute();
    	$xmlAttributeConfig->setName($attributeConfig->{"name"});
    	$xmlAttributeConfig->setDefaultValue($attributeConfig->{"value"});
    	$xmlAttributeConfig->setInputKey($attributeConfig->{"inputKey"});
    	$xmlAttributeHash{$attribKey} = $xmlAttributeConfig;
    }
    
    my $nodeConfigHash = $sbConfigHash->{"nodeConfig"};
    for my $nodeKey (keys %$nodeConfigHash)
    {
		my $nodeConfig = $nodeConfigHash->{$nodeKey};
		my $xmlNodeConfig = new XMLElement();
		$xmlNodeConfig->setName($nodeConfig->{"name"});
		$xmlNodeConfig->setType($nodeConfig->{"type"});
		$xmlNodeConfig->setMinAttributeCount($nodeConfig->{"minAttributeCount"});
		$xmlElementHash{$nodeKey} = $xmlNodeConfig;
    }

    for my $nodeKey (keys %$nodeConfigHash)
    {
		my $nodeConfig = $nodeConfigHash->{$nodeKey};
		my $xmlElement = $xmlElementHash{$nodeKey};
		
		if($nodeConfig->{"subnodes"})
		{
			#print Dumper $nodeConfig->{"subnodes"};
			my $var = $nodeConfig->{"subnodes"};
			for my $subnodekey (@$var)
			{
				my $xmlSubNodeElemt = $xmlElementHash{$subnodekey};
				$xmlElement->addNode($xmlSubNodeElemt);
			}
		}
		
		
		if($nodeConfig->{"attributes"})
		{
			my $var = $nodeConfig->{"attributes"};
			for my $attribkey (@$var)
			{
				my $xmlAttribute = $xmlAttributeHash{$attribkey};
				# If the configuration has attribute definition get it from there, otherwise create a new config with attribkey
				if(defined $xmlAttribute) {
				    $xmlElement->addAttribute($xmlAttribute);
				}
				else {
				    $logger->debug("Attribute: $attribkey not found in the configuration, defaulting to same key!");
				    my $xmlAttributeConfig = new XMLAttribute();
                    $xmlAttributeConfig->setName($attribkey);
                    $xmlAttributeConfig->setInputKey($attribkey);
                    $xmlAttributeHash{$attribkey} = $xmlAttributeConfig;
                    $xmlElement->addAttribute($xmlAttributeConfig);
				}
			}
		}
    }
    
    $self->{xmlElementHash} = \%xmlElementHash;;

}

sub checkDefined {
    my ($elem) = shift;
    if(defined $elem) {
        return $elem;
    }
    else {
        return "";
    }
}

1;
