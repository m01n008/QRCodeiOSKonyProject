#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVPlayerItemMetadataCollector (Exports)
-(id) jsinitWithIdentifiers: (NSArray *) identifiers classifyingLabels: (NSArray *) classifyingLabels 
{
	id resultVal__;
	resultVal__ = [[self initWithIdentifiers: identifiers classifyingLabels: classifyingLabels ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVPlayerItemMetadataCollector class], @protocol(AVPlayerItemMetadataCollectorInstanceExports));
	class_addProtocol([AVPlayerItemMetadataCollector class], @protocol(AVPlayerItemMetadataCollectorClassExports));
	class_addProtocol([AVPlayerItemMediaDataCollector class], @protocol(AVPlayerItemMediaDataCollectorInstanceExports));
	class_addProtocol([AVPlayerItemMediaDataCollector class], @protocol(AVPlayerItemMediaDataCollectorClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void AVFoundation_AVPlayerItemMediaDataCollectorProtocols()
{
	(void)@protocol(AVPlayerItemMetadataCollectorPushDelegate);
}
void load_AVFoundation_AVPlayerItemMediaDataCollector_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
