#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"AudioFileStreamClose"] = ^OSStatus(id arg0) {
		return AudioFileStreamClose(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAudioFileStreamPropertyFlag_PropertyIsCached"] = @1U;
	context[@"kAudioFileStreamPropertyFlag_CacheProperty"] = @2U;

	context[@"kAudioFileStreamParseFlag_Discontinuity"] = @1U;

	context[@"kAudioFileStreamSeekFlag_OffsetIsEstimated"] = @1U;

	context[@"kAudioFileStreamError_UnsupportedFileType"] = @1954115647;
	context[@"kAudioFileStreamError_UnsupportedDataFormat"] = @1718449215;
	context[@"kAudioFileStreamError_UnsupportedProperty"] = @1886681407;
	context[@"kAudioFileStreamError_BadPropertySize"] = @561211770;
	context[@"kAudioFileStreamError_NotOptimized"] = @1869640813;
	context[@"kAudioFileStreamError_InvalidPacketOffset"] = @1885563711;
	context[@"kAudioFileStreamError_InvalidFile"] = @1685348671;
	context[@"kAudioFileStreamError_ValueUnknown"] = @1970170687;
	context[@"kAudioFileStreamError_DataUnavailable"] = @1836020325;
	context[@"kAudioFileStreamError_IllegalOperation"] = @1852797029;
	context[@"kAudioFileStreamError_UnspecifiedError"] = @2003334207;
	context[@"kAudioFileStreamError_DiscontinuityCantRecover"] = @1685283617;

	context[@"kAudioFileStreamProperty_ReadyToProducePackets"] = @1919247481U;
	context[@"kAudioFileStreamProperty_FileFormat"] = @1717988724U;
	context[@"kAudioFileStreamProperty_DataFormat"] = @1684434292U;
	context[@"kAudioFileStreamProperty_FormatList"] = @1718383476U;
	context[@"kAudioFileStreamProperty_MagicCookieData"] = @1835493731U;
	context[@"kAudioFileStreamProperty_AudioDataByteCount"] = @1650683508U;
	context[@"kAudioFileStreamProperty_AudioDataPacketCount"] = @1885564532U;
	context[@"kAudioFileStreamProperty_MaximumPacketSize"] = @1886616165U;
	context[@"kAudioFileStreamProperty_DataOffset"] = @1685022310U;
	context[@"kAudioFileStreamProperty_ChannelLayout"] = @1668112752U;
	context[@"kAudioFileStreamProperty_PacketToFrame"] = @1886086770U;
	context[@"kAudioFileStreamProperty_FrameToPacket"] = @1718775915U;
	context[@"kAudioFileStreamProperty_PacketToByte"] = @1886085753U;
	context[@"kAudioFileStreamProperty_ByteToPacket"] = @1652125803U;
	context[@"kAudioFileStreamProperty_PacketTableInfo"] = @1886283375U;
	context[@"kAudioFileStreamProperty_PacketSizeUpperBound"] = @1886090594U;
	context[@"kAudioFileStreamProperty_AverageBytesPerPacket"] = @1633841264U;
	context[@"kAudioFileStreamProperty_BitRate"] = @1651663220U;
	context[@"kAudioFileStreamProperty_InfoDictionary"] = @1768842863U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AudioFileStream_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
