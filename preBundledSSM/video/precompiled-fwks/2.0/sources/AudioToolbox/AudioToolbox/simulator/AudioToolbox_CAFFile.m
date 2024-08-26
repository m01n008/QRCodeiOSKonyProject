#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AudioToolbox_CAFFile)
+(JSValue*) valueWithCAFStringID: (CAFStringID) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mStringID": @(s.mStringID),
		@"mStringStartByteOffset": @(s.mStringStartByteOffset),
	} inContext: context];
}
-(CAFStringID) toCAFStringID {
	return (CAFStringID) {
		(UInt32) [self[@"mStringID"] toUInt32],
		(SInt64) [self[@"mStringStartByteOffset"] toDouble],
	};
}
+(JSValue*) valueWithCAFAudioDescription: (CAFAudioDescription) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mSampleRate": @(s.mSampleRate),
		@"mFormatID": @(s.mFormatID),
		@"mFormatFlags": @(s.mFormatFlags),
		@"mBytesPerPacket": @(s.mBytesPerPacket),
		@"mFramesPerPacket": @(s.mFramesPerPacket),
		@"mChannelsPerFrame": @(s.mChannelsPerFrame),
		@"mBitsPerChannel": @(s.mBitsPerChannel),
	} inContext: context];
}
-(CAFAudioDescription) toCAFAudioDescription {
	return (CAFAudioDescription) {
		(Float64) [self[@"mSampleRate"] toDouble],
		(UInt32) [self[@"mFormatID"] toUInt32],
		(CAFFormatFlags) [self[@"mFormatFlags"] toInt32],
		(UInt32) [self[@"mBytesPerPacket"] toUInt32],
		(UInt32) [self[@"mFramesPerPacket"] toUInt32],
		(UInt32) [self[@"mChannelsPerFrame"] toUInt32],
		(UInt32) [self[@"mBitsPerChannel"] toUInt32],
	};
}
+(JSValue*) valueWithCAFFileHeader: (CAFFileHeader) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mFileType": @(s.mFileType),
		@"mFileVersion": @(s.mFileVersion),
		@"mFileFlags": @(s.mFileFlags),
	} inContext: context];
}
-(CAFFileHeader) toCAFFileHeader {
	return (CAFFileHeader) {
		(UInt32) [self[@"mFileType"] toUInt32],
		(UInt16) [self[@"mFileVersion"] toUInt32],
		(UInt16) [self[@"mFileFlags"] toUInt32],
	};
}
+(JSValue*) valueWithCAFChunkHeader: (CAFChunkHeader) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mChunkType": @(s.mChunkType),
		@"mChunkSize": @(s.mChunkSize),
	} inContext: context];
}
-(CAFChunkHeader) toCAFChunkHeader {
	return (CAFChunkHeader) {
		(UInt32) [self[@"mChunkType"] toUInt32],
		(SInt64) [self[@"mChunkSize"] toDouble],
	};
}
+(JSValue*) valueWithCAFInfoStrings: (CAFInfoStrings) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mNumEntries": @(s.mNumEntries),
	} inContext: context];
}
-(CAFInfoStrings) toCAFInfoStrings {
	return (CAFInfoStrings) {
		(UInt32) [self[@"mNumEntries"] toUInt32],
	};
}
+(JSValue*) valueWithCAFPositionPeak: (CAFPositionPeak) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mValue": @(s.mValue),
		@"mFrameNumber": @(s.mFrameNumber),
	} inContext: context];
}
-(CAFPositionPeak) toCAFPositionPeak {
	return (CAFPositionPeak) {
		(Float32) [self[@"mValue"] toDouble],
		(UInt64) [self[@"mFrameNumber"] toDouble],
	};
}
+(JSValue*) valueWithCAFOverviewSample: (CAFOverviewSample) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mMinValue": @(s.mMinValue),
		@"mMaxValue": @(s.mMaxValue),
	} inContext: context];
}
-(CAFOverviewSample) toCAFOverviewSample {
	return (CAFOverviewSample) {
		(SInt16) [self[@"mMinValue"] toInt32],
		(SInt16) [self[@"mMaxValue"] toInt32],
	};
}
+(JSValue*) valueWithCAF_SMPTE_Time: (CAF_SMPTE_Time) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mHours": @(s.mHours),
		@"mMinutes": @(s.mMinutes),
		@"mSeconds": @(s.mSeconds),
		@"mFrames": @(s.mFrames),
		@"mSubFrameSampleOffset": @(s.mSubFrameSampleOffset),
	} inContext: context];
}
-(CAF_SMPTE_Time) toCAF_SMPTE_Time {
	return (CAF_SMPTE_Time) {
		(SInt8) [self[@"mHours"] toInt32],
		(SInt8) [self[@"mMinutes"] toInt32],
		(SInt8) [self[@"mSeconds"] toInt32],
		(SInt8) [self[@"mFrames"] toInt32],
		(UInt32) [self[@"mSubFrameSampleOffset"] toUInt32],
	};
}
+(JSValue*) valueWithCAFInstrumentChunk: (CAFInstrumentChunk) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mBaseNote": @(s.mBaseNote),
		@"mMIDILowNote": @(s.mMIDILowNote),
		@"mMIDIHighNote": @(s.mMIDIHighNote),
		@"mMIDILowVelocity": @(s.mMIDILowVelocity),
		@"mMIDIHighVelocity": @(s.mMIDIHighVelocity),
		@"mdBGain": @(s.mdBGain),
		@"mStartRegionID": @(s.mStartRegionID),
		@"mSustainRegionID": @(s.mSustainRegionID),
		@"mReleaseRegionID": @(s.mReleaseRegionID),
		@"mInstrumentID": @(s.mInstrumentID),
	} inContext: context];
}
-(CAFInstrumentChunk) toCAFInstrumentChunk {
	return (CAFInstrumentChunk) {
		(Float32) [self[@"mBaseNote"] toDouble],
		(UInt8) [self[@"mMIDILowNote"] toUInt32],
		(UInt8) [self[@"mMIDIHighNote"] toUInt32],
		(UInt8) [self[@"mMIDILowVelocity"] toUInt32],
		(UInt8) [self[@"mMIDIHighVelocity"] toUInt32],
		(Float32) [self[@"mdBGain"] toDouble],
		(UInt32) [self[@"mStartRegionID"] toUInt32],
		(UInt32) [self[@"mSustainRegionID"] toUInt32],
		(UInt32) [self[@"mReleaseRegionID"] toUInt32],
		(UInt32) [self[@"mInstrumentID"] toUInt32],
	};
}
+(JSValue*) valueWithCAFMarker: (CAFMarker) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mType": @(s.mType),
		@"mFramePosition": @(s.mFramePosition),
		@"mMarkerID": @(s.mMarkerID),
		@"mHours": @(s.mSMPTETime.mHours),
		@"mMinutes": @(s.mSMPTETime.mMinutes),
		@"mSeconds": @(s.mSMPTETime.mSeconds),
		@"mFrames": @(s.mSMPTETime.mFrames),
		@"mSubFrameSampleOffset": @(s.mSMPTETime.mSubFrameSampleOffset),
		@"mChannel": @(s.mChannel),
	} inContext: context];
}
-(CAFMarker) toCAFMarker {
	return (CAFMarker) {
		(UInt32) [self[@"mType"] toUInt32],
		(Float64) [self[@"mFramePosition"] toDouble],
		(UInt32) [self[@"mMarkerID"] toUInt32],
		[self[@"mSMPTETime"] toCAF_SMPTE_Time],
		(UInt32) [self[@"mChannel"] toUInt32],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCAF_FileType"] = @1667327590U;
	context[@"kCAF_FileVersion_Initial"] = @1U;

	context[@"kCAF_StreamDescriptionChunkID"] = @1684370275U;
	context[@"kCAF_AudioDataChunkID"] = @1684108385U;
	context[@"kCAF_ChannelLayoutChunkID"] = @1667785070U;
	context[@"kCAF_FillerChunkID"] = @1718773093U;
	context[@"kCAF_MarkerChunkID"] = @1835102827U;
	context[@"kCAF_RegionChunkID"] = @1919248238U;
	context[@"kCAF_InstrumentChunkID"] = @1768846196U;
	context[@"kCAF_MagicCookieID"] = @1802857321U;
	context[@"kCAF_InfoStringsChunkID"] = @1768842863U;
	context[@"kCAF_EditCommentsChunkID"] = @1701077876U;
	context[@"kCAF_PacketTableChunkID"] = @1885432692U;
	context[@"kCAF_StringsChunkID"] = @1937011303U;
	context[@"kCAF_UUIDChunkID"] = @1970628964U;
	context[@"kCAF_PeakChunkID"] = @1885692267U;
	context[@"kCAF_OverviewChunkID"] = @1870034551U;
	context[@"kCAF_MIDIChunkID"] = @1835623529U;
	context[@"kCAF_UMIDChunkID"] = @1970104676U;
	context[@"kCAF_FormatListID"] = @1818522467U;
	context[@"kCAF_iXMLChunkID"] = @1767394636U;

	context[@"kCAFLinearPCMFormatFlagIsFloat"] = @1U;
	context[@"kCAFLinearPCMFormatFlagIsLittleEndian"] = @2U;

	context[@"kCAFMarkerType_Generic"] = @0U;
	context[@"kCAFMarkerType_ProgramStart"] = @1885496679U;
	context[@"kCAFMarkerType_ProgramEnd"] = @1885695588U;
	context[@"kCAFMarkerType_TrackStart"] = @1952605543U;
	context[@"kCAFMarkerType_TrackEnd"] = @1952804452U;
	context[@"kCAFMarkerType_Index"] = @1768842360U;
	context[@"kCAFMarkerType_RegionStart"] = @1919051111U;
	context[@"kCAFMarkerType_RegionEnd"] = @1919250020U;
	context[@"kCAFMarkerType_RegionSyncPoint"] = @1920170339U;
	context[@"kCAFMarkerType_SelectionStart"] = @1935828327U;
	context[@"kCAFMarkerType_SelectionEnd"] = @1936027236U;
	context[@"kCAFMarkerType_EditSourceBegin"] = @1667392871U;
	context[@"kCAFMarkerType_EditSourceEnd"] = @1667591780U;
	context[@"kCAFMarkerType_EditDestinationBegin"] = @1684170087U;
	context[@"kCAFMarkerType_EditDestinationEnd"] = @1684368996U;
	context[@"kCAFMarkerType_SustainLoopStart"] = @1936482919U;
	context[@"kCAFMarkerType_SustainLoopEnd"] = @1936483694U;
	context[@"kCAFMarkerType_ReleaseLoopStart"] = @1919705703U;
	context[@"kCAFMarkerType_ReleaseLoopEnd"] = @1919706478U;
	context[@"kCAFMarkerType_SavedPlayPosition"] = @1936747641U;
	context[@"kCAFMarkerType_Tempo"] = @1953329263U;
	context[@"kCAFMarkerType_TimeSignature"] = @1953720679U;
	context[@"kCAFMarkerType_KeySignature"] = @1802725735U;

	context[@"kCAF_SMPTE_TimeTypeNone"] = @0U;
	context[@"kCAF_SMPTE_TimeType24"] = @1U;
	context[@"kCAF_SMPTE_TimeType25"] = @2U;
	context[@"kCAF_SMPTE_TimeType30Drop"] = @3U;
	context[@"kCAF_SMPTE_TimeType30"] = @4U;
	context[@"kCAF_SMPTE_TimeType2997"] = @5U;
	context[@"kCAF_SMPTE_TimeType2997Drop"] = @6U;
	context[@"kCAF_SMPTE_TimeType60"] = @7U;
	context[@"kCAF_SMPTE_TimeType5994"] = @8U;
	context[@"kCAF_SMPTE_TimeType60Drop"] = @9U;
	context[@"kCAF_SMPTE_TimeType5994Drop"] = @10U;
	context[@"kCAF_SMPTE_TimeType50"] = @11U;
	context[@"kCAF_SMPTE_TimeType2398"] = @12U;

	context[@"kCAFRegionFlag_LoopEnable"] = @1U;
	context[@"kCAFRegionFlag_PlayForward"] = @2U;
	context[@"kCAFRegionFlag_PlayBackward"] = @4U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_CAFFile_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
