#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AudioToolbox_AudioCodec)
+(JSValue*) valueWithAudioCodecPrimeInfo: (AudioCodecPrimeInfo) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"leadingFrames": @(s.leadingFrames),
		@"trailingFrames": @(s.trailingFrames),
	} inContext: context];
}
-(AudioCodecPrimeInfo) toAudioCodecPrimeInfo {
	return (AudioCodecPrimeInfo) {
		(UInt32) [self[@"leadingFrames"] toDouble],
		(UInt32) [self[@"trailingFrames"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"AudioCodecUninitialize"] = ^OSStatus(id arg0) {
		return AudioCodecUninitialize(arg0);
	};
	context[@"AudioCodecReset"] = ^OSStatus(id arg0) {
		return AudioCodecReset(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAudioCodecPropertySupportedInputFormats"] = @1768320291UL;
	context[@"kAudioCodecPropertySupportedOutputFormats"] = @1868983587UL;
	context[@"kAudioCodecPropertyAvailableInputSampleRates"] = @1634300786UL;
	context[@"kAudioCodecPropertyAvailableOutputSampleRates"] = @1634694002UL;
	context[@"kAudioCodecPropertyAvailableBitRateRange"] = @1633841780UL;
	context[@"kAudioCodecPropertyMinimumNumberInputPackets"] = @1835952496UL;
	context[@"kAudioCodecPropertyMinimumNumberOutputPackets"] = @1835954032UL;
	context[@"kAudioCodecPropertyAvailableNumberChannels"] = @1668116067UL;
	context[@"kAudioCodecPropertyDoesSampleRateConversion"] = @1819112035UL;
	context[@"kAudioCodecPropertyAvailableInputChannelLayoutTags"] = @1634296684UL;
	context[@"kAudioCodecPropertyAvailableOutputChannelLayoutTags"] = @1634689900UL;
	context[@"kAudioCodecPropertyInputFormatsForOutputFormat"] = @1768305775UL;
	context[@"kAudioCodecPropertyOutputFormatsForInputFormat"] = @1868969065UL;
	context[@"kAudioCodecPropertyFormatInfo"] = @1633904233UL;

	context[@"kAudioCodecPropertyInputBufferSize"] = @1952609638UL;
	context[@"kAudioCodecPropertyPacketFrameSize"] = @1885432678UL;
	context[@"kAudioCodecPropertyHasVariablePacketByteSizes"] = @1987078975UL;
	context[@"kAudioCodecPropertyEmploysDependentPackets"] = @1685089087UL;
	context[@"kAudioCodecPropertyMaximumPacketByteSize"] = @1885432674UL;
	context[@"kAudioCodecPropertyPacketSizeLimitForVBR"] = @1885432684UL;
	context[@"kAudioCodecPropertyCurrentInputFormat"] = @1768320372UL;
	context[@"kAudioCodecPropertyCurrentOutputFormat"] = @1868983668UL;
	context[@"kAudioCodecPropertyMagicCookie"] = @1802857321UL;
	context[@"kAudioCodecPropertyUsedInputBufferSize"] = @1969386854UL;
	context[@"kAudioCodecPropertyIsInitialized"] = @1768843636UL;
	context[@"kAudioCodecPropertyCurrentTargetBitRate"] = @1651663220UL;
	context[@"kAudioCodecPropertyCurrentInputSampleRate"] = @1667855218UL;
	context[@"kAudioCodecPropertyCurrentOutputSampleRate"] = @1668248434UL;
	context[@"kAudioCodecPropertyQualitySetting"] = @1936876401UL;
	context[@"kAudioCodecPropertyApplicableBitRateRange"] = @1651668065UL;
	context[@"kAudioCodecPropertyRecommendedBitRateRange"] = @1651668082UL;
	context[@"kAudioCodecPropertyApplicableInputSampleRates"] = @1769173601UL;
	context[@"kAudioCodecPropertyApplicableOutputSampleRates"] = @1869836897UL;
	context[@"kAudioCodecPropertyPaddedZeros"] = @1885430832UL;
	context[@"kAudioCodecPropertyPrimeMethod"] = @1886547309UL;
	context[@"kAudioCodecPropertyPrimeInfo"] = @1886546285UL;
	context[@"kAudioCodecPropertyCurrentInputChannelLayout"] = @1768123424UL;
	context[@"kAudioCodecPropertyCurrentOutputChannelLayout"] = @1868786720UL;
	context[@"kAudioCodecPropertySettings"] = @1633907488UL;
	context[@"kAudioCodecPropertyFormatList"] = @1633904236UL;
	context[@"kAudioCodecPropertyBitRateControlMode"] = @1633903206UL;
	context[@"kAudioCodecPropertySoundQualityForVBR"] = @1986163313UL;
	context[@"kAudioCodecPropertyBitRateForVBR"] = @1986163298UL;
	context[@"kAudioCodecPropertyDelayMode"] = @1684893540UL;
	context[@"kAudioCodecPropertyAdjustLocalQuality"] = @1584488812UL;
	context[@"kAudioCodecPropertyProgramTargetLevel"] = @1886418028UL;
	context[@"kAudioCodecPropertyDynamicRangeControlMode"] = @1835299427UL;
	context[@"kAudioCodecPropertyProgramTargetLevelConstant"] = @1886678115UL;

	context[@"kAudioCodecQuality_Max"] = @127UL;
	context[@"kAudioCodecQuality_High"] = @96UL;
	context[@"kAudioCodecQuality_Medium"] = @64UL;
	context[@"kAudioCodecQuality_Low"] = @32UL;
	context[@"kAudioCodecQuality_Min"] = @0UL;

	context[@"kAudioCodecPrimeMethod_Pre"] = @0UL;
	context[@"kAudioCodecPrimeMethod_Normal"] = @1UL;
	context[@"kAudioCodecPrimeMethod_None"] = @2UL;

	context[@"kAudioCodecBitRateControlMode_Constant"] = @0UL;
	context[@"kAudioCodecBitRateControlMode_LongTermAverage"] = @1UL;
	context[@"kAudioCodecBitRateControlMode_VariableConstrained"] = @2UL;
	context[@"kAudioCodecBitRateControlMode_Variable"] = @3UL;

	context[@"kAudioCodecDelayMode_Compatibility"] = @0UL;
	context[@"kAudioCodecDelayMode_Minimum"] = @1UL;
	context[@"kAudioCodecDelayMode_Optimal"] = @2UL;

	context[@"kProgramTargetLevel_None"] = @0UL;
	context[@"kProgramTargetLevel_Minus31dB"] = @1UL;
	context[@"kProgramTargetLevel_Minus23dB"] = @2UL;
	context[@"kProgramTargetLevel_Minus20dB"] = @3UL;

	context[@"kDynamicRangeControlMode_None"] = @0UL;
	context[@"kDynamicRangeControlMode_Light"] = @1UL;
	context[@"kDynamicRangeControlMode_Heavy"] = @2UL;

	context[@"kAudioSettingsFlags_ExpertParameter"] = @1UL;
	context[@"kAudioSettingsFlags_InvisibleParameter"] = @2UL;
	context[@"kAudioSettingsFlags_MetaParameter"] = @4UL;
	context[@"kAudioSettingsFlags_UserInterfaceParameter"] = @8UL;

	context[@"kAudioCodecProduceOutputPacketFailure"] = @1UL;
	context[@"kAudioCodecProduceOutputPacketSuccess"] = @2UL;
	context[@"kAudioCodecProduceOutputPacketSuccessHasMore"] = @3UL;
	context[@"kAudioCodecProduceOutputPacketNeedsMoreInputData"] = @4UL;
	context[@"kAudioCodecProduceOutputPacketAtEOF"] = @5UL;

	context[@"kAudioCodecGetPropertyInfoSelect"] = @1UL;
	context[@"kAudioCodecGetPropertySelect"] = @2UL;
	context[@"kAudioCodecSetPropertySelect"] = @3UL;
	context[@"kAudioCodecInitializeSelect"] = @4UL;
	context[@"kAudioCodecUninitializeSelect"] = @5UL;
	context[@"kAudioCodecAppendInputDataSelect"] = @6UL;
	context[@"kAudioCodecProduceOutputDataSelect"] = @7UL;
	context[@"kAudioCodecResetSelect"] = @8UL;
	context[@"kAudioCodecAppendInputBufferListSelect"] = @9UL;
	context[@"kAudioCodecProduceOutputBufferListSelect"] = @10UL;

	context[@"kAudioCodecNoError"] = @0L;
	context[@"kAudioCodecUnspecifiedError"] = @2003329396L;
	context[@"kAudioCodecUnknownPropertyError"] = @2003332927L;
	context[@"kAudioCodecBadPropertySizeError"] = @561211770L;
	context[@"kAudioCodecIllegalOperationError"] = @1852797029L;
	context[@"kAudioCodecUnsupportedFormatError"] = @560226676L;
	context[@"kAudioCodecStateError"] = @561214580L;
	context[@"kAudioCodecNotEnoughBufferSpaceError"] = @560100710L;
	context[@"kAudioCodecBadDataError"] = @1650549857L;

	context[@"kAudioCodecPropertyMinimumDelayMode"] = @1835296108UL;

	context[@"kAudioCodecPropertyNameCFString"] = @1819173229UL;
	context[@"kAudioCodecPropertyManufacturerCFString"] = @1819107691UL;
	context[@"kAudioCodecPropertyFormatCFString"] = @1818652530UL;

	context[@"kAudioCodecPropertyRequiresPacketDescription"] = @1885432676UL;
	context[@"kAudioCodecPropertyAvailableBitRates"] = @1651668003UL;
	context[@"kAudioCodecExtendFrequencies"] = @1633903974UL;
	context[@"kAudioCodecUseRecommendedSampleRate"] = @1970434930UL;
	context[@"kAudioCodecOutputPrecedence"] = @1869639794UL;
	context[@"kAudioCodecBitRateFormat"] = @1633903206UL;
	context[@"kAudioCodecDoesSampleRateConversion"] = @1819112035UL;
	context[@"kAudioCodecInputFormatsForOutputFormat"] = @1768305775UL;
	context[@"kAudioCodecOutputFormatsForInputFormat"] = @1868969065UL;
	context[@"kAudioCodecPropertyInputChannelLayout"] = @1768123424UL;
	context[@"kAudioCodecPropertyOutputChannelLayout"] = @1868786720UL;
	context[@"kAudioCodecPropertyAvailableInputChannelLayouts"] = @1634296684UL;
	context[@"kAudioCodecPropertyAvailableOutputChannelLayouts"] = @1634689900UL;
	context[@"kAudioCodecPropertyZeroFramesPadded"] = @1885430832UL;

	context[@"kAudioCodecBitRateFormat_CBR"] = @0UL;
	context[@"kAudioCodecBitRateFormat_ABR"] = @1UL;
	context[@"kAudioCodecBitRateFormat_VBR"] = @2UL;

	context[@"kAudioCodecOutputPrecedenceNone"] = @0UL;
	context[@"kAudioCodecOutputPrecedenceBitRate"] = @1UL;
	context[@"kAudioCodecOutputPrecedenceSampleRate"] = @2UL;

	context[@"kHintBasic"] = @0UL;
	context[@"kHintAdvanced"] = @1UL;
	context[@"kHintHidden"] = @2UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AudioCodec_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
