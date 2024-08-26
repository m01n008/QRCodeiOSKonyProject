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
	class_addProtocol([AVMutableAudioMix class], @protocol(AVMutableAudioMixInstanceExports));
	class_addProtocol([AVMutableAudioMix class], @protocol(AVMutableAudioMixClassExports));
	class_addProtocol([AVAudioMix class], @protocol(AVAudioMixInstanceExports));
	class_addProtocol([AVAudioMix class], @protocol(AVAudioMixClassExports));
	class_addProtocol([AVAudioMixInputParameters class], @protocol(AVAudioMixInputParametersInstanceExports));
	class_addProtocol([AVAudioMixInputParameters class], @protocol(AVAudioMixInputParametersClassExports));
	class_addProtocol([AVMutableAudioMixInputParameters class], @protocol(AVMutableAudioMixInputParametersInstanceExports));
	class_addProtocol([AVMutableAudioMixInputParameters class], @protocol(AVMutableAudioMixInputParametersClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVAudioMix_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
