#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AudioToolbox_AudioFile)
+(JSValue*) valueWithAudioFilePacketTableInfo: (AudioFilePacketTableInfo) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mNumberValidFrames": @(s.mNumberValidFrames),
		@"mPrimingFrames": @(s.mPrimingFrames),
		@"mRemainderFrames": @(s.mRemainderFrames),
	} inContext: context];
}
-(AudioFilePacketTableInfo) toAudioFilePacketTableInfo {
	return (AudioFilePacketTableInfo) {
		(SInt64) [self[@"mNumberValidFrames"] toDouble],
		(SInt32) [self[@"mPrimingFrames"] toInt32],
		(SInt32) [self[@"mRemainderFrames"] toInt32],
	};
}
+(JSValue*) valueWithAudioFramePacketTranslation: (AudioFramePacketTranslation) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mFrame": @(s.mFrame),
		@"mPacket": @(s.mPacket),
		@"mFrameOffsetInPacket": @(s.mFrameOffsetInPacket),
	} inContext: context];
}
-(AudioFramePacketTranslation) toAudioFramePacketTranslation {
	return (AudioFramePacketTranslation) {
		(SInt64) [self[@"mFrame"] toDouble],
		(SInt64) [self[@"mPacket"] toDouble],
		(UInt32) [self[@"mFrameOffsetInPacket"] toUInt32],
	};
}
+(JSValue*) valueWithAudioFile_SMPTE_Time: (AudioFile_SMPTE_Time) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mHours": @(s.mHours),
		@"mMinutes": @(s.mMinutes),
		@"mSeconds": @(s.mSeconds),
		@"mFrames": @(s.mFrames),
		@"mSubFrameSampleOffset": @(s.mSubFrameSampleOffset),
	} inContext: context];
}
-(AudioFile_SMPTE_Time) toAudioFile_SMPTE_Time {
	return (AudioFile_SMPTE_Time) {
		(SInt8) [self[@"mHours"] toInt32],
		(UInt8) [self[@"mMinutes"] toUInt32],
		(UInt8) [self[@"mSeconds"] toUInt32],
		(UInt8) [self[@"mFrames"] toUInt32],
		(UInt32) [self[@"mSubFrameSampleOffset"] toUInt32],
	};
}
+(JSValue*) valueWithAudioBytePacketTranslation: (AudioBytePacketTranslation) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mByte": @(s.mByte),
		@"mPacket": @(s.mPacket),
		@"mByteOffsetInPacket": @(s.mByteOffsetInPacket),
		@"mFlags": @(s.mFlags),
	} inContext: context];
}
-(AudioBytePacketTranslation) toAudioBytePacketTranslation {
	return (AudioBytePacketTranslation) {
		(SInt64) [self[@"mByte"] toDouble],
		(SInt64) [self[@"mPacket"] toDouble],
		(UInt32) [self[@"mByteOffsetInPacket"] toUInt32],
		(AudioBytePacketTranslationFlags) [self[@"mFlags"] toInt32],
	};
}
+(JSValue*) valueWithAudioFileTypeAndFormatID: (AudioFileTypeAndFormatID) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mFileType": @(s.mFileType),
		@"mFormatID": @(s.mFormatID),
	} inContext: context];
}
-(AudioFileTypeAndFormatID) toAudioFileTypeAndFormatID {
	return (AudioFileTypeAndFormatID) {
		(AudioFileTypeID) [self[@"mFileType"] toUInt32],
		(UInt32) [self[@"mFormatID"] toUInt32],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"NumAudioFileMarkersToNumBytes"] = ^size_t(size_t arg0) {
		return NumAudioFileMarkersToNumBytes(arg0);
	};
	context[@"AudioFileOptimize"] = ^OSStatus(id arg0) {
		return AudioFileOptimize(arg0);
	};
	context[@"AudioFileRemoveUserData"] = ^OSStatus(id arg0, UInt32 arg1, UInt32 arg2) {
		return AudioFileRemoveUserData(arg0, arg1, arg2);
	};
	context[@"AudioFileClose"] = ^OSStatus(id arg0) {
		return AudioFileClose(arg0);
	};
	context[@"NumBytesToNumAudioFileMarkers"] = ^size_t(size_t arg0) {
		return NumBytesToNumAudioFileMarkers(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAudioFileAIFFType"] = @1095321158U;
	context[@"kAudioFileAIFCType"] = @1095321155U;
	context[@"kAudioFileWAVEType"] = @1463899717U;
	context[@"kAudioFileRF64Type"] = @1380333108U;
	context[@"kAudioFileSoundDesigner2Type"] = @1399075430U;
	context[@"kAudioFileNextType"] = @1315264596U;
	context[@"kAudioFileMP3Type"] = @1297106739U;
	context[@"kAudioFileMP2Type"] = @1297106738U;
	context[@"kAudioFileMP1Type"] = @1297106737U;
	context[@"kAudioFileAC3Type"] = @1633889587U;
	context[@"kAudioFileAAC_ADTSType"] = @1633973363U;
	context[@"kAudioFileMPEG4Type"] = @1836069990U;
	context[@"kAudioFileM4AType"] = @1832149350U;
	context[@"kAudioFileM4BType"] = @1832149606U;
	context[@"kAudioFileCAFType"] = @1667327590U;
	context[@"kAudioFile3GPType"] = @862417008U;
	context[@"kAudioFile3GP2Type"] = @862416946U;
	context[@"kAudioFileAMRType"] = @1634562662U;
	context[@"kAudioFileFLACType"] = @1718378851U;

	context[@"kAudioFileUnspecifiedError"] = @2003334207;
	context[@"kAudioFileUnsupportedFileTypeError"] = @1954115647;
	context[@"kAudioFileUnsupportedDataFormatError"] = @1718449215;
	context[@"kAudioFileUnsupportedPropertyError"] = @1886681407;
	context[@"kAudioFileBadPropertySizeError"] = @561211770;
	context[@"kAudioFilePermissionsError"] = @1886547263;
	context[@"kAudioFileNotOptimizedError"] = @1869640813;
	context[@"kAudioFileInvalidChunkError"] = @1667787583;
	context[@"kAudioFileDoesNotAllow64BitDataSizeError"] = @1868981823;
	context[@"kAudioFileInvalidPacketOffsetError"] = @1885563711;
	context[@"kAudioFileInvalidFileError"] = @1685348671;
	context[@"kAudioFileOperationNotSupportedError"] = @1869627199;
	context[@"kAudioFileNotOpenError"] = @-38;
	context[@"kAudioFileEndOfFileError"] = @-39;
	context[@"kAudioFilePositionError"] = @-40;
	context[@"kAudioFileFileNotFoundError"] = @-43;

	context[@"kAudioFileFlags_EraseFile"] = @1U;
	context[@"kAudioFileFlags_DontPageAlignAudioData"] = @2U;

	context[@"kAudioFileReadPermission"] = @1;
	context[@"kAudioFileWritePermission"] = @2;
	context[@"kAudioFileReadWritePermission"] = @3;

	context[@"kAudioFileLoopDirection_NoLooping"] = @0U;
	context[@"kAudioFileLoopDirection_Forward"] = @1U;
	context[@"kAudioFileLoopDirection_ForwardAndBackward"] = @2U;
	context[@"kAudioFileLoopDirection_Backward"] = @3U;

	context[@"kAudioFileMarkerType_Generic"] = @0U;

	context[@"kAudioFileRegionFlag_LoopEnable"] = @1U;
	context[@"kAudioFileRegionFlag_PlayForward"] = @2U;
	context[@"kAudioFileRegionFlag_PlayBackward"] = @4U;

	context[@"kBytePacketTranslationFlag_IsEstimate"] = @1U;

	context[@"kAudioFilePropertyFileFormat"] = @1717988724U;
	context[@"kAudioFilePropertyDataFormat"] = @1684434292U;
	context[@"kAudioFilePropertyIsOptimized"] = @1869640813U;
	context[@"kAudioFilePropertyMagicCookieData"] = @1835493731U;
	context[@"kAudioFilePropertyAudioDataByteCount"] = @1650683508U;
	context[@"kAudioFilePropertyAudioDataPacketCount"] = @1885564532U;
	context[@"kAudioFilePropertyMaximumPacketSize"] = @1886616165U;
	context[@"kAudioFilePropertyDataOffset"] = @1685022310U;
	context[@"kAudioFilePropertyChannelLayout"] = @1668112752U;
	context[@"kAudioFilePropertyDeferSizeUpdates"] = @1685289589U;
	context[@"kAudioFilePropertyDataFormatName"] = @1718512997U;
	context[@"kAudioFilePropertyMarkerList"] = @1835756659U;
	context[@"kAudioFilePropertyRegionList"] = @1919380595U;
	context[@"kAudioFilePropertyPacketToFrame"] = @1886086770U;
	context[@"kAudioFilePropertyFrameToPacket"] = @1718775915U;
	context[@"kAudioFilePropertyPacketToByte"] = @1886085753U;
	context[@"kAudioFilePropertyByteToPacket"] = @1652125803U;
	context[@"kAudioFilePropertyChunkIDs"] = @1667787108U;
	context[@"kAudioFilePropertyInfoDictionary"] = @1768842863U;
	context[@"kAudioFilePropertyPacketTableInfo"] = @1886283375U;
	context[@"kAudioFilePropertyFormatList"] = @1718383476U;
	context[@"kAudioFilePropertyPacketSizeUpperBound"] = @1886090594U;
	context[@"kAudioFilePropertyReserveDuration"] = @1920168566U;
	context[@"kAudioFilePropertyEstimatedDuration"] = @1701082482U;
	context[@"kAudioFilePropertyBitRate"] = @1651663220U;
	context[@"kAudioFilePropertyID3Tag"] = @1768174452U;
	context[@"kAudioFilePropertySourceBitDepth"] = @1935832164U;
	context[@"kAudioFilePropertyAlbumArtwork"] = @1633776244U;
	context[@"kAudioFilePropertyAudioTrackCount"] = @1635017588U;
	context[@"kAudioFilePropertyUseAudioTrack"] = @1969321067U;

	context[@"kAudioFileGlobalInfo_ReadableTypes"] = @1634103910U;
	context[@"kAudioFileGlobalInfo_WritableTypes"] = @1634105190U;
	context[@"kAudioFileGlobalInfo_FileTypeName"] = @1718906477U;
	context[@"kAudioFileGlobalInfo_AvailableStreamDescriptionsForFormat"] = @1935960420U;
	context[@"kAudioFileGlobalInfo_AvailableFormatIDs"] = @1718446436U;
	context[@"kAudioFileGlobalInfo_AllExtensions"] = @1634498676U;
	context[@"kAudioFileGlobalInfo_AllHFSTypeCodes"] = @1634231923U;
	context[@"kAudioFileGlobalInfo_AllUTIs"] = @1635087465U;
	context[@"kAudioFileGlobalInfo_AllMIMETypes"] = @1634560365U;
	context[@"kAudioFileGlobalInfo_ExtensionsForType"] = @1717926004U;
	context[@"kAudioFileGlobalInfo_HFSTypeCodesForType"] = @1718118003U;
	context[@"kAudioFileGlobalInfo_UTIsForType"] = @1718973545U;
	context[@"kAudioFileGlobalInfo_MIMETypesForType"] = @1718446445U;
	context[@"kAudioFileGlobalInfo_TypesForMIMEType"] = @1953327469U;
	context[@"kAudioFileGlobalInfo_TypesForUTI"] = @1953854569U;
	context[@"kAudioFileGlobalInfo_TypesForHFSTypeCode"] = @1952999027U;
	context[@"kAudioFileGlobalInfo_TypesForExtension"] = @1952807028U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AudioFile_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
