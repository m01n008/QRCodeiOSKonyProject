#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
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
		(AudioFormatID) [self[@"mFormatID"] toDouble],
		(AudioFormatFlags) [self[@"mFormatFlags"] toDouble],
		(UInt32) [self[@"mBytesPerPacket"] toDouble],
		(UInt32) [self[@"mFramesPerPacket"] toDouble],
		(UInt32) [self[@"mBytesPerFrame"] toDouble],
		(UInt32) [self[@"mChannelsPerFrame"] toDouble],
		(UInt32) [self[@"mBitsPerChannel"] toDouble],
		(UInt32) [self[@"mReserved"] toDouble],
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
		(UInt32) [self[@"mVariableFramesInPacket"] toDouble],
		(UInt32) [self[@"mDataByteSize"] toDouble],
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
		(OSType) [self[@"mType"] toDouble],
		(OSType) [self[@"mSubType"] toDouble],
		(OSType) [self[@"mManufacturer"] toDouble],
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
		(UInt32) [self[@"mCounter"] toDouble],
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
		(UInt32) [self[@"mReserved"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAudio_UnimplementedError"] = @-4L;
	context[@"kAudio_FileNotFoundError"] = @-43L;
	context[@"kAudio_FilePermissionError"] = @-54L;
	context[@"kAudio_TooManyFilesOpenError"] = @-42L;
	context[@"kAudio_BadFilePathError"] = @561017960L;
	context[@"kAudio_ParamError"] = @-50L;
	context[@"kAudio_MemFullError"] = @-108L;

	context[@"kAudioFormatLinearPCM"] = @1819304813UL;
	context[@"kAudioFormatAC3"] = @1633889587UL;
	context[@"kAudioFormat60958AC3"] = @1667326771UL;
	context[@"kAudioFormatAppleIMA4"] = @1768775988UL;
	context[@"kAudioFormatMPEG4AAC"] = @1633772320UL;
	context[@"kAudioFormatMPEG4CELP"] = @1667591280UL;
	context[@"kAudioFormatMPEG4HVXC"] = @1752594531UL;
	context[@"kAudioFormatMPEG4TwinVQ"] = @1953986161UL;
	context[@"kAudioFormatMACE3"] = @1296122675UL;
	context[@"kAudioFormatMACE6"] = @1296122678UL;
	context[@"kAudioFormatULaw"] = @1970037111UL;
	context[@"kAudioFormatALaw"] = @1634492791UL;
	context[@"kAudioFormatQDesign"] = @1363430723UL;
	context[@"kAudioFormatQDesign2"] = @1363430706UL;
	context[@"kAudioFormatQUALCOMM"] = @1365470320UL;
	context[@"kAudioFormatMPEGLayer1"] = @778924081UL;
	context[@"kAudioFormatMPEGLayer2"] = @778924082UL;
	context[@"kAudioFormatMPEGLayer3"] = @778924083UL;
	context[@"kAudioFormatTimeCode"] = @1953066341UL;
	context[@"kAudioFormatMIDIStream"] = @1835623529UL;
	context[@"kAudioFormatParameterValueStream"] = @1634760307UL;
	context[@"kAudioFormatAppleLossless"] = @1634492771UL;
	context[@"kAudioFormatMPEG4AAC_HE"] = @1633772392UL;
	context[@"kAudioFormatMPEG4AAC_LD"] = @1633772396UL;
	context[@"kAudioFormatMPEG4AAC_ELD"] = @1633772389UL;
	context[@"kAudioFormatMPEG4AAC_ELD_SBR"] = @1633772390UL;
	context[@"kAudioFormatMPEG4AAC_ELD_V2"] = @1633772391UL;
	context[@"kAudioFormatMPEG4AAC_HE_V2"] = @1633772400UL;
	context[@"kAudioFormatMPEG4AAC_Spatial"] = @1633772403UL;
	context[@"kAudioFormatAMR"] = @1935764850UL;
	context[@"kAudioFormatAMR_WB"] = @1935767394UL;
	context[@"kAudioFormatAudible"] = @1096107074UL;
	context[@"kAudioFormatiLBC"] = @1768710755UL;
	context[@"kAudioFormatDVIIntelIMA"] = @1836253201UL;
	context[@"kAudioFormatMicrosoftGSM"] = @1836253233UL;
	context[@"kAudioFormatAES3"] = @1634038579UL;
	context[@"kAudioFormatEnhancedAC3"] = @1700998451UL;

	context[@"kAudioFormatFlagIsFloat"] = @1UL;
	context[@"kAudioFormatFlagIsBigEndian"] = @2UL;
	context[@"kAudioFormatFlagIsSignedInteger"] = @4UL;
	context[@"kAudioFormatFlagIsPacked"] = @8UL;
	context[@"kAudioFormatFlagIsAlignedHigh"] = @16UL;
	context[@"kAudioFormatFlagIsNonInterleaved"] = @32UL;
	context[@"kAudioFormatFlagIsNonMixable"] = @64UL;
	context[@"kAudioFormatFlagsAreAllClear"] = @-2147483648UL;
	context[@"kLinearPCMFormatFlagIsFloat"] = @1UL;
	context[@"kLinearPCMFormatFlagIsBigEndian"] = @2UL;
	context[@"kLinearPCMFormatFlagIsSignedInteger"] = @4UL;
	context[@"kLinearPCMFormatFlagIsPacked"] = @8UL;
	context[@"kLinearPCMFormatFlagIsAlignedHigh"] = @16UL;
	context[@"kLinearPCMFormatFlagIsNonInterleaved"] = @32UL;
	context[@"kLinearPCMFormatFlagIsNonMixable"] = @64UL;
	context[@"kLinearPCMFormatFlagsSampleFractionShift"] = @7UL;
	context[@"kLinearPCMFormatFlagsSampleFractionMask"] = @8064UL;
	context[@"kLinearPCMFormatFlagsAreAllClear"] = @-2147483648UL;
	context[@"kAppleLosslessFormatFlag_16BitSourceData"] = @1UL;
	context[@"kAppleLosslessFormatFlag_20BitSourceData"] = @2UL;
	context[@"kAppleLosslessFormatFlag_24BitSourceData"] = @3UL;
	context[@"kAppleLosslessFormatFlag_32BitSourceData"] = @4UL;

	context[@"kAudioFormatFlagsNativeEndian"] = @0UL;
	context[@"kAudioFormatFlagsCanonical"] = @12UL;
	context[@"kAudioFormatFlagsAudioUnitCanonical"] = @3116UL;
	context[@"kAudioFormatFlagsNativeFloatPacked"] = @9UL;

	context[@"kSMPTETimeType24"] = @0UL;
	context[@"kSMPTETimeType25"] = @1UL;
	context[@"kSMPTETimeType30Drop"] = @2UL;
	context[@"kSMPTETimeType30"] = @3UL;
	context[@"kSMPTETimeType2997"] = @4UL;
	context[@"kSMPTETimeType2997Drop"] = @5UL;
	context[@"kSMPTETimeType60"] = @6UL;
	context[@"kSMPTETimeType5994"] = @7UL;
	context[@"kSMPTETimeType60Drop"] = @8UL;
	context[@"kSMPTETimeType5994Drop"] = @9UL;
	context[@"kSMPTETimeType50"] = @10UL;
	context[@"kSMPTETimeType2398"] = @11UL;

	context[@"kSMPTETimeUnknown"] = @0UL;
	context[@"kSMPTETimeValid"] = @1UL;
	context[@"kSMPTETimeRunning"] = @2UL;

	context[@"kAudioTimeStampNothingValid"] = @0UL;
	context[@"kAudioTimeStampSampleTimeValid"] = @1UL;
	context[@"kAudioTimeStampHostTimeValid"] = @2UL;
	context[@"kAudioTimeStampRateScalarValid"] = @4UL;
	context[@"kAudioTimeStampWordClockTimeValid"] = @8UL;
	context[@"kAudioTimeStampSMPTETimeValid"] = @16UL;
	context[@"kAudioTimeStampSampleHostTimeValid"] = @3UL;

	context[@"kAudioChannelLabel_Unknown"] = @-1UL;
	context[@"kAudioChannelLabel_Unused"] = @0UL;
	context[@"kAudioChannelLabel_UseCoordinates"] = @100UL;
	context[@"kAudioChannelLabel_Left"] = @1UL;
	context[@"kAudioChannelLabel_Right"] = @2UL;
	context[@"kAudioChannelLabel_Center"] = @3UL;
	context[@"kAudioChannelLabel_LFEScreen"] = @4UL;
	context[@"kAudioChannelLabel_LeftSurround"] = @5UL;
	context[@"kAudioChannelLabel_RightSurround"] = @6UL;
	context[@"kAudioChannelLabel_LeftCenter"] = @7UL;
	context[@"kAudioChannelLabel_RightCenter"] = @8UL;
	context[@"kAudioChannelLabel_CenterSurround"] = @9UL;
	context[@"kAudioChannelLabel_LeftSurroundDirect"] = @10UL;
	context[@"kAudioChannelLabel_RightSurroundDirect"] = @11UL;
	context[@"kAudioChannelLabel_TopCenterSurround"] = @12UL;
	context[@"kAudioChannelLabel_VerticalHeightLeft"] = @13UL;
	context[@"kAudioChannelLabel_VerticalHeightCenter"] = @14UL;
	context[@"kAudioChannelLabel_VerticalHeightRight"] = @15UL;
	context[@"kAudioChannelLabel_TopBackLeft"] = @16UL;
	context[@"kAudioChannelLabel_TopBackCenter"] = @17UL;
	context[@"kAudioChannelLabel_TopBackRight"] = @18UL;
	context[@"kAudioChannelLabel_RearSurroundLeft"] = @33UL;
	context[@"kAudioChannelLabel_RearSurroundRight"] = @34UL;
	context[@"kAudioChannelLabel_LeftWide"] = @35UL;
	context[@"kAudioChannelLabel_RightWide"] = @36UL;
	context[@"kAudioChannelLabel_LFE2"] = @37UL;
	context[@"kAudioChannelLabel_LeftTotal"] = @38UL;
	context[@"kAudioChannelLabel_RightTotal"] = @39UL;
	context[@"kAudioChannelLabel_HearingImpaired"] = @40UL;
	context[@"kAudioChannelLabel_Narration"] = @41UL;
	context[@"kAudioChannelLabel_Mono"] = @42UL;
	context[@"kAudioChannelLabel_DialogCentricMix"] = @43UL;
	context[@"kAudioChannelLabel_CenterSurroundDirect"] = @44UL;
	context[@"kAudioChannelLabel_Haptic"] = @45UL;
	context[@"kAudioChannelLabel_Ambisonic_W"] = @200UL;
	context[@"kAudioChannelLabel_Ambisonic_X"] = @201UL;
	context[@"kAudioChannelLabel_Ambisonic_Y"] = @202UL;
	context[@"kAudioChannelLabel_Ambisonic_Z"] = @203UL;
	context[@"kAudioChannelLabel_MS_Mid"] = @204UL;
	context[@"kAudioChannelLabel_MS_Side"] = @205UL;
	context[@"kAudioChannelLabel_XY_X"] = @206UL;
	context[@"kAudioChannelLabel_XY_Y"] = @207UL;
	context[@"kAudioChannelLabel_HeadphonesLeft"] = @301UL;
	context[@"kAudioChannelLabel_HeadphonesRight"] = @302UL;
	context[@"kAudioChannelLabel_ClickTrack"] = @304UL;
	context[@"kAudioChannelLabel_ForeignLanguage"] = @305UL;
	context[@"kAudioChannelLabel_Discrete"] = @400UL;
	context[@"kAudioChannelLabel_Discrete_0"] = @65536UL;
	context[@"kAudioChannelLabel_Discrete_1"] = @65537UL;
	context[@"kAudioChannelLabel_Discrete_2"] = @65538UL;
	context[@"kAudioChannelLabel_Discrete_3"] = @65539UL;
	context[@"kAudioChannelLabel_Discrete_4"] = @65540UL;
	context[@"kAudioChannelLabel_Discrete_5"] = @65541UL;
	context[@"kAudioChannelLabel_Discrete_6"] = @65542UL;
	context[@"kAudioChannelLabel_Discrete_7"] = @65543UL;
	context[@"kAudioChannelLabel_Discrete_8"] = @65544UL;
	context[@"kAudioChannelLabel_Discrete_9"] = @65545UL;
	context[@"kAudioChannelLabel_Discrete_10"] = @65546UL;
	context[@"kAudioChannelLabel_Discrete_11"] = @65547UL;
	context[@"kAudioChannelLabel_Discrete_12"] = @65548UL;
	context[@"kAudioChannelLabel_Discrete_13"] = @65549UL;
	context[@"kAudioChannelLabel_Discrete_14"] = @65550UL;
	context[@"kAudioChannelLabel_Discrete_15"] = @65551UL;
	context[@"kAudioChannelLabel_Discrete_65535"] = @131071UL;

	context[@"kAudioChannelBit_Left"] = @1UL;
	context[@"kAudioChannelBit_Right"] = @2UL;
	context[@"kAudioChannelBit_Center"] = @4UL;
	context[@"kAudioChannelBit_LFEScreen"] = @8UL;
	context[@"kAudioChannelBit_LeftSurround"] = @16UL;
	context[@"kAudioChannelBit_RightSurround"] = @32UL;
	context[@"kAudioChannelBit_LeftCenter"] = @64UL;
	context[@"kAudioChannelBit_RightCenter"] = @128UL;
	context[@"kAudioChannelBit_CenterSurround"] = @256UL;
	context[@"kAudioChannelBit_LeftSurroundDirect"] = @512UL;
	context[@"kAudioChannelBit_RightSurroundDirect"] = @1024UL;
	context[@"kAudioChannelBit_TopCenterSurround"] = @2048UL;
	context[@"kAudioChannelBit_VerticalHeightLeft"] = @4096UL;
	context[@"kAudioChannelBit_VerticalHeightCenter"] = @8192UL;
	context[@"kAudioChannelBit_VerticalHeightRight"] = @16384UL;
	context[@"kAudioChannelBit_TopBackLeft"] = @32768UL;
	context[@"kAudioChannelBit_TopBackCenter"] = @65536UL;
	context[@"kAudioChannelBit_TopBackRight"] = @131072UL;

	context[@"kAudioChannelFlags_AllOff"] = @0UL;
	context[@"kAudioChannelFlags_RectangularCoordinates"] = @1UL;
	context[@"kAudioChannelFlags_SphericalCoordinates"] = @2UL;
	context[@"kAudioChannelFlags_Meters"] = @4UL;

	context[@"kAudioChannelCoordinates_LeftRight"] = @0UL;
	context[@"kAudioChannelCoordinates_BackFront"] = @1UL;
	context[@"kAudioChannelCoordinates_DownUp"] = @2UL;
	context[@"kAudioChannelCoordinates_Azimuth"] = @0UL;
	context[@"kAudioChannelCoordinates_Elevation"] = @1UL;
	context[@"kAudioChannelCoordinates_Distance"] = @2UL;

	context[@"kAudioChannelLayoutTag_UseChannelDescriptions"] = @0UL;
	context[@"kAudioChannelLayoutTag_UseChannelBitmap"] = @65536UL;
	context[@"kAudioChannelLayoutTag_Mono"] = @6553601UL;
	context[@"kAudioChannelLayoutTag_Stereo"] = @6619138UL;
	context[@"kAudioChannelLayoutTag_StereoHeadphones"] = @6684674UL;
	context[@"kAudioChannelLayoutTag_MatrixStereo"] = @6750210UL;
	context[@"kAudioChannelLayoutTag_MidSide"] = @6815746UL;
	context[@"kAudioChannelLayoutTag_XY"] = @6881282UL;
	context[@"kAudioChannelLayoutTag_Binaural"] = @6946818UL;
	context[@"kAudioChannelLayoutTag_Ambisonic_B_Format"] = @7012356UL;
	context[@"kAudioChannelLayoutTag_Quadraphonic"] = @7077892UL;
	context[@"kAudioChannelLayoutTag_Pentagonal"] = @7143429UL;
	context[@"kAudioChannelLayoutTag_Hexagonal"] = @7208966UL;
	context[@"kAudioChannelLayoutTag_Octagonal"] = @7274504UL;
	context[@"kAudioChannelLayoutTag_Cube"] = @7340040UL;
	context[@"kAudioChannelLayoutTag_MPEG_1_0"] = @6553601UL;
	context[@"kAudioChannelLayoutTag_MPEG_2_0"] = @6619138UL;
	context[@"kAudioChannelLayoutTag_MPEG_3_0_A"] = @7405571UL;
	context[@"kAudioChannelLayoutTag_MPEG_3_0_B"] = @7471107UL;
	context[@"kAudioChannelLayoutTag_MPEG_4_0_A"] = @7536644UL;
	context[@"kAudioChannelLayoutTag_MPEG_4_0_B"] = @7602180UL;
	context[@"kAudioChannelLayoutTag_MPEG_5_0_A"] = @7667717UL;
	context[@"kAudioChannelLayoutTag_MPEG_5_0_B"] = @7733253UL;
	context[@"kAudioChannelLayoutTag_MPEG_5_0_C"] = @7798789UL;
	context[@"kAudioChannelLayoutTag_MPEG_5_0_D"] = @7864325UL;
	context[@"kAudioChannelLayoutTag_MPEG_5_1_A"] = @7929862UL;
	context[@"kAudioChannelLayoutTag_MPEG_5_1_B"] = @7995398UL;
	context[@"kAudioChannelLayoutTag_MPEG_5_1_C"] = @8060934UL;
	context[@"kAudioChannelLayoutTag_MPEG_5_1_D"] = @8126470UL;
	context[@"kAudioChannelLayoutTag_MPEG_6_1_A"] = @8192007UL;
	context[@"kAudioChannelLayoutTag_MPEG_7_1_A"] = @8257544UL;
	context[@"kAudioChannelLayoutTag_MPEG_7_1_B"] = @8323080UL;
	context[@"kAudioChannelLayoutTag_MPEG_7_1_C"] = @8388616UL;
	context[@"kAudioChannelLayoutTag_Emagic_Default_7_1"] = @8454152UL;
	context[@"kAudioChannelLayoutTag_SMPTE_DTV"] = @8519688UL;
	context[@"kAudioChannelLayoutTag_ITU_1_0"] = @6553601UL;
	context[@"kAudioChannelLayoutTag_ITU_2_0"] = @6619138UL;
	context[@"kAudioChannelLayoutTag_ITU_2_1"] = @8585219UL;
	context[@"kAudioChannelLayoutTag_ITU_2_2"] = @8650756UL;
	context[@"kAudioChannelLayoutTag_ITU_3_0"] = @7405571UL;
	context[@"kAudioChannelLayoutTag_ITU_3_1"] = @7536644UL;
	context[@"kAudioChannelLayoutTag_ITU_3_2"] = @7667717UL;
	context[@"kAudioChannelLayoutTag_ITU_3_2_1"] = @7929862UL;
	context[@"kAudioChannelLayoutTag_ITU_3_4_1"] = @8388616UL;
	context[@"kAudioChannelLayoutTag_DVD_0"] = @6553601UL;
	context[@"kAudioChannelLayoutTag_DVD_1"] = @6619138UL;
	context[@"kAudioChannelLayoutTag_DVD_2"] = @8585219UL;
	context[@"kAudioChannelLayoutTag_DVD_3"] = @8650756UL;
	context[@"kAudioChannelLayoutTag_DVD_4"] = @8716291UL;
	context[@"kAudioChannelLayoutTag_DVD_5"] = @8781828UL;
	context[@"kAudioChannelLayoutTag_DVD_6"] = @8847365UL;
	context[@"kAudioChannelLayoutTag_DVD_7"] = @7405571UL;
	context[@"kAudioChannelLayoutTag_DVD_8"] = @7536644UL;
	context[@"kAudioChannelLayoutTag_DVD_9"] = @7667717UL;
	context[@"kAudioChannelLayoutTag_DVD_10"] = @8912900UL;
	context[@"kAudioChannelLayoutTag_DVD_11"] = @8978437UL;
	context[@"kAudioChannelLayoutTag_DVD_12"] = @7929862UL;
	context[@"kAudioChannelLayoutTag_DVD_13"] = @7536644UL;
	context[@"kAudioChannelLayoutTag_DVD_14"] = @7667717UL;
	context[@"kAudioChannelLayoutTag_DVD_15"] = @8912900UL;
	context[@"kAudioChannelLayoutTag_DVD_16"] = @8978437UL;
	context[@"kAudioChannelLayoutTag_DVD_17"] = @7929862UL;
	context[@"kAudioChannelLayoutTag_DVD_18"] = @9043973UL;
	context[@"kAudioChannelLayoutTag_DVD_19"] = @7733253UL;
	context[@"kAudioChannelLayoutTag_DVD_20"] = @7995398UL;
	context[@"kAudioChannelLayoutTag_AudioUnit_4"] = @7077892UL;
	context[@"kAudioChannelLayoutTag_AudioUnit_5"] = @7143429UL;
	context[@"kAudioChannelLayoutTag_AudioUnit_6"] = @7208966UL;
	context[@"kAudioChannelLayoutTag_AudioUnit_8"] = @7274504UL;
	context[@"kAudioChannelLayoutTag_AudioUnit_5_0"] = @7733253UL;
	context[@"kAudioChannelLayoutTag_AudioUnit_6_0"] = @9109510UL;
	context[@"kAudioChannelLayoutTag_AudioUnit_7_0"] = @9175047UL;
	context[@"kAudioChannelLayoutTag_AudioUnit_7_0_Front"] = @9699335UL;
	context[@"kAudioChannelLayoutTag_AudioUnit_5_1"] = @7929862UL;
	context[@"kAudioChannelLayoutTag_AudioUnit_6_1"] = @8192007UL;
	context[@"kAudioChannelLayoutTag_AudioUnit_7_1"] = @8388616UL;
	context[@"kAudioChannelLayoutTag_AudioUnit_7_1_Front"] = @8257544UL;
	context[@"kAudioChannelLayoutTag_AAC_3_0"] = @7471107UL;
	context[@"kAudioChannelLayoutTag_AAC_Quadraphonic"] = @7077892UL;
	context[@"kAudioChannelLayoutTag_AAC_4_0"] = @7602180UL;
	context[@"kAudioChannelLayoutTag_AAC_5_0"] = @7864325UL;
	context[@"kAudioChannelLayoutTag_AAC_5_1"] = @8126470UL;
	context[@"kAudioChannelLayoutTag_AAC_6_0"] = @9240582UL;
	context[@"kAudioChannelLayoutTag_AAC_6_1"] = @9306119UL;
	context[@"kAudioChannelLayoutTag_AAC_7_0"] = @9371655UL;
	context[@"kAudioChannelLayoutTag_AAC_7_1"] = @8323080UL;
	context[@"kAudioChannelLayoutTag_AAC_7_1_B"] = @11993096UL;
	context[@"kAudioChannelLayoutTag_AAC_7_1_C"] = @12058632UL;
	context[@"kAudioChannelLayoutTag_AAC_Octagonal"] = @9437192UL;
	context[@"kAudioChannelLayoutTag_TMH_10_2_std"] = @9502736UL;
	context[@"kAudioChannelLayoutTag_TMH_10_2_full"] = @9568277UL;
	context[@"kAudioChannelLayoutTag_AC3_1_0_1"] = @9764866UL;
	context[@"kAudioChannelLayoutTag_AC3_3_0"] = @9830403UL;
	context[@"kAudioChannelLayoutTag_AC3_3_1"] = @9895940UL;
	context[@"kAudioChannelLayoutTag_AC3_3_0_1"] = @9961476UL;
	context[@"kAudioChannelLayoutTag_AC3_2_1_1"] = @10027012UL;
	context[@"kAudioChannelLayoutTag_AC3_3_1_1"] = @10092549UL;
	context[@"kAudioChannelLayoutTag_EAC_6_0_A"] = @10158086UL;
	context[@"kAudioChannelLayoutTag_EAC_7_0_A"] = @10223623UL;
	context[@"kAudioChannelLayoutTag_EAC3_6_1_A"] = @10289159UL;
	context[@"kAudioChannelLayoutTag_EAC3_6_1_B"] = @10354695UL;
	context[@"kAudioChannelLayoutTag_EAC3_6_1_C"] = @10420231UL;
	context[@"kAudioChannelLayoutTag_EAC3_7_1_A"] = @10485768UL;
	context[@"kAudioChannelLayoutTag_EAC3_7_1_B"] = @10551304UL;
	context[@"kAudioChannelLayoutTag_EAC3_7_1_C"] = @10616840UL;
	context[@"kAudioChannelLayoutTag_EAC3_7_1_D"] = @10682376UL;
	context[@"kAudioChannelLayoutTag_EAC3_7_1_E"] = @10747912UL;
	context[@"kAudioChannelLayoutTag_EAC3_7_1_F"] = @10813448UL;
	context[@"kAudioChannelLayoutTag_EAC3_7_1_G"] = @10878984UL;
	context[@"kAudioChannelLayoutTag_EAC3_7_1_H"] = @10944520UL;
	context[@"kAudioChannelLayoutTag_DTS_3_1"] = @11010052UL;
	context[@"kAudioChannelLayoutTag_DTS_4_1"] = @11075589UL;
	context[@"kAudioChannelLayoutTag_DTS_6_0_A"] = @11141126UL;
	context[@"kAudioChannelLayoutTag_DTS_6_0_B"] = @11206662UL;
	context[@"kAudioChannelLayoutTag_DTS_6_0_C"] = @11272198UL;
	context[@"kAudioChannelLayoutTag_DTS_6_1_A"] = @11337735UL;
	context[@"kAudioChannelLayoutTag_DTS_6_1_B"] = @11403271UL;
	context[@"kAudioChannelLayoutTag_DTS_6_1_C"] = @11468807UL;
	context[@"kAudioChannelLayoutTag_DTS_7_0"] = @11534343UL;
	context[@"kAudioChannelLayoutTag_DTS_7_1"] = @11599880UL;
	context[@"kAudioChannelLayoutTag_DTS_8_0_A"] = @11665416UL;
	context[@"kAudioChannelLayoutTag_DTS_8_0_B"] = @11730952UL;
	context[@"kAudioChannelLayoutTag_DTS_8_1_A"] = @11796489UL;
	context[@"kAudioChannelLayoutTag_DTS_8_1_B"] = @11862025UL;
	context[@"kAudioChannelLayoutTag_DTS_6_1_D"] = @11927559UL;
	context[@"kAudioChannelLayoutTag_DiscreteInOrder"] = @9633792UL;
	context[@"kAudioChannelLayoutTag_Unknown"] = @-65536UL;

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
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
