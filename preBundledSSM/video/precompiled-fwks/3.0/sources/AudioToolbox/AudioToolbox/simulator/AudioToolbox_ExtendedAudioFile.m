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
	context[@"ExtAudioFileSeek"] = ^OSStatus(id arg0, SInt64 arg1) {
		return ExtAudioFileSeek(arg0, arg1);
	};
	context[@"ExtAudioFileDispose"] = ^OSStatus(id arg0) {
		return ExtAudioFileDispose(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kExtAudioFilePacketTableInfoOverride_UseFileValue"] = @-1;
	context[@"kExtAudioFilePacketTableInfoOverride_UseFileValueIfValid"] = @-2;

	context[@"kExtAudioFileProperty_FileDataFormat"] = @1717988724U;
	context[@"kExtAudioFileProperty_FileChannelLayout"] = @1717791855U;
	context[@"kExtAudioFileProperty_ClientDataFormat"] = @1667657076U;
	context[@"kExtAudioFileProperty_ClientChannelLayout"] = @1667460207U;
	context[@"kExtAudioFileProperty_CodecManufacturer"] = @1668112750U;
	context[@"kExtAudioFileProperty_AudioConverter"] = @1633906294U;
	context[@"kExtAudioFileProperty_AudioFile"] = @1634101612U;
	context[@"kExtAudioFileProperty_FileMaxPacketSize"] = @1718448243U;
	context[@"kExtAudioFileProperty_ClientMaxPacketSize"] = @1668116595U;
	context[@"kExtAudioFileProperty_FileLengthFrames"] = @593916525U;
	context[@"kExtAudioFileProperty_ConverterConfig"] = @1633903462U;
	context[@"kExtAudioFileProperty_IOBufferSizeBytes"] = @1768907379U;
	context[@"kExtAudioFileProperty_IOBuffer"] = @1768907366U;
	context[@"kExtAudioFileProperty_PacketTable"] = @2020635753U;

	context[@"kExtAudioFileError_InvalidProperty"] = @-66561;
	context[@"kExtAudioFileError_InvalidPropertySize"] = @-66562;
	context[@"kExtAudioFileError_NonPCMClientFormat"] = @-66563;
	context[@"kExtAudioFileError_InvalidChannelMap"] = @-66564;
	context[@"kExtAudioFileError_InvalidOperationOrder"] = @-66565;
	context[@"kExtAudioFileError_InvalidDataFormat"] = @-66566;
	context[@"kExtAudioFileError_MaxPacketSizeUnknown"] = @-66567;
	context[@"kExtAudioFileError_InvalidSeek"] = @-66568;
	context[@"kExtAudioFileError_AsyncWriteTooLarge"] = @-66569;
	context[@"kExtAudioFileError_AsyncWriteBufferOverflow"] = @-66570;

	context[@"kExtAudioFileError_CodecUnavailableInputConsumed"] = @-66559;
	context[@"kExtAudioFileError_CodecUnavailableInputNotConsumed"] = @-66560;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_ExtendedAudioFile_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
