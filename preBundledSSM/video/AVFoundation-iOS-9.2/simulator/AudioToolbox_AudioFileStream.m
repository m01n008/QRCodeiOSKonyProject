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
	context[@"kAudioFileStreamPropertyFlag_PropertyIsCached"] = @1UL;
	context[@"kAudioFileStreamPropertyFlag_CacheProperty"] = @2UL;

	context[@"kAudioFileStreamParseFlag_Discontinuity"] = @1UL;

	context[@"kAudioFileStreamSeekFlag_OffsetIsEstimated"] = @1UL;

	context[@"kAudioFileStreamError_UnsupportedFileType"] = @1954115647L;
	context[@"kAudioFileStreamError_UnsupportedDataFormat"] = @1718449215L;
	context[@"kAudioFileStreamError_UnsupportedProperty"] = @1886681407L;
	context[@"kAudioFileStreamError_BadPropertySize"] = @561211770L;
	context[@"kAudioFileStreamError_NotOptimized"] = @1869640813L;
	context[@"kAudioFileStreamError_InvalidPacketOffset"] = @1885563711L;
	context[@"kAudioFileStreamError_InvalidFile"] = @1685348671L;
	context[@"kAudioFileStreamError_ValueUnknown"] = @1970170687L;
	context[@"kAudioFileStreamError_DataUnavailable"] = @1836020325L;
	context[@"kAudioFileStreamError_IllegalOperation"] = @1852797029L;
	context[@"kAudioFileStreamError_UnspecifiedError"] = @2003334207L;
	context[@"kAudioFileStreamError_DiscontinuityCantRecover"] = @1685283617L;

	context[@"kAudioFileStreamProperty_ReadyToProducePackets"] = @1919247481UL;
	context[@"kAudioFileStreamProperty_FileFormat"] = @1717988724UL;
	context[@"kAudioFileStreamProperty_DataFormat"] = @1684434292UL;
	context[@"kAudioFileStreamProperty_FormatList"] = @1718383476UL;
	context[@"kAudioFileStreamProperty_MagicCookieData"] = @1835493731UL;
	context[@"kAudioFileStreamProperty_AudioDataByteCount"] = @1650683508UL;
	context[@"kAudioFileStreamProperty_AudioDataPacketCount"] = @1885564532UL;
	context[@"kAudioFileStreamProperty_MaximumPacketSize"] = @1886616165UL;
	context[@"kAudioFileStreamProperty_DataOffset"] = @1685022310UL;
	context[@"kAudioFileStreamProperty_ChannelLayout"] = @1668112752UL;
	context[@"kAudioFileStreamProperty_PacketToFrame"] = @1886086770UL;
	context[@"kAudioFileStreamProperty_FrameToPacket"] = @1718775915UL;
	context[@"kAudioFileStreamProperty_PacketToByte"] = @1886085753UL;
	context[@"kAudioFileStreamProperty_ByteToPacket"] = @1652125803UL;
	context[@"kAudioFileStreamProperty_PacketTableInfo"] = @1886283375UL;
	context[@"kAudioFileStreamProperty_PacketSizeUpperBound"] = @1886090594UL;
	context[@"kAudioFileStreamProperty_AverageBytesPerPacket"] = @1633841264UL;
	context[@"kAudioFileStreamProperty_BitRate"] = @1651663220UL;
	context[@"kAudioFileStreamProperty_InfoDictionary"] = @1768842863UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AudioFileStream_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
