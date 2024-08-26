#!/usr/bin/perl -w

package WidgetDataProcessor;

# use strict;
use WidgetModel;
use ContainerModel;
use FormModel;
use TemplateModel;
use GlobalModel;
use Formatter;
use WatchAppHandler;
use Data::Dumper;
use StoryBoardGenerator;
use Log::Log4perl;

my $logger = Log::Log4perl->get_logger("WidgetDataProcessor");
my %staticI18nHash = ("TextCategoryHashes" => [], "TitleCategoryHashes" => []);

sub new
{
    my ($class, $skinsHash) = @_;
    my $self = {};
    $self->{"skinsHash"} = $skinsHash;
    bless $self, $class;
    return $self;
}

sub getStaticI18nHash {
	return \%staticI18nHash;
}

sub createStaticI18nHash {
	my ($self, $widgetModel) = @_;
	
	## After formatting, check if the formatted hash has got value for titlei18n/texti18n key..
	## If yes, create a hash to be used to create a string entry in the static internationalisation file for a particular locale..
	
	my %hash;
	$hash{"ObjectID"} = $widgetModel->getFormattedValueForKey("id");
	
	if (defined $widgetModel->getFormattedValueForKey("texti18n")) {
		# Text category widget.
		
		$hash{"Class"} = "WKInterface".$widgetModel->getFormattedValueForKey("wType");
		$hash{"text"} = $widgetModel->getFormattedValueForKey("text");
		$hash{"i18nKey"} = $widgetModel->getFormattedValueForKey("texti18n");

        push (@{ $staticI18nHash{"TextCategoryHashes"} }, \%hash);
	} 
	elsif (defined $widgetModel->getFormattedValueForKey("titlei18n")) {
		# Title category widget.
		
		my $wType = $widgetModel->getFormattedValueForKey("wType");
		if ($wType eq "Form") {
			$hash{"Class"} = "WKInterfaceController";
		} else {
			$hash{"Class"} = "WKInterface".$wType;
		}
		$hash{"title"} = $widgetModel->getFormattedValueForKey("title");
		$hash{"i18nKey"} = $widgetModel->getFormattedValueForKey("titlei18n");
		
        push (@{ $staticI18nHash{"TitleCategoryHashes"} }, \%hash);
	}
}


sub processWidgetsRecursively {
	my ($self, $widgetModel, $formModel, $formatterObj) = @_;
	$formatterObj->FormatThisModel($widgetModel, $formModel);
	
	$self->createStaticI18nHash($widgetModel);
	
	if ($widgetModel->isa(ContainerModel)) {
		my $childrenList= $widgetModel->getChildrenList();
		for my $child (@$childrenList) {
			$self->processWidgetsRecursively($child, $formModel, $formatterObj);
		}
	}
}


sub processModelsInGlobalModelStore {
	my ($self, $handlerRef) = @_;
	
	my $modelStoreObj = new GlobalModel();
	my %formModelsHash = $modelStoreObj->getFormModelsHash();
	my %templateModelsHash = $modelStoreObj->getTemplateModelsHash();
	
	$handlerRef->preProcessingEvent();
	my $formatterObj = new Formatter($self->{"skinsHash"}, $modelStoreObj,  $handlerRef);
	
	while ( my ($templateId, $templateModel) = each %templateModelsHash ) {
		$self->processWidgetsRecursively($templateModel, $templateModel, $formatterObj);
		$handlerRef->passTemplateModelHashToStoryboardGenerator($templateId, $templateModel);
		$handlerRef->handleEventForContainerModel($templateModel);
    }

	my %staticNotificationInfoDict = ();
	
	while ( my ($formId, $formModel) = each %formModelsHash ) {
		## Dynamic notification form has to be formatted before static notification form due to segue generation dependency.
		if ( $formModel->getValueForKey("wType") eq "WatchStaticNotificationForm" ) {
			$staticNotificationInfoDict{$formId} = $formModel;
		} else {
			$self->processWidgetsRecursively($formModel, $formModel, $formatterObj);
			$formatterObj->addVariationsInFormattedHashOfFormModel($formModel);
			$handlerRef->passFormModelHashToStoryboardGenerator($formId, $formModel);
		}
	}
	
	## Format all static notification forms... made sure that they get formatted after dynamic notification forms.
	
	while  (my ($staticNotificationId, $staticNotificationModel) = each %staticNotificationInfoDict)
	{
		$self->processWidgetsRecursively($staticNotificationModel, $staticNotificationModel, $formatterObj);
		$formatterObj->addVariationsInFormattedHashOfFormModel($staticNotificationModel);
		$handlerRef->passFormModelHashToStoryboardGenerator($staticNotificationId, $staticNotificationModel);
	}
	
	while ( my ($formId, $formModel) = each %formModelsHash ) {
		$handlerRef->handleEventForContainerModel($formModel);
	}
	
	$handlerRef->postProcessingEvent();
}


1;





