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
		(UInt32) [self[@"mStringID"] toDouble],
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
		(UInt32) [self[@"mFormatID"] toDouble],
		(CAFFormatFlags) [self[@"mFormatFlags"] toInt32],
		(UInt32) [self[@"mBytesPerPacket"] toDouble],
		(UInt32) [self[@"mFramesPerPacket"] toDouble],
		(UInt32) [self[@"mChannelsPerFrame"] toDouble],
		(UInt32) [self[@"mBitsPerChannel"] toDouble],
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
		(UInt32) [self[@"mFileType"] toDouble],
		(UInt16) [self[@"mFileVersion"] toUInt32],
		(UInt16) [self[@"mFileFlags"] toUInt32],
	};
}
+(JSValue*) valueWithCAFInfoStrings: (CAFInfoStrings) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mNumEntries": @(s.mNumEntries),
	} inContext: context];
}
-(CAFInfoStrings) toCAFInfoStrings {
	return (CAFInfoStrings) {
		(UInt32) [self[@"mNumEntries"] toDouble],
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
+(JSValue*) valueWithCAFChunkHeader: (CAFChunkHeader) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mChunkType": @(s.mChunkType),
		@"mChunkSize": @(s.mChunkSize),
	} inContext: context];
}
-(CAFChunkHeader) toCAFChunkHeader {
	return (CAFChunkHeader) {
		(UInt32) [self[@"mChunkType"] toDouble],
		(SInt64) [self[@"mChunkSize"] toDouble],
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
		(UInt32) [self[@"mSubFrameSampleOffset"] toDouble],
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
		(UInt32) [self[@"mStartRegionID"] toDouble],
		(UInt32) [self[@"mSustainRegionID"] toDouble],
		(UInt32) [self[@"mReleaseRegionID"] toDouble],
		(UInt32) [self[@"mInstrumentID"] toDouble],
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
		(UInt32) [self[@"mType"] toDouble],
		(Float64) [self[@"mFramePosition"] toDouble],
		(UInt32) [self[@"mMarkerID"] toDouble],
		[self[@"mSMPTETime"] toCAF_SMPTE_Time],
		(UInt32) [self[@"mChannel"] toDouble],
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
	context[@"kCAF_FileType"] = @1667327590UL;
	context[@"kCAF_FileVersion_Initial"] = @1UL;

	context[@"kCAF_StreamDescriptionChunkID"] = @1684370275UL;
	context[@"kCAF_AudioDataChunkID"] = @1684108385UL;
	context[@"kCAF_ChannelLayoutChunkID"] = @1667785070UL;
	context[@"kCAF_FillerChunkID"] = @1718773093UL;
	context[@"kCAF_MarkerChunkID"] = @1835102827UL;
	context[@"kCAF_RegionChunkID"] = @1919248238UL;
	context[@"kCAF_InstrumentChunkID"] = @1768846196UL;
	context[@"kCAF_MagicCookieID"] = @1802857321UL;
	context[@"kCAF_InfoStringsChunkID"] = @1768842863UL;
	context[@"kCAF_EditCommentsChunkID"] = @1701077876UL;
	context[@"kCAF_PacketTableChunkID"] = @1885432692UL;
	context[@"kCAF_StringsChunkID"] = @1937011303UL;
	context[@"kCAF_UUIDChunkID"] = @1970628964UL;
	context[@"kCAF_PeakChunkID"] = @1885692267UL;
	context[@"kCAF_OverviewChunkID"] = @1870034551UL;
	context[@"kCAF_MIDIChunkID"] = @1835623529UL;
	context[@"kCAF_UMIDChunkID"] = @1970104676UL;
	context[@"kCAF_FormatListID"] = @1818522467UL;
	context[@"kCAF_iXMLChunkID"] = @1767394636UL;

	context[@"kCAFLinearPCMFormatFlagIsFloat"] = @1UL;
	context[@"kCAFLinearPCMFormatFlagIsLittleEndian"] = @2UL;

	context[@"kCAFMarkerType_Generic"] = @0UL;
	context[@"kCAFMarkerType_ProgramStart"] = @1885496679UL;
	context[@"kCAFMarkerType_ProgramEnd"] = @1885695588UL;
	context[@"kCAFMarkerType_TrackStart"] = @1952605543UL;
	context[@"kCAFMarkerType_TrackEnd"] = @1952804452UL;
	context[@"kCAFMarkerType_Index"] = @1768842360UL;
	context[@"kCAFMarkerType_RegionStart"] = @1919051111UL;
	context[@"kCAFMarkerType_RegionEnd"] = @1919250020UL;
	context[@"kCAFMarkerType_RegionSyncPoint"] = @1920170339UL;
	context[@"kCAFMarkerType_SelectionStart"] = @1935828327UL;
	context[@"kCAFMarkerType_SelectionEnd"] = @1936027236UL;
	context[@"kCAFMarkerType_EditSourceBegin"] = @1667392871UL;
	context[@"kCAFMarkerType_EditSourceEnd"] = @1667591780UL;
	context[@"kCAFMarkerType_EditDestinationBegin"] = @1684170087UL;
	context[@"kCAFMarkerType_EditDestinationEnd"] = @1684368996UL;
	context[@"kCAFMarkerType_SustainLoopStart"] = @1936482919UL;
	context[@"kCAFMarkerType_SustainLoopEnd"] = @1936483694UL;
	context[@"kCAFMarkerType_ReleaseLoopStart"] = @1919705703UL;
	context[@"kCAFMarkerType_ReleaseLoopEnd"] = @1919706478UL;
	context[@"kCAFMarkerType_SavedPlayPosition"] = @1936747641UL;
	context[@"kCAFMarkerType_Tempo"] = @1953329263UL;
	context[@"kCAFMarkerType_TimeSignature"] = @1953720679UL;
	context[@"kCAFMarkerType_KeySignature"] = @1802725735UL;

	context[@"kCAF_SMPTE_TimeTypeNone"] = @0UL;
	context[@"kCAF_SMPTE_TimeType24"] = @1UL;
	context[@"kCAF_SMPTE_TimeType25"] = @2UL;
	context[@"kCAF_SMPTE_TimeType30Drop"] = @3UL;
	context[@"kCAF_SMPTE_TimeType30"] = @4UL;
	context[@"kCAF_SMPTE_TimeType2997"] = @5UL;
	context[@"kCAF_SMPTE_TimeType2997Drop"] = @6UL;
	context[@"kCAF_SMPTE_TimeType60"] = @7UL;
	context[@"kCAF_SMPTE_TimeType5994"] = @8UL;
	context[@"kCAF_SMPTE_TimeType60Drop"] = @9UL;
	context[@"kCAF_SMPTE_TimeType5994Drop"] = @10UL;
	context[@"kCAF_SMPTE_TimeType50"] = @11UL;
	context[@"kCAF_SMPTE_TimeType2398"] = @12UL;

	context[@"kCAFRegionFlag_LoopEnable"] = @1UL;
	context[@"kCAFRegionFlag_PlayForward"] = @2UL;
	context[@"kCAFRegionFlag_PlayBackward"] = @4UL;

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
