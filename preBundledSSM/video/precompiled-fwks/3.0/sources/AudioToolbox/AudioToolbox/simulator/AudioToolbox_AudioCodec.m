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
		(UInt32) [self[@"leadingFrames"] toUInt32],
		(UInt32) [self[@"trailingFrames"] toUInt32],
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
	context[@"kAudioCodecPropertySupportedInputFormats"] = @1768320291U;
	context[@"kAudioCodecPropertySupportedOutputFormats"] = @1868983587U;
	context[@"kAudioCodecPropertyAvailableInputSampleRates"] = @1634300786U;
	context[@"kAudioCodecPropertyAvailableOutputSampleRates"] = @1634694002U;
	context[@"kAudioCodecPropertyAvailableBitRateRange"] = @1633841780U;
	context[@"kAudioCodecPropertyMinimumNumberInputPackets"] = @1835952496U;
	context[@"kAudioCodecPropertyMinimumNumberOutputPackets"] = @1835954032U;
	context[@"kAudioCodecPropertyAvailableNumberChannels"] = @1668116067U;
	context[@"kAudioCodecPropertyDoesSampleRateConversion"] = @1819112035U;
	context[@"kAudioCodecPropertyAvailableInputChannelLayoutTags"] = @1634296684U;
	context[@"kAudioCodecPropertyAvailableOutputChannelLayoutTags"] = @1634689900U;
	context[@"kAudioCodecPropertyInputFormatsForOutputFormat"] = @1768305775U;
	context[@"kAudioCodecPropertyOutputFormatsForInputFormat"] = @1868969065U;
	context[@"kAudioCodecPropertyFormatInfo"] = @1633904233U;

	context[@"kAudioCodecPropertyInputBufferSize"] = @1952609638U;
	context[@"kAudioCodecPropertyPacketFrameSize"] = @1885432678U;
	context[@"kAudioCodecPropertyHasVariablePacketByteSizes"] = @1987078975U;
	context[@"kAudioCodecPropertyEmploysDependentPackets"] = @1685089087U;
	context[@"kAudioCodecPropertyMaximumPacketByteSize"] = @1885432674U;
	context[@"kAudioCodecPropertyPacketSizeLimitForVBR"] = @1885432684U;
	context[@"kAudioCodecPropertyCurrentInputFormat"] = @1768320372U;
	context[@"kAudioCodecPropertyCurrentOutputFormat"] = @1868983668U;
	context[@"kAudioCodecPropertyMagicCookie"] = @1802857321U;
	context[@"kAudioCodecPropertyUsedInputBufferSize"] = @1969386854U;
	context[@"kAudioCodecPropertyIsInitialized"] = @1768843636U;
	context[@"kAudioCodecPropertyCurrentTargetBitRate"] = @1651663220U;
	context[@"kAudioCodecPropertyCurrentInputSampleRate"] = @1667855218U;
	context[@"kAudioCodecPropertyCurrentOutputSampleRate"] = @1668248434U;
	context[@"kAudioCodecPropertyQualitySetting"] = @1936876401U;
	context[@"kAudioCodecPropertyApplicableBitRateRange"] = @1651668065U;
	context[@"kAudioCodecPropertyRecommendedBitRateRange"] = @1651668082U;
	context[@"kAudioCodecPropertyApplicableInputSampleRates"] = @1769173601U;
	context[@"kAudioCodecPropertyApplicableOutputSampleRates"] = @1869836897U;
	context[@"kAudioCodecPropertyPaddedZeros"] = @1885430832U;
	context[@"kAudioCodecPropertyPrimeMethod"] = @1886547309U;
	context[@"kAudioCodecPropertyPrimeInfo"] = @1886546285U;
	context[@"kAudioCodecPropertyCurrentInputChannelLayout"] = @1768123424U;
	context[@"kAudioCodecPropertyCurrentOutputChannelLayout"] = @1868786720U;
	context[@"kAudioCodecPropertySettings"] = @1633907488U;
	context[@"kAudioCodecPropertyFormatList"] = @1633904236U;
	context[@"kAudioCodecPropertyBitRateControlMode"] = @1633903206U;
	context[@"kAudioCodecPropertySoundQualityForVBR"] = @1986163313U;
	context[@"kAudioCodecPropertyBitRateForVBR"] = @1986163298U;
	context[@"kAudioCodecPropertyDelayMode"] = @1684893540U;
	context[@"kAudioCodecPropertyAdjustLocalQuality"] = @1584488812U;
	context[@"kAudioCodecPropertyProgramTargetLevel"] = @1886418028U;
	context[@"kAudioCodecPropertyDynamicRangeControlMode"] = @1835299427U;
	context[@"kAudioCodecPropertyProgramTargetLevelConstant"] = @1886678115U;

	context[@"kAudioCodecQuality_Max"] = @127U;
	context[@"kAudioCodecQuality_High"] = @96U;
	context[@"kAudioCodecQuality_Medium"] = @64U;
	context[@"kAudioCodecQuality_Low"] = @32U;
	context[@"kAudioCodecQuality_Min"] = @0U;

	context[@"kAudioCodecPrimeMethod_Pre"] = @0U;
	context[@"kAudioCodecPrimeMethod_Normal"] = @1U;
	context[@"kAudioCodecPrimeMethod_None"] = @2U;

	context[@"kAudioCodecBitRateControlMode_Constant"] = @0U;
	context[@"kAudioCodecBitRateControlMode_LongTermAverage"] = @1U;
	context[@"kAudioCodecBitRateControlMode_VariableConstrained"] = @2U;
	context[@"kAudioCodecBitRateControlMode_Variable"] = @3U;

	context[@"kAudioCodecDelayMode_Compatibility"] = @0U;
	context[@"kAudioCodecDelayMode_Minimum"] = @1U;
	context[@"kAudioCodecDelayMode_Optimal"] = @2U;

	context[@"kProgramTargetLevel_None"] = @0U;
	context[@"kProgramTargetLevel_Minus31dB"] = @1U;
	context[@"kProgramTargetLevel_Minus23dB"] = @2U;
	context[@"kProgramTargetLevel_Minus20dB"] = @3U;

	context[@"kDynamicRangeControlMode_None"] = @0U;
	context[@"kDynamicRangeControlMode_Light"] = @1U;
	context[@"kDynamicRangeControlMode_Heavy"] = @2U;

	context[@"kAudioSettingsFlags_ExpertParameter"] = @1U;
	context[@"kAudioSettingsFlags_InvisibleParameter"] = @2U;
	context[@"kAudioSettingsFlags_MetaParameter"] = @4U;
	context[@"kAudioSettingsFlags_UserInterfaceParameter"] = @8U;

	context[@"kAudioCodecProduceOutputPacketFailure"] = @1U;
	context[@"kAudioCodecProduceOutputPacketSuccess"] = @2U;
	context[@"kAudioCodecProduceOutputPacketSuccessHasMore"] = @3U;
	context[@"kAudioCodecProduceOutputPacketNeedsMoreInputData"] = @4U;
	context[@"kAudioCodecProduceOutputPacketAtEOF"] = @5U;

	context[@"kAudioCodecGetPropertyInfoSelect"] = @1U;
	context[@"kAudioCodecGetPropertySelect"] = @2U;
	context[@"kAudioCodecSetPropertySelect"] = @3U;
	context[@"kAudioCodecInitializeSelect"] = @4U;
	context[@"kAudioCodecUninitializeSelect"] = @5U;
	context[@"kAudioCodecAppendInputDataSelect"] = @6U;
	context[@"kAudioCodecProduceOutputDataSelect"] = @7U;
	context[@"kAudioCodecResetSelect"] = @8U;
	context[@"kAudioCodecAppendInputBufferListSelect"] = @9U;
	context[@"kAudioCodecProduceOutputBufferListSelect"] = @10U;

	context[@"kAudioCodecNoError"] = @0;
	context[@"kAudioCodecUnspecifiedError"] = @2003329396;
	context[@"kAudioCodecUnknownPropertyError"] = @2003332927;
	context[@"kAudioCodecBadPropertySizeError"] = @561211770;
	context[@"kAudioCodecIllegalOperationError"] = @1852797029;
	context[@"kAudioCodecUnsupportedFormatError"] = @560226676;
	context[@"kAudioCodecStateError"] = @561214580;
	context[@"kAudioCodecNotEnoughBufferSpaceError"] = @560100710;
	context[@"kAudioCodecBadDataError"] = @1650549857;

	context[@"kAudioCodecPropertyMinimumDelayMode"] = @1835296108U;

	context[@"kAudioCodecPropertyNameCFString"] = @1819173229U;
	context[@"kAudioCodecPropertyManufacturerCFString"] = @1819107691U;
	context[@"kAudioCodecPropertyFormatCFString"] = @1818652530U;

	context[@"kAudioCodecPropertyRequiresPacketDescription"] = @1885432676U;
	context[@"kAudioCodecPropertyAvailableBitRates"] = @1651668003U;
	context[@"kAudioCodecExtendFrequencies"] = @1633903974U;
	context[@"kAudioCodecUseRecommendedSampleRate"] = @1970434930U;
	context[@"kAudioCodecOutputPrecedence"] = @1869639794U;
	context[@"kAudioCodecBitRateFormat"] = @1633903206U;
	context[@"kAudioCodecDoesSampleRateConversion"] = @1819112035U;
	context[@"kAudioCodecInputFormatsForOutputFormat"] = @1768305775U;
	context[@"kAudioCodecOutputFormatsForInputFormat"] = @1868969065U;
	context[@"kAudioCodecPropertyInputChannelLayout"] = @1768123424U;
	context[@"kAudioCodecPropertyOutputChannelLayout"] = @1868786720U;
	context[@"kAudioCodecPropertyAvailableInputChannelLayouts"] = @1634296684U;
	context[@"kAudioCodecPropertyAvailableOutputChannelLayouts"] = @1634689900U;
	context[@"kAudioCodecPropertyZeroFramesPadded"] = @1885430832U;

	context[@"kAudioCodecBitRateFormat_CBR"] = @0U;
	context[@"kAudioCodecBitRateFormat_ABR"] = @1U;
	context[@"kAudioCodecBitRateFormat_VBR"] = @2U;

	context[@"kAudioCodecOutputPrecedenceNone"] = @0U;
	context[@"kAudioCodecOutputPrecedenceBitRate"] = @1U;
	context[@"kAudioCodecOutputPrecedenceSampleRate"] = @2U;

	context[@"kHintBasic"] = @0U;
	context[@"kHintAdvanced"] = @1U;
	context[@"kHintHidden"] = @2U;

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
