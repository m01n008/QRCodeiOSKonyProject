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
		(UInt32) [self[@"leadingFrames"] toUInt32],
		(UInt32) [self[@"trailingFrames"] toUInt32],
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
	context[@"kAudioConverterPropertyMinimumInputBufferSize"] = @1835623027U;
	context[@"kAudioConverterPropertyMinimumOutputBufferSize"] = @1836016243U;
	context[@"kAudioConverterPropertyMaximumInputBufferSize"] = @2020172403U;
	context[@"kAudioConverterPropertyMaximumInputPacketSize"] = @2020175987U;
	context[@"kAudioConverterPropertyMaximumOutputPacketSize"] = @2020569203U;
	context[@"kAudioConverterPropertyCalculateInputBufferSize"] = @1667850867U;
	context[@"kAudioConverterPropertyCalculateOutputBufferSize"] = @1668244083U;
	context[@"kAudioConverterPropertyInputCodecParameters"] = @1768121456U;
	context[@"kAudioConverterPropertyOutputCodecParameters"] = @1868784752U;
	context[@"kAudioConverterSampleRateConverterAlgorithm"] = @1936876393U;
	context[@"kAudioConverterSampleRateConverterComplexity"] = @1936876385U;
	context[@"kAudioConverterSampleRateConverterQuality"] = @1936876401U;
	context[@"kAudioConverterSampleRateConverterInitialPhase"] = @1936876400U;
	context[@"kAudioConverterCodecQuality"] = @1667527029U;
	context[@"kAudioConverterPrimeMethod"] = @1886547309U;
	context[@"kAudioConverterPrimeInfo"] = @1886546285U;
	context[@"kAudioConverterChannelMap"] = @1667788144U;
	context[@"kAudioConverterDecompressionMagicCookie"] = @1684891491U;
	context[@"kAudioConverterCompressionMagicCookie"] = @1668114275U;
	context[@"kAudioConverterEncodeBitRate"] = @1651663220U;
	context[@"kAudioConverterEncodeAdjustableSampleRate"] = @1634366322U;
	context[@"kAudioConverterInputChannelLayout"] = @1768123424U;
	context[@"kAudioConverterOutputChannelLayout"] = @1868786720U;
	context[@"kAudioConverterApplicableEncodeBitRates"] = @1634034290U;
	context[@"kAudioConverterAvailableEncodeBitRates"] = @1986355826U;
	context[@"kAudioConverterApplicableEncodeSampleRates"] = @1634038642U;
	context[@"kAudioConverterAvailableEncodeSampleRates"] = @1986360178U;
	context[@"kAudioConverterAvailableEncodeChannelLayoutTags"] = @1634034540U;
	context[@"kAudioConverterCurrentOutputStreamDescription"] = @1633906532U;
	context[@"kAudioConverterCurrentInputStreamDescription"] = @1633904996U;
	context[@"kAudioConverterPropertySettings"] = @1633906803U;
	context[@"kAudioConverterPropertyBitDepthHint"] = @1633903204U;
	context[@"kAudioConverterPropertyFormatList"] = @1718383476U;

	context[@"kAudioConverterPropertyCanResumeFromInterruption"] = @1668441705U;

	context[@"kAudioConverterQuality_Max"] = @127U;
	context[@"kAudioConverterQuality_High"] = @96U;
	context[@"kAudioConverterQuality_Medium"] = @64U;
	context[@"kAudioConverterQuality_Low"] = @32U;
	context[@"kAudioConverterQuality_Min"] = @0U;

	context[@"kAudioConverterSampleRateConverterComplexity_Linear"] = @1818848869U;
	context[@"kAudioConverterSampleRateConverterComplexity_Normal"] = @1852797549U;
	context[@"kAudioConverterSampleRateConverterComplexity_Mastering"] = @1650553971U;
	context[@"kAudioConverterSampleRateConverterComplexity_MinimumPhase"] = @1835626096U;

	context[@"kConverterPrimeMethod_Pre"] = @0U;
	context[@"kConverterPrimeMethod_Normal"] = @1U;
	context[@"kConverterPrimeMethod_None"] = @2U;

	context[@"kAudioConverterErr_FormatNotSupported"] = @1718449215;
	context[@"kAudioConverterErr_OperationNotSupported"] = @1869627199;
	context[@"kAudioConverterErr_PropertyNotSupported"] = @1886547824;
	context[@"kAudioConverterErr_InvalidInputSize"] = @1768846202;
	context[@"kAudioConverterErr_InvalidOutputSize"] = @1869902714;
	context[@"kAudioConverterErr_UnspecifiedError"] = @2003329396;
	context[@"kAudioConverterErr_BadPropertySizeError"] = @561211770;
	context[@"kAudioConverterErr_RequiresPacketDescriptionsError"] = @561015652;
	context[@"kAudioConverterErr_InputSampleRateOutOfRange"] = @560558962;
	context[@"kAudioConverterErr_OutputSampleRateOutOfRange"] = @560952178;

	context[@"kAudioConverterErr_HardwareInUse"] = @1752656245;
	context[@"kAudioConverterErr_NoHardwarePermission"] = @1885696621;

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
