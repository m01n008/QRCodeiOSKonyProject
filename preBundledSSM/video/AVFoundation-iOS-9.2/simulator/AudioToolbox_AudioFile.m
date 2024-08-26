#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
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
		(SInt32) [self[@"mPrimingFrames"] toDouble],
		(SInt32) [self[@"mRemainderFrames"] toDouble],
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
		(UInt32) [self[@"mFrameOffsetInPacket"] toDouble],
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
		(UInt32) [self[@"mSubFrameSampleOffset"] toDouble],
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
		(UInt32) [self[@"mByteOffsetInPacket"] toDouble],
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
		(AudioFileTypeID) [self[@"mFileType"] toDouble],
		(UInt32) [self[@"mFormatID"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAudioFileAIFFType"] = @1095321158UL;
	context[@"kAudioFileAIFCType"] = @1095321155UL;
	context[@"kAudioFileWAVEType"] = @1463899717UL;
	context[@"kAudioFileSoundDesigner2Type"] = @1399075430UL;
	context[@"kAudioFileNextType"] = @1315264596UL;
	context[@"kAudioFileMP3Type"] = @1297106739UL;
	context[@"kAudioFileMP2Type"] = @1297106738UL;
	context[@"kAudioFileMP1Type"] = @1297106737UL;
	context[@"kAudioFileAC3Type"] = @1633889587UL;
	context[@"kAudioFileAAC_ADTSType"] = @1633973363UL;
	context[@"kAudioFileMPEG4Type"] = @1836069990UL;
	context[@"kAudioFileM4AType"] = @1832149350UL;
	context[@"kAudioFileM4BType"] = @1832149606UL;
	context[@"kAudioFileCAFType"] = @1667327590UL;
	context[@"kAudioFile3GPType"] = @862417008UL;
	context[@"kAudioFile3GP2Type"] = @862416946UL;
	context[@"kAudioFileAMRType"] = @1634562662UL;

	context[@"kAudioFileUnspecifiedError"] = @2003334207L;
	context[@"kAudioFileUnsupportedFileTypeError"] = @1954115647L;
	context[@"kAudioFileUnsupportedDataFormatError"] = @1718449215L;
	context[@"kAudioFileUnsupportedPropertyError"] = @1886681407L;
	context[@"kAudioFileBadPropertySizeError"] = @561211770L;
	context[@"kAudioFilePermissionsError"] = @1886547263L;
	context[@"kAudioFileNotOptimizedError"] = @1869640813L;
	context[@"kAudioFileInvalidChunkError"] = @1667787583L;
	context[@"kAudioFileDoesNotAllow64BitDataSizeError"] = @1868981823L;
	context[@"kAudioFileInvalidPacketOffsetError"] = @1885563711L;
	context[@"kAudioFileInvalidFileError"] = @1685348671L;
	context[@"kAudioFileOperationNotSupportedError"] = @1869627199L;
	context[@"kAudioFileNotOpenError"] = @-38L;
	context[@"kAudioFileEndOfFileError"] = @-39L;
	context[@"kAudioFilePositionError"] = @-40L;
	context[@"kAudioFileFileNotFoundError"] = @-43L;

	context[@"kAudioFileFlags_EraseFile"] = @1UL;
	context[@"kAudioFileFlags_DontPageAlignAudioData"] = @2UL;

	context[@"kAudioFileReadPermission"] = @1;
	context[@"kAudioFileWritePermission"] = @2;
	context[@"kAudioFileReadWritePermission"] = @3;

	context[@"kAudioFileLoopDirection_NoLooping"] = @0UL;
	context[@"kAudioFileLoopDirection_Forward"] = @1UL;
	context[@"kAudioFileLoopDirection_ForwardAndBackward"] = @2UL;
	context[@"kAudioFileLoopDirection_Backward"] = @3UL;

	context[@"kAudioFileMarkerType_Generic"] = @0UL;

	context[@"kAudioFileRegionFlag_LoopEnable"] = @1UL;
	context[@"kAudioFileRegionFlag_PlayForward"] = @2UL;
	context[@"kAudioFileRegionFlag_PlayBackward"] = @4UL;

	context[@"kBytePacketTranslationFlag_IsEstimate"] = @1UL;

	context[@"kAudioFilePropertyFileFormat"] = @1717988724UL;
	context[@"kAudioFilePropertyDataFormat"] = @1684434292UL;
	context[@"kAudioFilePropertyIsOptimized"] = @1869640813UL;
	context[@"kAudioFilePropertyMagicCookieData"] = @1835493731UL;
	context[@"kAudioFilePropertyAudioDataByteCount"] = @1650683508UL;
	context[@"kAudioFilePropertyAudioDataPacketCount"] = @1885564532UL;
	context[@"kAudioFilePropertyMaximumPacketSize"] = @1886616165UL;
	context[@"kAudioFilePropertyDataOffset"] = @1685022310UL;
	context[@"kAudioFilePropertyChannelLayout"] = @1668112752UL;
	context[@"kAudioFilePropertyDeferSizeUpdates"] = @1685289589UL;
	context[@"kAudioFilePropertyDataFormatName"] = @1718512997UL;
	context[@"kAudioFilePropertyMarkerList"] = @1835756659UL;
	context[@"kAudioFilePropertyRegionList"] = @1919380595UL;
	context[@"kAudioFilePropertyPacketToFrame"] = @1886086770UL;
	context[@"kAudioFilePropertyFrameToPacket"] = @1718775915UL;
	context[@"kAudioFilePropertyPacketToByte"] = @1886085753UL;
	context[@"kAudioFilePropertyByteToPacket"] = @1652125803UL;
	context[@"kAudioFilePropertyChunkIDs"] = @1667787108UL;
	context[@"kAudioFilePropertyInfoDictionary"] = @1768842863UL;
	context[@"kAudioFilePropertyPacketTableInfo"] = @1886283375UL;
	context[@"kAudioFilePropertyFormatList"] = @1718383476UL;
	context[@"kAudioFilePropertyPacketSizeUpperBound"] = @1886090594UL;
	context[@"kAudioFilePropertyReserveDuration"] = @1920168566UL;
	context[@"kAudioFilePropertyEstimatedDuration"] = @1701082482UL;
	context[@"kAudioFilePropertyBitRate"] = @1651663220UL;
	context[@"kAudioFilePropertyID3Tag"] = @1768174452UL;
	context[@"kAudioFilePropertySourceBitDepth"] = @1935832164UL;
	context[@"kAudioFilePropertyAlbumArtwork"] = @1633776244UL;
	context[@"kAudioFilePropertyAudioTrackCount"] = @1635017588UL;
	context[@"kAudioFilePropertyUseAudioTrack"] = @1969321067UL;

	context[@"kAudioFileGlobalInfo_ReadableTypes"] = @1634103910UL;
	context[@"kAudioFileGlobalInfo_WritableTypes"] = @1634105190UL;
	context[@"kAudioFileGlobalInfo_FileTypeName"] = @1718906477UL;
	context[@"kAudioFileGlobalInfo_AvailableStreamDescriptionsForFormat"] = @1935960420UL;
	context[@"kAudioFileGlobalInfo_AvailableFormatIDs"] = @1718446436UL;
	context[@"kAudioFileGlobalInfo_AllExtensions"] = @1634498676UL;
	context[@"kAudioFileGlobalInfo_AllHFSTypeCodes"] = @1634231923UL;
	context[@"kAudioFileGlobalInfo_AllUTIs"] = @1635087465UL;
	context[@"kAudioFileGlobalInfo_AllMIMETypes"] = @1634560365UL;
	context[@"kAudioFileGlobalInfo_ExtensionsForType"] = @1717926004UL;
	context[@"kAudioFileGlobalInfo_HFSTypeCodesForType"] = @1718118003UL;
	context[@"kAudioFileGlobalInfo_UTIsForType"] = @1718973545UL;
	context[@"kAudioFileGlobalInfo_MIMETypesForType"] = @1718446445UL;
	context[@"kAudioFileGlobalInfo_TypesForMIMEType"] = @1953327469UL;
	context[@"kAudioFileGlobalInfo_TypesForUTI"] = @1953854569UL;
	context[@"kAudioFileGlobalInfo_TypesForHFSTypeCode"] = @1952999027UL;
	context[@"kAudioFileGlobalInfo_TypesForExtension"] = @1952807028UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AudioFile_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
