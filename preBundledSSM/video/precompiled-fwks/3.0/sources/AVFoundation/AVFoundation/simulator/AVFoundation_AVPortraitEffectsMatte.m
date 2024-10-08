#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVPortraitEffectsMatte (Exports)
-(id) jsportraitEffectsMatteByReplacingPortraitEffectsMatteWithPixelBuffer: (id) pixelBuffer error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [self portraitEffectsMatteByReplacingPortraitEffectsMatteWithPixelBuffer: pixelBuffer error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
+(id) jsportraitEffectsMatteFromDictionaryRepresentation: (NSDictionary *) imageSourceAuxDataInfoDictionary error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [self portraitEffectsMatteFromDictionaryRepresentation: imageSourceAuxDataInfoDictionary error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVPortraitEffectsMatte class], @protocol(AVPortraitEffectsMatteInstanceExports));
	class_addProtocol([AVPortraitEffectsMatte class], @protocol(AVPortraitEffectsMatteClassExports));
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
void load_AVFoundation_AVPortraitEffectsMatte_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
