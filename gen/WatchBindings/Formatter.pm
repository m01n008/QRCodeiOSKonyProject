#!/usr/bin/perl -w

package Formatter;

#use strict;
use StoryBoardGenerator;
use warnings;
use Data::Dumper;
use lib '../../gen';
use JSONParser;
use WidgetModel;
use ContainerModel;
use 5.010;
use Log::Log4perl;
use DateTime::Format::Strptime;
use Storable qw(dclone);
#cpan DateTime::Format::Strptime

my $configHashRef;			## To store the widget formatter config hash...
my %UIDHash;
my $selectorNameNumber = 1;
my $yPoint = 0;

my $logger = Log::Log4perl->get_logger("Formatter");

sub new
{
    my ($class, $skinHash, $modelStore,  $handlerRef) = @_;
    my $self = {};
    $self->{"skinsHash"} = $skinHash;
     $self->{"modelStore"} = $modelStore;
     $self->{"watchAppHandler"} =  $handlerRef;
    bless $self, $class;
    generateFormatterConfigHash();
    return $self;
}


sub processWidgetsRecursively {
	my ($self, $widgetModel, $formModel, $referenceFormModel) = @_;
	$self->FormatThisModel($widgetModel, $formModel, $referenceFormModel);
	
	
	if ($widgetModel->isa(ContainerModel)) {
		my $childrenList= $widgetModel->getChildrenList();
		for my $child (@$childrenList) {
			$self->processWidgetsRecursively($child, $formModel, $referenceFormModel);
		}
	}
}

sub generateFormatterConfigHash {
	if(!$configHashRef) {
		my $parser = new JSONParser();
		open my $FILE_HANDLE, "<WatchBindings/FormatterConfig.json" or die "can't open widget config JSON File...";
		$configHashRef = $parser->parseJSONFileToHash($FILE_HANDLE);
#  		print Dumper($configHashRef);
	}
}

sub stringFormatter {
	my ($self, $watchOSValue) = @_;
	return "$watchOSValue";
}

sub parentBtnIdentifierFormatter {
	my ($self, $watchOSValue) = @_;
	return $watchOSValue."ParentBtn";
}

sub booleanFormatter {
	my ($self, $watchOSValue) = @_;
	my $watchOSFormattedValue;
	if ($watchOSValue) {
		$watchOSFormattedValue = "YES";
	} else {
		$watchOSFormattedValue = "NO";
	}
	return $watchOSFormattedValue;
}

sub numberFormatter {
	my ($self, $watchOSValue) = @_;
	return $$watchOSValue + 0;
}

sub percentageFormatter {
    my ($self, $watchOSValue) = @_;
    my $formatted = $watchOSValue/100;
    $logger->debug("Formatting percentage value: $watchOSValue, converted value: $formatted");
    return $formatted;
}

sub alignmentFormatter {
    my ($self, $watchOSValue) = @_;
    no warnings 'experimental::smartmatch';
    given ($watchOSValue) {
        when ("1") { return "left";} 
        when ("2") { return "center";} 
        when ("3") { return "right";} 
        when ("4") { return "left";} 
        when ("5") { return "center";} 
        when ("6") { return "right";} 
        when ("7") { return "left";} 
        when ("8") { return "center";} 
        when ("9") { return "right";} 
        default { return ;} 
    }
}

sub textAlignmentFormatter {
    my ($self, $watchOSValue) = @_;
    
    my $converted = $self->alignmentFormatter($watchOSValue);
    
    if($converted eq "none") {
        undef $converted;
    }
    
    return $converted;
}

sub dimensionFormatter {
    my ($self, $watchOSValue,$watchOSElement,$widgetModelRef) = @_;
    
    my $retVal = undef;
    my $dimensionInputvalue = undef;
    no warnings 'numeric';
    $logger->debug("Formatting dimensions with value: $watchOSValue");

    my $isSegmentChild = $widgetModelRef->getValueForKey("isSegmentChild");
    
    if(ref $watchOSValue eq "HASH") {
		$dimensionInputvalue = $watchOSValue->{"value"};
    } else {
    	$dimensionInputvalue = $watchOSValue;
    }
    
    if ($dimensionInputvalue ne 'preferred') {
    	my $dimensionUnit = substr $dimensionInputvalue, ((length $dimensionInputvalue) -1), 1;
    	$logger->debug("dimensionFormatter dimension unit: $dimensionUnit");
    	if ($dimensionUnit eq "%") {
    		$retVal = (int($dimensionInputvalue)) / 100;
    	} else {
    		$retVal = int($dimensionInputvalue) ; #Implicit conversions
    	}
    } elsif (defined $isSegmentChild && $isSegmentChild) {
    	## for direct group on segment template, height's value should be generated as 0 in case of preferred height.
    	$retVal = 0;
    }
    
    $logger->debug("dimensionFormatter formatted value: " . valueOf($retVal));
    return $retVal;
}

sub verticalAlignmentFormatter {
    my ($self, $watchOSValue) = @_;
    no warnings 'experimental::smartmatch';
    #top is a default one if the value is top return nothing so that it wont generate attribute in SB
    $logger->debug("Formatting vertical alignment for value : $watchOSValue ");
    given ($watchOSValue) {
        when ("4") { return "center";} 
        when ("5") { return "center";} 
        when ("6") { return "center";} 
        when ("7") { return "bottom";} 
        when ("8") { return "bottom";} 
        when ("9") { return "bottom";} 
        default { return ;} 
    }
}

sub invertBooleanFormatter {
    my ($self, $watchOSValue) = @_;
    $logger->debug("Inverting: " . $watchOSValue);
    if($watchOSValue) {
        return "NO";
    } else {
        return "YES";
    }
}


sub paddingBottomFormatter {
    my ($self, $watchOSValue) = @_;
#    my @arryVal = @$watchOSValue;
#    say "****###". $arryVal[2];
    return 3; #$arryVal[2];
}

sub childKeyFormatter {
    my ($self, $watchOSValue, $watchOSElementRef) = @_;
#    my %watchOSElement = %$watchOSElementRef;
#    say "watchOSElement:".%watchOSElement;
#    print Dumper $watchOSElementRef;
    return "NO";
    
}

# Adding formatter for sashcolor
sub sashcolorFormatter {
    my ($self, $watchOSValue) = @_;
    return getColorDictFromString($watchOSValue);
}

sub layoutFormatter {
    my ($self, $watchOSValue) = @_;
    
    if($watchOSValue eq "3") {
        return "horizontal";
    }
    return "vertical";
}

sub actionFormatter {
	my ($self, $watchOSValue, $watchOSElementRef , $widgetModelRef, $formModelRef, $widgetConfigRef, $referenceFormModelRef) = @_;
	return createActionHash($widgetModelRef, $formModelRef);
}


sub lowercaseFormatter {
    my ($self, $watchOSValue) = @_;
    #$logger->debug("Converting $watchOSValue to lower case");
    if(defined $watchOSValue) {
        return lc($watchOSValue);
    }
    return $watchOSValue;
}

sub contentModeFormatter {
     my ($self, $watchOSValue) = @_;
     $watchOSValue = lc($watchOSValue);
     no warnings 'experimental::smartmatch';
     given ($watchOSValue) {
        when("scaletofill") {return };
        when("aspectfit") {return "scaleAspectFit";}
        when("aspectfill") {return "scaleAspectFill";}
		when("topleft") {return "TopLeft";}
		when("topright") {return "topRight";}
		when("bottomleft") {return "bottomLeft";}
		when("bottomright") {return "bottomRight";}
        default {return $watchOSValue;}
     }
}

sub renderedCheckFormatter {
    my ($self, $watchOSValue) = @_;
    
    return $watchOSValue;
}

sub timerUnitsFormatter {
    my ($self, $watchOSValue) = @_;
    
    $logger->debug("Executing timerUnitsFormatter " . ref $watchOSValue);
    
    use Data::Dumper;
    $logger->debug( Dumper \@$watchOSValue);
    my %units = ();
    no warnings 'experimental::smartmatch';
    for(@$watchOSValue) {
        given ($_) {
            $units{$_} .= "YES";
        }
    }
    
    $logger->debug("Formatted Units: " . Dumper %units);
    #TODO: hash is not returning properly to parse the attribs
    return \%units;
}

sub timerFormatFormatter {
	my ($self, $watchOSValue) = @_;
	$logger->debug("Executing timerFormatFormatter " . $watchOSValue);
	
	no warnings 'experimental::smartmatch';
    given ($watchOSValue) {
    	when("spelledOut")  {
    		return "spellOut";
    	}
    	default {return $watchOSValue;}
    }
}

sub edgeInsetsFormatter {
    my ($self, $watchOSValue) = @_;
    $logger->debug("Formatting edgeInsets " . ref $watchOSValue);
    
    use Data::Dumper;
    $logger->debug( Dumper \@$watchOSValue);
    
    my @insetsArray = @$watchOSValue;
    
    $logger->debug("Parsing insets values.." . $insetsArray[0]);
    
    my $insets = {"left" => $insetsArray[0], "top" => $insetsArray[1], "right" => $insetsArray[2], "bottom" => $insetsArray[3]};
    
    $logger->debug("Formatted hash insets are " . Dumper $insets);
    
    return $insets;
}

sub xPointFormatter {
    return 0;
}



sub yPointFormatter {
    my $retVal = $yPoint;
    $yPoint=int($yPoint) + 250;
    #logger->debug("new ypoint value: " . $retVal);
    return $retVal;
}

sub segmentRootItemFormatter {
    my ($self, $watchOSValue) = @_;
    if(defined $watchOSValue) {
        return "rootItem";
    }
}

sub fontDescriptorFormatter {
    my ($self, $watchOSValue) = @_;
    
    $logger->debug("Creating font description for $watchOSValue");
    
    my $fontSize = 14;
    my $skinData = $self->getSkinWithID($watchOSValue);
    my $fontName = "system";
    my $fontWeight;
    if(defined $skinData) {
        $logger->debug("Formatting font descriptor: " . Dumper $skinData);
        $fontSize = $skinData->{"font_size"};
        $fontWeight = $skinData->{"font_weight"};
        my $fontStyle = $skinData->{"font_style"};
        $fontName = $skinData->{"font_name"};
        use integer;
        if(defined $fontSize) {
            $fontSize = int(($fontSize * 14)/100);
        } else {
        	$fontSize = 14;
        }
    }
    
     my $fontdesc;
     
    if(defined $fontName) {
    
    	if($fontName eq "System") {
    		$fontName = "system";
    		$fontdesc = {"key" => "font", "type" => $fontName, "pointSize" => $fontSize};
    	}
    	elsif(lc($fontName) eq "system-italic") {
    		$fontName = "italicSystem";
    		$fontdesc = {"key" => "font", "type" => $fontName, "pointSize" => $fontSize};
    	} else {
    		 my $fontFamily = $skinData->{"font_family"};
    		 if(!defined $fontFamily) {
    		 	$fontFamily = $fontName;
    		 }
    		$fontdesc = {"key" => "font", "name" => $fontName, "family" => $fontName, "pointSize" => $fontSize};
    	}
    }
    
    if(defined $fontWeight && $fontWeight ne "normal") {
    	my %temp = %$fontdesc;
    	$temp{"weight"} = lc($fontWeight);
    	$fontdesc = \%temp;
    }
    
    return $fontdesc;   
}

sub radiusFormatter {
    my ($self, $watchOSValue) = @_;
    
    my $skinData = $self->getSkinWithID($watchOSValue);
    
    return $skinData->{"border_radius"};
}

sub bgColorFormatter {
	my ($self, $watchOSValue) = @_;
	my $retVal;
	$logger->debug("Creating BG color for $watchOSValue");
	my $skinData = $self->getSkinWithID($watchOSValue);
	
	if (defined $skinData->{"background_color"}) {
		my $bgColor = $skinData->{"background_color"};
		$retVal = getColorDictFromString($bgColor);
	}
	$logger->debug("Formatted bgcolor for $watchOSValue is " . Dumper $retVal);
	return $retVal;
}

sub bgLeftColorFormatter {
    my ($self, $watchOSValue) = @_;
    my $retVal;
    $logger->debug("Creating Left BG color for $watchOSValue");
    my $skinData = $self->getSkinWithID($watchOSValue);
    
    if (defined $skinData->{"left_background_color"}) {
        my $bgColor = $skinData->{"left_background_color"};
        $retVal = getColorDictFromString($bgColor);
    }
    $logger->debug("Formatted bgcolor for $watchOSValue is " . Dumper $retVal);
    return $retVal;
}

sub getColorDictFromString {
	my ($strColor) = @_;

	my $hexr = substr $strColor, 0 , 2;
	my $hexg = substr $strColor, 2 , 2;
	my $hexb = substr $strColor, 4 , 2;
	my $hexa = substr $strColor, 6 , 2;
		
	my $r = hex($hexr)/255;
	my $g = hex($hexg)/255;
	my $b = hex($hexb)/255;
	my $a = (100-hex($hexa))/100;
	
	my $color = {"red" => $r, "green"=> $g, "blue"=> $b, "alpha" => $a, "colorSpace"=> "calibratedRGB"};
	
	use Data::Dumper;
	$logger->debug("Formatted hash color for $strColor is " . Dumper $color);
	
	return $color;
	
}

sub textColorFormatter {
	my ($self, $watchOSValue) = @_;
	my $retVal;
	$logger->debug("Creating text color for $watchOSValue");
	my $skinData = $self->getSkinWithID($watchOSValue);
	if (defined $skinData->{"font_color"}) {
		my $bgColor = $skinData->{"font_color"};
		$retVal = getColorDictFromString($bgColor);
	}
	
	return $retVal;
	
}

sub textLeftFontColorFormatter {
    my ($self, $watchOSValue) = @_;
    my $retVal;
    $logger->debug("Creating text color for $watchOSValue");
    my $skinData = $self->getSkinWithID($watchOSValue);
    if (defined $skinData->{"left_font_color"}) {
        my $bgColor = $skinData->{"left_font_color"};
        $retVal = getColorDictFromString($bgColor);
    }
    
    return $retVal;
    
}

sub bgImageFormatter {
	my ($self, $watchOSValue) = @_;
	my $retVal;
	my $skinData = $self->getSkinWithID($watchOSValue);
	
	if (defined $skinData->{"background_image"}) {
		my $bgImage = $skinData->{"background_image"};
		$retVal = $bgImage;
	}
	
	return $retVal;
}

sub fontFormatter {
	my ($self, $watchOSValue) = @_;
	return "";
}

sub getSkinWithID
{
	my ($self, $skinID) = @_;
	
	return $self->{"skinsHash"}->{$skinID};
}

# sub arrayFormatter {
# 	print "I'll format\n";
# }

sub customControllerClassNameFormatter {
	my ($self, $watchOSValue) = @_;
	return $watchOSValue."Controller";
}

sub dateStyleFormatter {
	my ($self, $watchOSValue) = @_;
	if($watchOSValue eq '') {
		return {"key" => "dateStyle", "none" => "YES", "short" => "YES"};
	} else {
		return ;
	}
	
}

sub timeStyleFormatter {
	my ($self, $watchOSValue) = @_;
	if($watchOSValue eq '') {
		return {"key" => "timeStyle", "none" => "YES", "short" => "YES"};
	} else {
		return ;
	}
	
}

sub timeIntervalSinceReferenceDateFormatter {
	my ($self, $watchOSValue) = @_;
	
	my @defaultdate = split(/ /, $watchOSValue);
	my $convertedDate = "$defaultdate[0] $defaultdate[1]";
	
	my $strp = DateTime::Format::Strptime->new(
    	pattern => '%m/%d/%Y %H:%M:%S',
    	on_error => 'croak',
	);

	my $dt = $strp->parse_datetime($convertedDate);
	return $dt->epoch - 978327000;
}

sub UIDFormatter {
	my @chars = ("A".."Z", "a".."z", "0".."9");
	my $string = "";
	$string .= $chars[rand @chars] for 1..3;
	$string .="-";
	$string .= $chars[rand @chars] for 1..2;
	$string .="-";
	$string .= $chars[rand @chars] for 1..3;
	
	if (exists($UIDHash{$string})) {
		$string = UIDFormatter();
	} else {
		$UIDHash{$string} = 1;
	}	
	return $string;
}

sub uniqueSelectorNameFormatter {
	$selectorNameNumber++;
	return "action".$selectorNameNumber;
}

sub onRowClickFormatter {
	my ($self, $watchOSValue, $watchOSElement, $widgetModelRef, $formModelRef) = @_;

	## store onRowClick for segment info in the formatted hash of the form.
	my $tableId = $widgetModelRef->getValueForKey('id');
	my %rowClickHash = ("tableId" => $tableId, "rowClickJSMethod" => $watchOSValue);
	$formModelRef->addOnRowClickForSegmentInFormattedHash(\%rowClickHash);
	
	return $watchOSValue;	
}

sub templateImportsForFormFormatter {
	my ($self, $watchOSValue, $watchOSElement, $widgetModelRef, $formModelRef) = @_;
	$formModelRef->setTemplateImportsForForm($watchOSValue);
	
	return $watchOSValue;
}

sub uniqueTemplateCreationFormatter {
	my ($self, $watchOSValue, $watchOSElement, $widgetModelRef, $formModelRef, $widgetConfigRef, $referenceFormModel) = @_;
	
	# unique id to be assigned to template model 
	# to be cloned from actual template model
	my $uniqueRowTemplateID = $self->UIDFormatter();
	
	# get actual template model based on rowTemplateId
	my $globalModelStore = $self->{"modelStore"};
	my %templateModelsHash = $globalModelStore->getTemplateModelsHash();
	my $templateModel = $templateModelsHash{$watchOSValue};	
	
	# clone the new template model from actual tempalte
	my $templateClone = dclone($templateModel);
	$templateClone->removeAllOutLets();

	# assign it a unique ID 	
	$templateClone->setFormattedValueForKey("id", $uniqueRowTemplateID);
	
	# process the new template model.
	$self->processWidgetsRecursively($templateClone, $templateClone, $formModelRef);
	
	# add it to the templateModelsHash in storyboard
	# to be available for generation
	# $templateModelsHash{$uniqueRowTemplateID} = $templateClone;
	$self->{"watchAppHandler"}->passTemplateModelHashToStoryboardGenerator($uniqueRowTemplateID, $templateClone);
	
	# finally return unique id to set it to as 
	# row controller id for the segment
	return $uniqueRowTemplateID;
}


sub nextPageFormatter {
	my ($self, $watchOSValue, $watchOSElement, $widgetModelRef, $formModelRef) = @_;
	
	my $nextFormId = $self->stringFormatter($watchOSValue);
	my $idVal = UIDFormatter();
	my %segueNextPageHash = ("destination" => $nextFormId, "kind" => "relationship", "relationship" => "nextPage", "id" => $idVal);
	$widgetModelRef->addSeguesInFormattedHash(\%segueNextPageHash);
	
	return $nextFormId;
}

sub formMenuFormatter {
	my ($self, $watchOSValue, $watchOSElement, $widgetModelRef, $formModelRef) = @_;
	my @menuItemsArray = @$watchOSValue;
	my $menuId = UIDFormatter();
	my $menuItemsCount = 0;
	my $wType =  $widgetModelRef->getValueForKey("wType");
	
	for my $menuItemHashRef (@menuItemsArray) {
		if ($menuItemsCount == 4) {
			last;
		}
		my $icon = $menuItemHashRef->{"icon"}->{"default"};			## To Do - post template images decision.
        
        if(defined $icon){
            my $index = index ($icon, '.');
            if($index != -1){
                $icon = substr $icon, 0 , $index;
            }
        }
    

		my $onClick = $menuItemHashRef->{"ide_onClick"};
		my $title = $menuItemHashRef->{"title"};
		my $menuItemId = UIDFormatter();
		
		my %menuItemHash = ("title" => $title, "image" => $icon, "menuItemId" => $menuItemId);

		if (defined $onClick) {
			my $selectorName = $formModelRef->getFormattedValueForKey("identifier")."_$onClick";
			my $destination = $formModelRef->getFormattedValueForKey("id");
			my $actionId = UIDFormatter();
			
			$menuItemHash{"selector"} = $selectorName;
			$menuItemHash{"destination"} = $destination;
			$menuItemHash{"actionId"} = $actionId;
			
			# For code behind generation of menu-items selectors..
			my %selectorHash = ("selectorName" => $selectorName, "JSMethod" => $onClick, "wType" => $wType);
			$formModelRef->addSelectorInFormattedHash(\%selectorHash);
		}
		$formModelRef->addMenuItemInFormattedHash(\%menuItemHash);	
		$menuItemsCount++;
	}
	
	return $menuId;
}

sub recursivePropertyHandler {
	my ($self, $watchOSValue, $watchOSElement, $widgetModelRef, $formModelRef, $widgetConfigRef) = @_;
	$self->iterateWidgetConfigRefAndCreateFormattedHashForWidgetModel($widgetConfigRef, $widgetModelRef, $formModelRef, $watchOSValue);
}

sub iterateWidgetConfigRefAndCreateFormattedHashForWidgetModel {
	my ($self, $widgetConfigRef, $widgetModelRef, $formModelRef, $dataModelRef, $referenceFormModel) = @_;
	for my $element (@$widgetConfigRef) {
		
		my $IDEElement = $element->[0];				## an string or an array...
		
		my $watchOSElement = $element->[1];			## a hash containing watchOSProperty, dataType, formatter as keys...
		my $watchOSProp = $watchOSElement->{"watchOSProperty"};
		my $formatterName = $watchOSElement->{"formatter"};
		my $defaultPropValue = $watchOSElement->{"value"};

		my $watchOSValue;
		my $watchOSFormattedValue;
		
		if (ref $IDEElement eq 'ARRAY') {
			my %watchOSHash;
			for my $subElement (@$IDEElement) {
				$watchOSHash{$subElement} = (defined $dataModelRef )? $dataModelRef{$subElement}: $widgetModelRef->getValueForKey($subElement);
			}
			$watchOSValue = \%watchOSHash;
		} else {
			if (defined $dataModelRef) {
				$watchOSValue = $dataModelRef->{$IDEElement};
			}
			else
			{	$watchOSValue = $widgetModelRef->getValueForKey($IDEElement);
			}
		}
		if (defined $watchOSValue) {
			
			if (defined $formatterName )
			{
				$watchOSFormattedValue = eval("\$self->$formatterName(\$watchOSValue, \$watchOSElement, \$widgetModelRef, \$formModelRef, \$widgetConfigRef, \$referenceFormModel)");
			}
			elsif (defined $defaultPropValue)
			{
				$watchOSFormattedValue = $defaultPropValue;
			}

			if (defined $watchOSProp){
				$widgetModelRef->setFormattedValueForKey($watchOSProp, $watchOSFormattedValue);
			}
		}
	}
}


sub createOutletHashForWidgetModel {
	my ($modelRef, $propValue) = @_;
	
	my $destinationVal = $modelRef->getFormattedValueForKey("id");
	my $idVal = UIDFormatter();
	my $type = $modelRef->getClassType();
	if($type =~ "NotificationForm") {
	   $logger->debug("Ignoring NotificationForm outlet creation");
	   return;
	}
	else {
	my %outletHash = ("property" => $propValue, "destination" => $destinationVal, "id" => $idVal, "type" => $type);
	   return \%outletHash;
	}
}

sub createOutletHashForWidgetModelUtil {
	my ($modelRef, $formModelRef) = @_;
	
	my $propValue = $modelRef->getFormattedValueForKey("identifier");
	if ($formModelRef->getFormattedValueForKey("wType") eq "WatchStaticNotificationForm") {
		## Property value in case of static notification alert outlet is "notificationAlertLabel".
		$propValue = "notificationAlertLabel";
	}
	
	return createOutletHashForWidgetModel($modelRef, $propValue);
}

sub addOutletsInFormattedHashOfFormModel {
	my ($modelRef, $formModelRef) = @_;
	
# 	Not able to recall why this was done intentionally..
#	commenting the code for now to fix FW4679(group widgets inside templates not accessible at runtime.)
#	if ($formModelRef->isa('TemplateModel') and $modelRef->isa('ContainerModel')) {
# 		## For templates, group need not be kept in the outlets.
# 		return;
# 	}
	if ($formModelRef->getFormattedValueForKey("wType") eq "WatchStaticNotificationForm" &&
		$modelRef->getFormattedValueForKey("identifier") ne $formModelRef->getFormattedValueForKey("notificationLabel")) {
		## For static notification, none of the sub widgets need to be added as outlets except notification label.
		return;
	}
    
    # Different way of adding outlets for button with content as group.
    if ($modelRef->getType() eq "ContainerButton") {
    	my $destinationValBtn = $modelRef->getFormattedValueForKey("buttonid");
    	my $destinationValGrp = $modelRef->getFormattedValueForKey("id");
    	
    	my $propValueBtn = $modelRef->getFormattedValueForKey("parentBtnIdentifier");
    	my $propValueGrp = $modelRef->getFormattedValueForKey("identifier");
    	
    	my $idValBtn = UIDFormatter();
    	my $idValGrp = UIDFormatter();	
    
    	my %outletHashBtn = ("property" => $propValueBtn, "destination" => $destinationValBtn, "id" => $idValBtn, "type" => "Button");
    	my %outletHashGrp = ("property" => $propValueGrp, "destination" => $destinationValGrp, "id" => $idValGrp, "type" => "Group");
    	
    	$formModelRef->addOutletsInFormattedHash(\%outletHashBtn);
    	$formModelRef->addOutletsInFormattedHash(\%outletHashGrp);
    	
    	return;
    }
    
    $logger->debug("modelref type: ", $modelRef->getType());
    
	my $outletHashRef = createOutletHashForWidgetModelUtil($modelRef, $formModelRef);
	if(defined $outletHashRef) {
	   $formModelRef->addOutletsInFormattedHash($outletHashRef);
	}
}

sub addVariationsInFormattedHashOfFormModel {
	my ($self, $modelRef) = @_;
	if($modelRef->isa('FormModel')) {
		$logger->debug("Adding variations for form: ", $modelRef->{"id"});
		$self->createVariationsInContainerModel($modelRef);
	}
}

sub createVariationsInContainerModel {
	my ($self, $modelRef) = @_;
	
	if($modelRef->can("getChildrenList")) { 
		my $childrens = $modelRef->getChildrenList();
		foreach (@$childrens) {
			my $isRendered = $_->getFormattedValueForKey("isrendered");
			if(defined $isRendered) {
				$logger->debug("Widget rendered: ", $_->getValueForKey("id"), " : " , $isRendered);
				if ($isRendered eq "NO") {
					$modelRef->addVariationsInFormattedHash($_->getFormattedValueForKey("id"));
				}
			}
			if($_->isa('ContainerModel')) {
				$self->createVariationsInContainerModel($_);	
			}
		}
	}
}



my %dynamicNotificationSegueInfoDict;

sub createOrAddSegueHashForWidgetModel {
    my ($modelRef) = @_;

    my $retVal;
    if($modelRef->getType() =~ "NotificationForm" ) {
        $logger->debug("Creating/Adding segue notification form.. " . $modelRef->getType());
        if($modelRef->getType() eq "WatchDynamicNotificationForm") {
            $logger->debug("Creating segue for WatchDynamicNotificationForm : " . $modelRef->{"id"});
            my $destinationVal = $modelRef->getFormattedValueForKey("id");
            my $idVal = UIDFormatter();
            my $dynamicNotificationSegue = {"destination" => $destinationVal, "id" => $idVal, "kind" => "relationship", "relationship" => "dynamicNotificationInterface"};
            $dynamicNotificationSegueInfoDict{$modelRef->getFormattedValueForKey("identifier")} = $dynamicNotificationSegue;
        }
        else {
            $retVal = $dynamicNotificationSegueInfoDict{$modelRef->getFormattedValueForKey("identifier")};
        }
    }

    return $retVal;
}

sub addSeguesInFormattedHashOfFormModel {
    my ($modelRef, $formModelRef) = @_;
    $logger->debug("modelref type: ", $modelRef->getType());
    my $segueHashRef = createOrAddSegueHashForWidgetModel($modelRef);
    if($segueHashRef) {
       $formModelRef->addSeguesInFormattedHash($segueHashRef);
    }
}

sub createActionHash {
	my ($modelRef, $formModelRef) = @_;
		
	my $JSMethod = $modelRef->getFormattedValueForKey("selector");
	my $selectorName = $modelRef->getFormattedValueForKey("identifier")."_$JSMethod"; #uniqueSelectorNameFormatter();
	my $wType =  $modelRef->getValueForKey("wType");
	if (($wType eq "Slider") || ($wType eq "Switch")) {
		$selectorName = "$selectorName:";
	}	
	
	my $destinationVal = $formModelRef->getFormattedValueForKey("id");
	my $idVal = UIDFormatter();
	
	my %actionHash = ("selector" => $selectorName, "destination" => $destinationVal, "id" => $idVal);
	
	my %selectorHash = ("selectorName" => $selectorName, "JSMethod" => $JSMethod, "wType" => $wType);
	$formModelRef->addSelectorInFormattedHash(\%selectorHash);
	
	return \%actionHash;
}

sub FormatThisModel {
	my ($self, $modelRef, $formModelRef, $referenceFormModel) = @_;
	
	my $widgetType = $modelRef->getType();

	if ( $widgetType eq "Group" && defined $modelRef->getValueForKey("onclick") ) {
		$modelRef->setValueForKey("wType", "ContainerButton");
		$widgetType = "ContainerButton";
	}
	
    my $configRef = $configHashRef->{$widgetType};
    
    $self->iterateWidgetConfigRefAndCreateFormattedHashForWidgetModel($configRef, $modelRef, $formModelRef,undef, $referenceFormModel);

 	
 	if(!($widgetType eq "Form" || $widgetType eq "WatchStaticNotificationForm" || $widgetType eq "WatchDynamicNotificationForm" || $widgetType eq "WatchGlanceForm" || $widgetType eq "Template")) {
 		addOutletsInFormattedHashOfFormModel($modelRef, $formModelRef, $referenceFormModel);
 	}
 	
 	if($widgetType =~ "NotificationForm" ) {
 	  addSeguesInFormattedHashOfFormModel($modelRef, $formModelRef, $referenceFormModel);
 	}
}

sub valueOf {
    my ($elem) = shift;
    if(defined $elem) {
        return $elem;
    }
    else {
        return "";
    }
}

1;



