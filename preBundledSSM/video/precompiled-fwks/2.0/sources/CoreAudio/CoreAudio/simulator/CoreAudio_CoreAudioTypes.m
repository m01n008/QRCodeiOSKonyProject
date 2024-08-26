#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreAudio_CoreAudioTypes)
+(JSValue*) valueWithAudioValueRange: (AudioValueRange) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mMinimum": @(s.mMinimum),
		@"mMaximum": @(s.mMaximum),
	} inContext: context];
}
-(AudioValueRange) toAudioValueRange {
	return (AudioValueRange) {
		(Float64) [self[@"mMinimum"] toDouble],
		(Float64) [self[@"mMaximum"] toDouble],
	};
}
+(JSValue*) valueWithAudioClassDescription: (AudioClassDescription) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mType": @(s.mType),
		@"mSubType": @(s.mSubType),
		@"mManufacturer": @(s.mManufacturer),
	} inContext: context];
}
-(AudioClassDescription) toAudioClassDescription {
	return (AudioClassDescription) {
		(OSType) [self[@"mType"] toUInt32],
		(OSType) [self[@"mSubType"] toUInt32],
		(OSType) [self[@"mManufacturer"] toUInt32],
	};
}
+(JSValue*) valueWithSMPTETime: (SMPTETime) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mSubframes": @(s.mSubframes),
		@"mSubframeDivisor": @(s.mSubframeDivisor),
		@"mCounter": @(s.mCounter),
		@"mType": @(s.mType),
		@"mFlags": @(s.mFlags),
		@"mHours": @(s.mHours),
		@"mMinutes": @(s.mMinutes),
		@"mSeconds": @(s.mSeconds),
		@"mFrames": @(s.mFrames),
	} inContext: context];
}
-(SMPTETime) toSMPTETime {
	return (SMPTETime) {
		(SInt16) [self[@"mSubframes"] toInt32],
		(SInt16) [self[@"mSubframeDivisor"] toInt32],
		(UInt32) [self[@"mCounter"] toUInt32],
		(SMPTETimeType) [self[@"mType"] toInt32],
		(SMPTETimeFlags) [self[@"mFlags"] toInt32],
		(SInt16) [self[@"mHours"] toInt32],
		(SInt16) [self[@"mMinutes"] toInt32],
		(SInt16) [self[@"mSeconds"] toInt32],
		(SInt16) [self[@"mFrames"] toInt32],
	};
}
+(JSValue*) valueWithAudioTimeStamp: (AudioTimeStamp) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mSampleTime": @(s.mSampleTime),
		@"mHostTime": @(s.mHostTime),
		@"mRateScalar": @(s.mRateScalar),
		@"mWordClockTime": @(s.mWordClockTime),
		@"mSubframes": @(s.mSMPTETime.mSubframes),
		@"mSubframeDivisor": @(s.mSMPTETime.mSubframeDivisor),
		@"mCounter": @(s.mSMPTETime.mCounter),
		@"mType": @(s.mSMPTETime.mType),
		@"mFlags": @(s.mSMPTETime.mFlags),
		@"mHours": @(s.mSMPTETime.mHours),
		@"mMinutes": @(s.mSMPTETime.mMinutes),
		@"mSeconds": @(s.mSMPTETime.mSeconds),
		@"mFrames": @(s.mSMPTETime.mFrames),
		@"mFlags": @(s.mFlags),
		@"mReserved": @(s.mReserved),
	} inContext: context];
}
-(AudioTimeStamp) toAudioTimeStamp {
	return (AudioTimeStamp) {
		(Float64) [self[@"mSampleTime"] toDouble],
		(UInt64) [self[@"mHostTime"] toDouble],
		(Float64) [self[@"mRateScalar"] toDouble],
		(UInt64) [self[@"mWordClockTime"] toDouble],
		[self[@"mSMPTETime"] toSMPTETime],
		(AudioTimeStampFlags) [self[@"mFlags"] toInt32],
		(UInt32) [self[@"mReserved"] toUInt32],
	};
}
+(JSValue*) valueWithAudioStreamPacketDescription: (AudioStreamPacketDescription) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mStartOffset": @(s.mStartOffset),
		@"mVariableFramesInPacket": @(s.mVariableFramesInPacket),
		@"mDataByteSize": @(s.mDataByteSize),
	} inContext: context];
}
-(AudioStreamPacketDescription) toAudioStreamPacketDescription {
	return (AudioStreamPacketDescription) {
		(SInt64) [self[@"mStartOffset"] toDouble],
		(UInt32) [self[@"mVariableFramesInPacket"] toUInt32],
		(UInt32) [self[@"mDataByteSize"] toUInt32],
	};
}
+(JSValue*) valueWithAudioStreamBasicDescription: (AudioStreamBasicDescription) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mSampleRate": @(s.mSampleRate),
		@"mFormatID": @(s.mFormatID),
		@"mFormatFlags": @(s.mFormatFlags),
		@"mBytesPerPacket": @(s.mBytesPerPacket),
		@"mFramesPerPacket": @(s.mFramesPerPacket),
		@"mBytesPerFrame": @(s.mBytesPerFrame),
		@"mChannelsPerFrame": @(s.mChannelsPerFrame),
		@"mBitsPerChannel": @(s.mBitsPerChannel),
		@"mReserved": @(s.mReserved),
	} inContext: context];
}
-(AudioStreamBasicDescription) toAudioStreamBasicDescription {
	return (AudioStreamBasicDescription) {
		(Float64) [self[@"mSampleRate"] toDouble],
		(AudioFormatID) [self[@"mFormatID"] toUInt32],
		(AudioFormatFlags) [self[@"mFormatFlags"] toUInt32],
		(UInt32) [self[@"mBytesPerPacket"] toUInt32],
		(UInt32) [self[@"mFramesPerPacket"] toUInt32],
		(UInt32) [self[@"mBytesPerFrame"] toUInt32],
		(UInt32) [self[@"mChannelsPerFrame"] toUInt32],
		(UInt32) [self[@"mBitsPerChannel"] toUInt32],
		(UInt32) [self[@"mReserved"] toUInt32],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"AudioChannelLayoutTag_GetNumberOfChannels"] = ^UInt32(AudioChannelLayoutTag arg0) {
		return AudioChannelLayoutTag_GetNumberOfChannels(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAudio_UnimplementedError"] = @-4;
	context[@"kAudio_FileNotFoundError"] = @-43;
	context[@"kAudio_FilePermissionError"] = @-54;
	context[@"kAudio_TooManyFilesOpenError"] = @-42;
	context[@"kAudio_BadFilePathError"] = @561017960;
	context[@"kAudio_ParamError"] = @-50;
	context[@"kAudio_MemFullError"] = @-108;

	context[@"kAudioFormatLinearPCM"] = @1819304813U;
	context[@"kAudioFormatAC3"] = @1633889587U;
	context[@"kAudioFormat60958AC3"] = @1667326771U;
	context[@"kAudioFormatAppleIMA4"] = @1768775988U;
	context[@"kAudioFormatMPEG4AAC"] = @1633772320U;
	context[@"kAudioFormatMPEG4CELP"] = @1667591280U;
	context[@"kAudioFormatMPEG4HVXC"] = @1752594531U;
	context[@"kAudioFormatMPEG4TwinVQ"] = @1953986161U;
	context[@"kAudioFormatMACE3"] = @1296122675U;
	context[@"kAudioFormatMACE6"] = @1296122678U;
	context[@"kAudioFormatULaw"] = @1970037111U;
	context[@"kAudioFormatALaw"] = @1634492791U;
	context[@"kAudioFormatQDesign"] = @1363430723U;
	context[@"kAudioFormatQDesign2"] = @1363430706U;
	context[@"kAudioFormatQUALCOMM"] = @1365470320U;
	context[@"kAudioFormatMPEGLayer1"] = @778924081U;
	context[@"kAudioFormatMPEGLayer2"] = @778924082U;
	context[@"kAudioFormatMPEGLayer3"] = @778924083U;
	context[@"kAudioFormatTimeCode"] = @1953066341U;
	context[@"kAudioFormatMIDIStream"] = @1835623529U;
	context[@"kAudioFormatParameterValueStream"] = @1634760307U;
	context[@"kAudioFormatAppleLossless"] = @1634492771U;
	context[@"kAudioFormatMPEG4AAC_HE"] = @1633772392U;
	context[@"kAudioFormatMPEG4AAC_LD"] = @1633772396U;
	context[@"kAudioFormatMPEG4AAC_ELD"] = @1633772389U;
	context[@"kAudioFormatMPEG4AAC_ELD_SBR"] = @1633772390U;
	context[@"kAudioFormatMPEG4AAC_ELD_V2"] = @1633772391U;
	context[@"kAudioFormatMPEG4AAC_HE_V2"] = @1633772400U;
	context[@"kAudioFormatMPEG4AAC_Spatial"] = @1633772403U;
	context[@"kAudioFormatAMR"] = @1935764850U;
	context[@"kAudioFormatAMR_WB"] = @1935767394U;
	context[@"kAudioFormatAudible"] = @1096107074U;
	context[@"kAudioFormatiLBC"] = @1768710755U;
	context[@"kAudioFormatDVIIntelIMA"] = @1836253201U;
	context[@"kAudioFormatMicrosoftGSM"] = @1836253233U;
	context[@"kAudioFormatAES3"] = @1634038579U;
	context[@"kAudioFormatEnhancedAC3"] = @1700998451U;
	context[@"kAudioFormatFLAC"] = @1718378851U;
	context[@"kAudioFormatOpus"] = @1869641075U;

	context[@"kAudioFormatFlagIsFloat"] = @1U;
	context[@"kAudioFormatFlagIsBigEndian"] = @2U;
	context[@"kAudioFormatFlagIsSignedInteger"] = @4U;
	context[@"kAudioFormatFlagIsPacked"] = @8U;
	context[@"kAudioFormatFlagIsAlignedHigh"] = @16U;
	context[@"kAudioFormatFlagIsNonInterleaved"] = @32U;
	context[@"kAudioFormatFlagIsNonMixable"] = @64U;
	context[@"kAudioFormatFlagsAreAllClear"] = @-2147483648U;
	context[@"kLinearPCMFormatFlagIsFloat"] = @1U;
	context[@"kLinearPCMFormatFlagIsBigEndian"] = @2U;
	context[@"kLinearPCMFormatFlagIsSignedInteger"] = @4U;
	context[@"kLinearPCMFormatFlagIsPacked"] = @8U;
	context[@"kLinearPCMFormatFlagIsAlignedHigh"] = @16U;
	context[@"kLinearPCMFormatFlagIsNonInterleaved"] = @32U;
	context[@"kLinearPCMFormatFlagIsNonMixable"] = @64U;
	context[@"kLinearPCMFormatFlagsSampleFractionShift"] = @7U;
	context[@"kLinearPCMFormatFlagsSampleFractionMask"] = @8064U;
	context[@"kLinearPCMFormatFlagsAreAllClear"] = @-2147483648U;
	context[@"kAppleLosslessFormatFlag_16BitSourceData"] = @1U;
	context[@"kAppleLosslessFormatFlag_20BitSourceData"] = @2U;
	context[@"kAppleLosslessFormatFlag_24BitSourceData"] = @3U;
	context[@"kAppleLosslessFormatFlag_32BitSourceData"] = @4U;

	context[@"kAudioFormatFlagsNativeEndian"] = @0U;
	context[@"kAudioFormatFlagsCanonical"] = @12U;
	context[@"kAudioFormatFlagsAudioUnitCanonical"] = @3116U;
	context[@"kAudioFormatFlagsNativeFloatPacked"] = @9U;

	context[@"kSMPTETimeType24"] = @0U;
	context[@"kSMPTETimeType25"] = @1U;
	context[@"kSMPTETimeType30Drop"] = @2U;
	context[@"kSMPTETimeType30"] = @3U;
	context[@"kSMPTETimeType2997"] = @4U;
	context[@"kSMPTETimeType2997Drop"] = @5U;
	context[@"kSMPTETimeType60"] = @6U;
	context[@"kSMPTETimeType5994"] = @7U;
	context[@"kSMPTETimeType60Drop"] = @8U;
	context[@"kSMPTETimeType5994Drop"] = @9U;
	context[@"kSMPTETimeType50"] = @10U;
	context[@"kSMPTETimeType2398"] = @11U;

	context[@"kSMPTETimeUnknown"] = @0U;
	context[@"kSMPTETimeValid"] = @1U;
	context[@"kSMPTETimeRunning"] = @2U;

	context[@"kAudioTimeStampNothingValid"] = @0U;
	context[@"kAudioTimeStampSampleTimeValid"] = @1U;
	context[@"kAudioTimeStampHostTimeValid"] = @2U;
	context[@"kAudioTimeStampRateScalarValid"] = @4U;
	context[@"kAudioTimeStampWordClockTimeValid"] = @8U;
	context[@"kAudioTimeStampSMPTETimeValid"] = @16U;
	context[@"kAudioTimeStampSampleHostTimeValid"] = @3U;

	context[@"kAudioChannelLabel_Unknown"] = @-1U;
	context[@"kAudioChannelLabel_Unused"] = @0U;
	context[@"kAudioChannelLabel_UseCoordinates"] = @100U;
	context[@"kAudioChannelLabel_Left"] = @1U;
	context[@"kAudioChannelLabel_Right"] = @2U;
	context[@"kAudioChannelLabel_Center"] = @3U;
	context[@"kAudioChannelLabel_LFEScreen"] = @4U;
	context[@"kAudioChannelLabel_LeftSurround"] = @5U;
	context[@"kAudioChannelLabel_RightSurround"] = @6U;
	context[@"kAudioChannelLabel_LeftCenter"] = @7U;
	context[@"kAudioChannelLabel_RightCenter"] = @8U;
	context[@"kAudioChannelLabel_CenterSurround"] = @9U;
	context[@"kAudioChannelLabel_LeftSurroundDirect"] = @10U;
	context[@"kAudioChannelLabel_RightSurroundDirect"] = @11U;
	context[@"kAudioChannelLabel_TopCenterSurround"] = @12U;
	context[@"kAudioChannelLabel_VerticalHeightLeft"] = @13U;
	context[@"kAudioChannelLabel_VerticalHeightCenter"] = @14U;
	context[@"kAudioChannelLabel_VerticalHeightRight"] = @15U;
	context[@"kAudioChannelLabel_TopBackLeft"] = @16U;
	context[@"kAudioChannelLabel_TopBackCenter"] = @17U;
	context[@"kAudioChannelLabel_TopBackRight"] = @18U;
	context[@"kAudioChannelLabel_RearSurroundLeft"] = @33U;
	context[@"kAudioChannelLabel_RearSurroundRight"] = @34U;
	context[@"kAudioChannelLabel_LeftWide"] = @35U;
	context[@"kAudioChannelLabel_RightWide"] = @36U;
	context[@"kAudioChannelLabel_LFE2"] = @37U;
	context[@"kAudioChannelLabel_LeftTotal"] = @38U;
	context[@"kAudioChannelLabel_RightTotal"] = @39U;
	context[@"kAudioChannelLabel_HearingImpaired"] = @40U;
	context[@"kAudioChannelLabel_Narration"] = @41U;
	context[@"kAudioChannelLabel_Mono"] = @42U;
	context[@"kAudioChannelLabel_DialogCentricMix"] = @43U;
	context[@"kAudioChannelLabel_CenterSurroundDirect"] = @44U;
	context[@"kAudioChannelLabel_Haptic"] = @45U;
	context[@"kAudioChannelLabel_Ambisonic_W"] = @200U;
	context[@"kAudioChannelLabel_Ambisonic_X"] = @201U;
	context[@"kAudioChannelLabel_Ambisonic_Y"] = @202U;
	context[@"kAudioChannelLabel_Ambisonic_Z"] = @203U;
	context[@"kAudioChannelLabel_MS_Mid"] = @204U;
	context[@"kAudioChannelLabel_MS_Side"] = @205U;
	context[@"kAudioChannelLabel_XY_X"] = @206U;
	context[@"kAudioChannelLabel_XY_Y"] = @207U;
	context[@"kAudioChannelLabel_HeadphonesLeft"] = @301U;
	context[@"kAudioChannelLabel_HeadphonesRight"] = @302U;
	context[@"kAudioChannelLabel_ClickTrack"] = @304U;
	context[@"kAudioChannelLabel_ForeignLanguage"] = @305U;
	context[@"kAudioChannelLabel_Discrete"] = @400U;
	context[@"kAudioChannelLabel_Discrete_0"] = @65536U;
	context[@"kAudioChannelLabel_Discrete_1"] = @65537U;
	context[@"kAudioChannelLabel_Discrete_2"] = @65538U;
	context[@"kAudioChannelLabel_Discrete_3"] = @65539U;
	context[@"kAudioChannelLabel_Discrete_4"] = @65540U;
	context[@"kAudioChannelLabel_Discrete_5"] = @65541U;
	context[@"kAudioChannelLabel_Discrete_6"] = @65542U;
	context[@"kAudioChannelLabel_Discrete_7"] = @65543U;
	context[@"kAudioChannelLabel_Discrete_8"] = @65544U;
	context[@"kAudioChannelLabel_Discrete_9"] = @65545U;
	context[@"kAudioChannelLabel_Discrete_10"] = @65546U;
	context[@"kAudioChannelLabel_Discrete_11"] = @65547U;
	context[@"kAudioChannelLabel_Discrete_12"] = @65548U;
	context[@"kAudioChannelLabel_Discrete_13"] = @65549U;
	context[@"kAudioChannelLabel_Discrete_14"] = @65550U;
	context[@"kAudioChannelLabel_Discrete_15"] = @65551U;
	context[@"kAudioChannelLabel_Discrete_65535"] = @131071U;
	context[@"kAudioChannelLabel_HOA_ACN"] = @500U;
	context[@"kAudioChannelLabel_HOA_ACN_0"] = @131072U;
	context[@"kAudioChannelLabel_HOA_ACN_1"] = @131073U;
	context[@"kAudioChannelLabel_HOA_ACN_2"] = @131074U;
	context[@"kAudioChannelLabel_HOA_ACN_3"] = @131075U;
	context[@"kAudioChannelLabel_HOA_ACN_4"] = @131076U;
	context[@"kAudioChannelLabel_HOA_ACN_5"] = @131077U;
	context[@"kAudioChannelLabel_HOA_ACN_6"] = @131078U;
	context[@"kAudioChannelLabel_HOA_ACN_7"] = @131079U;
	context[@"kAudioChannelLabel_HOA_ACN_8"] = @131080U;
	context[@"kAudioChannelLabel_HOA_ACN_9"] = @131081U;
	context[@"kAudioChannelLabel_HOA_ACN_10"] = @131082U;
	context[@"kAudioChannelLabel_HOA_ACN_11"] = @131083U;
	context[@"kAudioChannelLabel_HOA_ACN_12"] = @131084U;
	context[@"kAudioChannelLabel_HOA_ACN_13"] = @131085U;
	context[@"kAudioChannelLabel_HOA_ACN_14"] = @131086U;
	context[@"kAudioChannelLabel_HOA_ACN_15"] = @131087U;
	context[@"kAudioChannelLabel_HOA_ACN_65024"] = @196096U;

	context[@"kAudioChannelBit_Left"] = @1U;
	context[@"kAudioChannelBit_Right"] = @2U;
	context[@"kAudioChannelBit_Center"] = @4U;
	context[@"kAudioChannelBit_LFEScreen"] = @8U;
	context[@"kAudioChannelBit_LeftSurround"] = @16U;
	context[@"kAudioChannelBit_RightSurround"] = @32U;
	context[@"kAudioChannelBit_LeftCenter"] = @64U;
	context[@"kAudioChannelBit_RightCenter"] = @128U;
	context[@"kAudioChannelBit_CenterSurround"] = @256U;
	context[@"kAudioChannelBit_LeftSurroundDirect"] = @512U;
	context[@"kAudioChannelBit_RightSurroundDirect"] = @1024U;
	context[@"kAudioChannelBit_TopCenterSurround"] = @2048U;
	context[@"kAudioChannelBit_VerticalHeightLeft"] = @4096U;
	context[@"kAudioChannelBit_VerticalHeightCenter"] = @8192U;
	context[@"kAudioChannelBit_VerticalHeightRight"] = @16384U;
	context[@"kAudioChannelBit_TopBackLeft"] = @32768U;
	context[@"kAudioChannelBit_TopBackCenter"] = @65536U;
	context[@"kAudioChannelBit_TopBackRight"] = @131072U;

	context[@"kAudioChannelFlags_AllOff"] = @0U;
	context[@"kAudioChannelFlags_RectangularCoordinates"] = @1U;
	context[@"kAudioChannelFlags_SphericalCoordinates"] = @2U;
	context[@"kAudioChannelFlags_Meters"] = @4U;

	context[@"kAudioChannelCoordinates_LeftRight"] = @0U;
	context[@"kAudioChannelCoordinates_BackFront"] = @1U;
	context[@"kAudioChannelCoordinates_DownUp"] = @2U;
	context[@"kAudioChannelCoordinates_Azimuth"] = @0U;
	context[@"kAudioChannelCoordinates_Elevation"] = @1U;
	context[@"kAudioChannelCoordinates_Distance"] = @2U;

	context[@"kAudioChannelLayoutTag_UseChannelDescriptions"] = @0U;
	context[@"kAudioChannelLayoutTag_UseChannelBitmap"] = @65536U;
	context[@"kAudioChannelLayoutTag_Mono"] = @6553601U;
	context[@"kAudioChannelLayoutTag_Stereo"] = @6619138U;
	context[@"kAudioChannelLayoutTag_StereoHeadphones"] = @6684674U;
	context[@"kAudioChannelLayoutTag_MatrixStereo"] = @6750210U;
	context[@"kAudioChannelLayoutTag_MidSide"] = @6815746U;
	context[@"kAudioChannelLayoutTag_XY"] = @6881282U;
	context[@"kAudioChannelLayoutTag_Binaural"] = @6946818U;
	context[@"kAudioChannelLayoutTag_Ambisonic_B_Format"] = @7012356U;
	context[@"kAudioChannelLayoutTag_Quadraphonic"] = @7077892U;
	context[@"kAudioChannelLayoutTag_Pentagonal"] = @7143429U;
	context[@"kAudioChannelLayoutTag_Hexagonal"] = @7208966U;
	context[@"kAudioChannelLayoutTag_Octagonal"] = @7274504U;
	context[@"kAudioChannelLayoutTag_Cube"] = @7340040U;
	context[@"kAudioChannelLayoutTag_MPEG_1_0"] = @6553601U;
	context[@"kAudioChannelLayoutTag_MPEG_2_0"] = @6619138U;
	context[@"kAudioChannelLayoutTag_MPEG_3_0_A"] = @7405571U;
	context[@"kAudioChannelLayoutTag_MPEG_3_0_B"] = @7471107U;
	context[@"kAudioChannelLayoutTag_MPEG_4_0_A"] = @7536644U;
	context[@"kAudioChannelLayoutTag_MPEG_4_0_B"] = @7602180U;
	context[@"kAudioChannelLayoutTag_MPEG_5_0_A"] = @7667717U;
	context[@"kAudioChannelLayoutTag_MPEG_5_0_B"] = @7733253U;
	context[@"kAudioChannelLayoutTag_MPEG_5_0_C"] = @7798789U;
	context[@"kAudioChannelLayoutTag_MPEG_5_0_D"] = @7864325U;
	context[@"kAudioChannelLayoutTag_MPEG_5_1_A"] = @7929862U;
	context[@"kAudioChannelLayoutTag_MPEG_5_1_B"] = @7995398U;
	context[@"kAudioChannelLayoutTag_MPEG_5_1_C"] = @8060934U;
	context[@"kAudioChannelLayoutTag_MPEG_5_1_D"] = @8126470U;
	context[@"kAudioChannelLayoutTag_MPEG_6_1_A"] = @8192007U;
	context[@"kAudioChannelLayoutTag_MPEG_7_1_A"] = @8257544U;
	context[@"kAudioChannelLayoutTag_MPEG_7_1_B"] = @8323080U;
	context[@"kAudioChannelLayoutTag_MPEG_7_1_C"] = @8388616U;
	context[@"kAudioChannelLayoutTag_Emagic_Default_7_1"] = @8454152U;
	context[@"kAudioChannelLayoutTag_SMPTE_DTV"] = @8519688U;
	context[@"kAudioChannelLayoutTag_ITU_1_0"] = @6553601U;
	context[@"kAudioChannelLayoutTag_ITU_2_0"] = @6619138U;
	context[@"kAudioChannelLayoutTag_ITU_2_1"] = @8585219U;
	context[@"kAudioChannelLayoutTag_ITU_2_2"] = @8650756U;
	context[@"kAudioChannelLayoutTag_ITU_3_0"] = @7405571U;
	context[@"kAudioChannelLayoutTag_ITU_3_1"] = @7536644U;
	context[@"kAudioChannelLayoutTag_ITU_3_2"] = @7667717U;
	context[@"kAudioChannelLayoutTag_ITU_3_2_1"] = @7929862U;
	context[@"kAudioChannelLayoutTag_ITU_3_4_1"] = @8388616U;
	context[@"kAudioChannelLayoutTag_DVD_0"] = @6553601U;
	context[@"kAudioChannelLayoutTag_DVD_1"] = @6619138U;
	context[@"kAudioChannelLayoutTag_DVD_2"] = @8585219U;
	context[@"kAudioChannelLayoutTag_DVD_3"] = @8650756U;
	context[@"kAudioChannelLayoutTag_DVD_4"] = @8716291U;
	context[@"kAudioChannelLayoutTag_DVD_5"] = @8781828U;
	context[@"kAudioChannelLayoutTag_DVD_6"] = @8847365U;
	context[@"kAudioChannelLayoutTag_DVD_7"] = @7405571U;
	context[@"kAudioChannelLayoutTag_DVD_8"] = @7536644U;
	context[@"kAudioChannelLayoutTag_DVD_9"] = @7667717U;
	context[@"kAudioChannelLayoutTag_DVD_10"] = @8912900U;
	context[@"kAudioChannelLayoutTag_DVD_11"] = @8978437U;
	context[@"kAudioChannelLayoutTag_DVD_12"] = @7929862U;
	context[@"kAudioChannelLayoutTag_DVD_13"] = @7536644U;
	context[@"kAudioChannelLayoutTag_DVD_14"] = @7667717U;
	context[@"kAudioChannelLayoutTag_DVD_15"] = @8912900U;
	context[@"kAudioChannelLayoutTag_DVD_16"] = @8978437U;
	context[@"kAudioChannelLayoutTag_DVD_17"] = @7929862U;
	context[@"kAudioChannelLayoutTag_DVD_18"] = @9043973U;
	context[@"kAudioChannelLayoutTag_DVD_19"] = @7733253U;
	context[@"kAudioChannelLayoutTag_DVD_20"] = @7995398U;
	context[@"kAudioChannelLayoutTag_AudioUnit_4"] = @7077892U;
	context[@"kAudioChannelLayoutTag_AudioUnit_5"] = @7143429U;
	context[@"kAudioChannelLayoutTag_AudioUnit_6"] = @7208966U;
	context[@"kAudioChannelLayoutTag_AudioUnit_8"] = @7274504U;
	context[@"kAudioChannelLayoutTag_AudioUnit_5_0"] = @7733253U;
	context[@"kAudioChannelLayoutTag_AudioUnit_6_0"] = @9109510U;
	context[@"kAudioChannelLayoutTag_AudioUnit_7_0"] = @9175047U;
	context[@"kAudioChannelLayoutTag_AudioUnit_7_0_Front"] = @9699335U;
	context[@"kAudioChannelLayoutTag_AudioUnit_5_1"] = @7929862U;
	context[@"kAudioChannelLayoutTag_AudioUnit_6_1"] = @8192007U;
	context[@"kAudioChannelLayoutTag_AudioUnit_7_1"] = @8388616U;
	context[@"kAudioChannelLayoutTag_AudioUnit_7_1_Front"] = @8257544U;
	context[@"kAudioChannelLayoutTag_AAC_3_0"] = @7471107U;
	context[@"kAudioChannelLayoutTag_AAC_Quadraphonic"] = @7077892U;
	context[@"kAudioChannelLayoutTag_AAC_4_0"] = @7602180U;
	context[@"kAudioChannelLayoutTag_AAC_5_0"] = @7864325U;
	context[@"kAudioChannelLayoutTag_AAC_5_1"] = @8126470U;
	context[@"kAudioChannelLayoutTag_AAC_6_0"] = @9240582U;
	context[@"kAudioChannelLayoutTag_AAC_6_1"] = @9306119U;
	context[@"kAudioChannelLayoutTag_AAC_7_0"] = @9371655U;
	context[@"kAudioChannelLayoutTag_AAC_7_1"] = @8323080U;
	context[@"kAudioChannelLayoutTag_AAC_7_1_B"] = @11993096U;
	context[@"kAudioChannelLayoutTag_AAC_7_1_C"] = @12058632U;
	context[@"kAudioChannelLayoutTag_AAC_Octagonal"] = @9437192U;
	context[@"kAudioChannelLayoutTag_TMH_10_2_std"] = @9502736U;
	context[@"kAudioChannelLayoutTag_TMH_10_2_full"] = @9568277U;
	context[@"kAudioChannelLayoutTag_AC3_1_0_1"] = @9764866U;
	context[@"kAudioChannelLayoutTag_AC3_3_0"] = @9830403U;
	context[@"kAudioChannelLayoutTag_AC3_3_1"] = @9895940U;
	context[@"kAudioChannelLayoutTag_AC3_3_0_1"] = @9961476U;
	context[@"kAudioChannelLayoutTag_AC3_2_1_1"] = @10027012U;
	context[@"kAudioChannelLayoutTag_AC3_3_1_1"] = @10092549U;
	context[@"kAudioChannelLayoutTag_EAC_6_0_A"] = @10158086U;
	context[@"kAudioChannelLayoutTag_EAC_7_0_A"] = @10223623U;
	context[@"kAudioChannelLayoutTag_EAC3_6_1_A"] = @10289159U;
	context[@"kAudioChannelLayoutTag_EAC3_6_1_B"] = @10354695U;
	context[@"kAudioChannelLayoutTag_EAC3_6_1_C"] = @10420231U;
	context[@"kAudioChannelLayoutTag_EAC3_7_1_A"] = @10485768U;
	context[@"kAudioChannelLayoutTag_EAC3_7_1_B"] = @10551304U;
	context[@"kAudioChannelLayoutTag_EAC3_7_1_C"] = @10616840U;
	context[@"kAudioChannelLayoutTag_EAC3_7_1_D"] = @10682376U;
	context[@"kAudioChannelLayoutTag_EAC3_7_1_E"] = @10747912U;
	context[@"kAudioChannelLayoutTag_EAC3_7_1_F"] = @10813448U;
	context[@"kAudioChannelLayoutTag_EAC3_7_1_G"] = @10878984U;
	context[@"kAudioChannelLayoutTag_EAC3_7_1_H"] = @10944520U;
	context[@"kAudioChannelLayoutTag_DTS_3_1"] = @11010052U;
	context[@"kAudioChannelLayoutTag_DTS_4_1"] = @11075589U;
	context[@"kAudioChannelLayoutTag_DTS_6_0_A"] = @11141126U;
	context[@"kAudioChannelLayoutTag_DTS_6_0_B"] = @11206662U;
	context[@"kAudioChannelLayoutTag_DTS_6_0_C"] = @11272198U;
	context[@"kAudioChannelLayoutTag_DTS_6_1_A"] = @11337735U;
	context[@"kAudioChannelLayoutTag_DTS_6_1_B"] = @11403271U;
	context[@"kAudioChannelLayoutTag_DTS_6_1_C"] = @11468807U;
	context[@"kAudioChannelLayoutTag_DTS_7_0"] = @11534343U;
	context[@"kAudioChannelLayoutTag_DTS_7_1"] = @11599880U;
	context[@"kAudioChannelLayoutTag_DTS_8_0_A"] = @11665416U;
	context[@"kAudioChannelLayoutTag_DTS_8_0_B"] = @11730952U;
	context[@"kAudioChannelLayoutTag_DTS_8_1_A"] = @11796489U;
	context[@"kAudioChannelLayoutTag_DTS_8_1_B"] = @11862025U;
	context[@"kAudioChannelLayoutTag_DTS_6_1_D"] = @11927559U;
	context[@"kAudioChannelLayoutTag_HOA_ACN_SN3D"] = @12451840U;
	context[@"kAudioChannelLayoutTag_HOA_ACN_N3D"] = @12517376U;
	context[@"kAudioChannelLayoutTag_DiscreteInOrder"] = @9633792U;
	context[@"kAudioChannelLayoutTag_Unknown"] = @-65536U;

	context[@"kMPEG4Object_AAC_Main"] = @1L;
	context[@"kMPEG4Object_AAC_LC"] = @2L;
	context[@"kMPEG4Object_AAC_SSR"] = @3L;
	context[@"kMPEG4Object_AAC_LTP"] = @4L;
	context[@"kMPEG4Object_AAC_SBR"] = @5L;
	context[@"kMPEG4Object_AAC_Scalable"] = @6L;
	context[@"kMPEG4Object_TwinVQ"] = @7L;
	context[@"kMPEG4Object_CELP"] = @8L;
	context[@"kMPEG4Object_HVXC"] = @9L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kAudioStreamAnyRate;
	if (p != NULL) context[@"kAudioStreamAnyRate"] = @(kAudioStreamAnyRate);
}
void load_CoreAudio_CoreAudioTypes_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
