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
	context[@"kExtAudioFileProperty_FileDataFormat"] = @1717988724UL;
	context[@"kExtAudioFileProperty_FileChannelLayout"] = @1717791855UL;
	context[@"kExtAudioFileProperty_ClientDataFormat"] = @1667657076UL;
	context[@"kExtAudioFileProperty_ClientChannelLayout"] = @1667460207UL;
	context[@"kExtAudioFileProperty_CodecManufacturer"] = @1668112750UL;
	context[@"kExtAudioFileProperty_AudioConverter"] = @1633906294UL;
	context[@"kExtAudioFileProperty_AudioFile"] = @1634101612UL;
	context[@"kExtAudioFileProperty_FileMaxPacketSize"] = @1718448243UL;
	context[@"kExtAudioFileProperty_ClientMaxPacketSize"] = @1668116595UL;
	context[@"kExtAudioFileProperty_FileLengthFrames"] = @593916525UL;
	context[@"kExtAudioFileProperty_ConverterConfig"] = @1633903462UL;
	context[@"kExtAudioFileProperty_IOBufferSizeBytes"] = @1768907379UL;
	context[@"kExtAudioFileProperty_IOBuffer"] = @1768907366UL;
	context[@"kExtAudioFileProperty_PacketTable"] = @2020635753UL;

	context[@"kExtAudioFileError_InvalidProperty"] = @-66561L;
	context[@"kExtAudioFileError_InvalidPropertySize"] = @-66562L;
	context[@"kExtAudioFileError_NonPCMClientFormat"] = @-66563L;
	context[@"kExtAudioFileError_InvalidChannelMap"] = @-66564L;
	context[@"kExtAudioFileError_InvalidOperationOrder"] = @-66565L;
	context[@"kExtAudioFileError_InvalidDataFormat"] = @-66566L;
	context[@"kExtAudioFileError_MaxPacketSizeUnknown"] = @-66567L;
	context[@"kExtAudioFileError_InvalidSeek"] = @-66568L;
	context[@"kExtAudioFileError_AsyncWriteTooLarge"] = @-66569L;
	context[@"kExtAudioFileError_AsyncWriteBufferOverflow"] = @-66570L;

	context[@"kExtAudioFileError_CodecUnavailableInputConsumed"] = @-66559L;
	context[@"kExtAudioFileError_CodecUnavailableInputNotConsumed"] = @-66560L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_ExtendedAudioFile_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
