#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVMediaCharacteristicDescribesVideoForAccessibility;
	if (p != NULL) context[@"AVMediaCharacteristicDescribesVideoForAccessibility"] = AVMediaCharacteristicDescribesVideoForAccessibility;
	p = (void*) &AVMediaCharacteristicEasyToRead;
	if (p != NULL) context[@"AVMediaCharacteristicEasyToRead"] = AVMediaCharacteristicEasyToRead;
	p = (void*) &AVFileTypeAppleM4A;
	if (p != NULL) context[@"AVFileTypeAppleM4A"] = AVFileTypeAppleM4A;
	p = (void*) &AVFileType3GPP2;
	if (p != NULL) context[@"AVFileType3GPP2"] = AVFileType3GPP2;
	p = (void*) &AVMediaCharacteristicLanguageTranslation;
	if (p != NULL) context[@"AVMediaCharacteristicLanguageTranslation"] = AVMediaCharacteristicLanguageTranslation;
	p = (void*) &AVMediaCharacteristicAudible;
	if (p != NULL) context[@"AVMediaCharacteristicAudible"] = AVMediaCharacteristicAudible;
	p = (void*) &AVFileTypeMPEG4;
	if (p != NULL) context[@"AVFileTypeMPEG4"] = AVFileTypeMPEG4;
	p = (void*) &AVFileTypeWAVE;
	if (p != NULL) context[@"AVFileTypeWAVE"] = AVFileTypeWAVE;
	p = (void*) &AVFileType3GPP;
	if (p != NULL) context[@"AVFileType3GPP"] = AVFileType3GPP;
	p = (void*) &AVMediaCharacteristicLegible;
	if (p != NULL) context[@"AVMediaCharacteristicLegible"] = AVMediaCharacteristicLegible;
	p = (void*) &AVMediaCharacteristicDescribesMusicAndSoundForAccessibility;
	if (p != NULL) context[@"AVMediaCharacteristicDescribesMusicAndSoundForAccessibility"] = AVMediaCharacteristicDescribesMusicAndSoundForAccessibility;
	p = (void*) &AVMediaTypeText;
	if (p != NULL) context[@"AVMediaTypeText"] = AVMediaTypeText;
	p = (void*) &AVMediaCharacteristicTranscribesSpokenDialogForAccessibility;
	if (p != NULL) context[@"AVMediaCharacteristicTranscribesSpokenDialogForAccessibility"] = AVMediaCharacteristicTranscribesSpokenDialogForAccessibility;
	p = (void*) &AVFileTypeMPEGLayer3;
	if (p != NULL) context[@"AVFileTypeMPEGLayer3"] = AVFileTypeMPEGLayer3;
	p = (void*) &AVMediaCharacteristicContainsOnlyForcedSubtitles;
	if (p != NULL) context[@"AVMediaCharacteristicContainsOnlyForcedSubtitles"] = AVMediaCharacteristicContainsOnlyForcedSubtitles;
	p = (void*) &AVMediaTypeTimecode;
	if (p != NULL) context[@"AVMediaTypeTimecode"] = AVMediaTypeTimecode;
	p = (void*) &AVMediaCharacteristicFrameBased;
	if (p != NULL) context[@"AVMediaCharacteristicFrameBased"] = AVMediaCharacteristicFrameBased;
	p = (void*) &AVFileTypeAMR;
	if (p != NULL) context[@"AVFileTypeAMR"] = AVFileTypeAMR;
	p = (void*) &AVMediaTypeMetadata;
	if (p != NULL) context[@"AVMediaTypeMetadata"] = AVMediaTypeMetadata;
	p = (void*) &AVFileTypeAIFC;
	if (p != NULL) context[@"AVFileTypeAIFC"] = AVFileTypeAIFC;
	p = (void*) &AVFileTypeAIFF;
	if (p != NULL) context[@"AVFileTypeAIFF"] = AVFileTypeAIFF;
	p = (void*) &AVFileTypeSunAU;
	if (p != NULL) context[@"AVFileTypeSunAU"] = AVFileTypeSunAU;
	p = (void*) &AVFileTypeEnhancedAC3;
	if (p != NULL) context[@"AVFileTypeEnhancedAC3"] = AVFileTypeEnhancedAC3;
	p = (void*) &AVMediaTypeSubtitle;
	if (p != NULL) context[@"AVMediaTypeSubtitle"] = AVMediaTypeSubtitle;
	p = (void*) &AVStreamingKeyDeliveryPersistentContentKeyType;
	if (p != NULL) context[@"AVStreamingKeyDeliveryPersistentContentKeyType"] = AVStreamingKeyDeliveryPersistentContentKeyType;
	p = (void*) &AVFileTypeQuickTimeMovie;
	if (p != NULL) context[@"AVFileTypeQuickTimeMovie"] = AVFileTypeQuickTimeMovie;
	p = (void*) &AVMediaTypeMuxed;
	if (p != NULL) context[@"AVMediaTypeMuxed"] = AVMediaTypeMuxed;
	p = (void*) &AVMediaCharacteristicVisual;
	if (p != NULL) context[@"AVMediaCharacteristicVisual"] = AVMediaCharacteristicVisual;
	p = (void*) &AVFileTypeAppleM4V;
	if (p != NULL) context[@"AVFileTypeAppleM4V"] = AVFileTypeAppleM4V;
	p = (void*) &AVMediaCharacteristicDubbedTranslation;
	if (p != NULL) context[@"AVMediaCharacteristicDubbedTranslation"] = AVMediaCharacteristicDubbedTranslation;
	p = (void*) &AVMediaTypeClosedCaption;
	if (p != NULL) context[@"AVMediaTypeClosedCaption"] = AVMediaTypeClosedCaption;
	p = (void*) &AVMediaCharacteristicVoiceOverTranslation;
	if (p != NULL) context[@"AVMediaCharacteristicVoiceOverTranslation"] = AVMediaCharacteristicVoiceOverTranslation;
	p = (void*) &AVMediaCharacteristicIsMainProgramContent;
	if (p != NULL) context[@"AVMediaCharacteristicIsMainProgramContent"] = AVMediaCharacteristicIsMainProgramContent;
	p = (void*) &AVFileTypeAC3;
	if (p != NULL) context[@"AVFileTypeAC3"] = AVFileTypeAC3;
	p = (void*) &AVMediaCharacteristicIsAuxiliaryContent;
	if (p != NULL) context[@"AVMediaCharacteristicIsAuxiliaryContent"] = AVMediaCharacteristicIsAuxiliaryContent;
	p = (void*) &AVMediaTypeAudio;
	if (p != NULL) context[@"AVMediaTypeAudio"] = AVMediaTypeAudio;
	p = (void*) &AVMediaTypeMetadataObject;
	if (p != NULL) context[@"AVMediaTypeMetadataObject"] = AVMediaTypeMetadataObject;
	p = (void*) &AVFileTypeCoreAudioFormat;
	if (p != NULL) context[@"AVFileTypeCoreAudioFormat"] = AVFileTypeCoreAudioFormat;
	p = (void*) &AVMediaTypeVideo;
	if (p != NULL) context[@"AVMediaTypeVideo"] = AVMediaTypeVideo;
	p = (void*) &AVStreamingKeyDeliveryContentKeyType;
	if (p != NULL) context[@"AVStreamingKeyDeliveryContentKeyType"] = AVStreamingKeyDeliveryContentKeyType;
}
void load_AVFoundation_AVMediaFormat_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
