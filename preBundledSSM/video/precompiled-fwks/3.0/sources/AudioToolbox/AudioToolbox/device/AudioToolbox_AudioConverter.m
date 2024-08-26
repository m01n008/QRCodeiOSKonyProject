#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AudioToolbox_AudioConverter)
+(JSValue*) valueWithAudioConverterPrimeInfo: (AudioConverterPrimeInfo) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"leadingFrames": @(s.leadingFrames),
		@"trailingFrames": @(s.trailingFrames),
	} inContext: context];
}
-(AudioConverterPrimeInfo) toAudioConverterPrimeInfo {
	return (AudioConverterPrimeInfo) {
		(UInt32) [self[@"leadingFrames"] toDouble],
		(UInt32) [self[@"trailingFrames"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"AudioConverterDispose"] = ^OSStatus(id arg0) {
		return AudioConverterDispose(arg0);
	};
	context[@"AudioConverterReset"] = ^OSStatus(id arg0) {
		return AudioConverterReset(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAudioConverterPropertyMinimumInputBufferSize"] = @1835623027UL;
	context[@"kAudioConverterPropertyMinimumOutputBufferSize"] = @1836016243UL;
	context[@"kAudioConverterPropertyMaximumInputPacketSize"] = @2020175987UL;
	context[@"kAudioConverterPropertyMaximumOutputPacketSize"] = @2020569203UL;
	context[@"kAudioConverterPropertyCalculateInputBufferSize"] = @1667850867UL;
	context[@"kAudioConverterPropertyCalculateOutputBufferSize"] = @1668244083UL;
	context[@"kAudioConverterPropertyInputCodecParameters"] = @1768121456UL;
	context[@"kAudioConverterPropertyOutputCodecParameters"] = @1868784752UL;
	context[@"kAudioConverterSampleRateConverterComplexity"] = @1936876385UL;
	context[@"kAudioConverterSampleRateConverterQuality"] = @1936876401UL;
	context[@"kAudioConverterSampleRateConverterInitialPhase"] = @1936876400UL;
	context[@"kAudioConverterCodecQuality"] = @1667527029UL;
	context[@"kAudioConverterPrimeMethod"] = @1886547309UL;
	context[@"kAudioConverterPrimeInfo"] = @1886546285UL;
	context[@"kAudioConverterChannelMap"] = @1667788144UL;
	context[@"kAudioConverterDecompressionMagicCookie"] = @1684891491UL;
	context[@"kAudioConverterCompressionMagicCookie"] = @1668114275UL;
	context[@"kAudioConverterEncodeBitRate"] = @1651663220UL;
	context[@"kAudioConverterEncodeAdjustableSampleRate"] = @1634366322UL;
	context[@"kAudioConverterInputChannelLayout"] = @1768123424UL;
	context[@"kAudioConverterOutputChannelLayout"] = @1868786720UL;
	context[@"kAudioConverterApplicableEncodeBitRates"] = @1634034290UL;
	context[@"kAudioConverterAvailableEncodeBitRates"] = @1986355826UL;
	context[@"kAudioConverterApplicableEncodeSampleRates"] = @1634038642UL;
	context[@"kAudioConverterAvailableEncodeSampleRates"] = @1986360178UL;
	context[@"kAudioConverterAvailableEncodeChannelLayoutTags"] = @1634034540UL;
	context[@"kAudioConverterCurrentOutputStreamDescription"] = @1633906532UL;
	context[@"kAudioConverterCurrentInputStreamDescription"] = @1633904996UL;
	context[@"kAudioConverterPropertySettings"] = @1633906803UL;
	context[@"kAudioConverterPropertyBitDepthHint"] = @1633903204UL;
	context[@"kAudioConverterPropertyFormatList"] = @1718383476UL;

	context[@"kAudioConverterQuality_Max"] = @127UL;
	context[@"kAudioConverterQuality_High"] = @96UL;
	context[@"kAudioConverterQuality_Medium"] = @64UL;
	context[@"kAudioConverterQuality_Low"] = @32UL;
	context[@"kAudioConverterQuality_Min"] = @0UL;

	context[@"kAudioConverterSampleRateConverterComplexity_Linear"] = @1818848869UL;
	context[@"kAudioConverterSampleRateConverterComplexity_Normal"] = @1852797549UL;
	context[@"kAudioConverterSampleRateConverterComplexity_Mastering"] = @1650553971UL;
	context[@"kAudioConverterSampleRateConverterComplexity_MinimumPhase"] = @1835626096UL;

	context[@"kConverterPrimeMethod_Pre"] = @0UL;
	context[@"kConverterPrimeMethod_Normal"] = @1UL;
	context[@"kConverterPrimeMethod_None"] = @2UL;

	context[@"kAudioConverterErr_FormatNotSupported"] = @1718449215L;
	context[@"kAudioConverterErr_OperationNotSupported"] = @1869627199L;
	context[@"kAudioConverterErr_PropertyNotSupported"] = @1886547824L;
	context[@"kAudioConverterErr_InvalidInputSize"] = @1768846202L;
	context[@"kAudioConverterErr_InvalidOutputSize"] = @1869902714L;
	context[@"kAudioConverterErr_UnspecifiedError"] = @2003329396L;
	context[@"kAudioConverterErr_BadPropertySizeError"] = @561211770L;
	context[@"kAudioConverterErr_RequiresPacketDescriptionsError"] = @561015652L;
	context[@"kAudioConverterErr_InputSampleRateOutOfRange"] = @560558962L;
	context[@"kAudioConverterErr_OutputSampleRateOutOfRange"] = @560952178L;

	context[@"kAudioConverterErr_HardwareInUse"] = @1752656245L;
	context[@"kAudioConverterErr_NoHardwarePermission"] = @1885696621L;

	context[@"kAudioConverterPropertyMaximumInputBufferSize"] = @2020172403UL;
	context[@"kAudioConverterSampleRateConverterAlgorithm"] = @1936876393UL;

	context[@"kAudioConverterPropertyCanResumeFromInterruption"] = @1668441705UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AudioConverter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
