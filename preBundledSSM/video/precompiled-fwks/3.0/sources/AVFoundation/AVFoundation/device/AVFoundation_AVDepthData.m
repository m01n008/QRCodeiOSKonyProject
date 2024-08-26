#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVDepthData (Exports)
-(id) jsdepthDataByReplacingDepthDataMapWithPixelBuffer: (id) pixelBuffer error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [self depthDataByReplacingDepthDataMapWithPixelBuffer: pixelBuffer error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
+(id) jsdepthDataFromDictionaryRepresentation: (NSDictionary *) imageSourceAuxDataInfoDictionary error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [self depthDataFromDictionaryRepresentation: imageSourceAuxDataInfoDictionary error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVDepthData class], @protocol(AVDepthDataInstanceExports));
	class_addProtocol([AVDepthData class], @protocol(AVDepthDataClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVDepthDataQualityLow"] = @0;
	context[@"AVDepthDataQualityHigh"] = @1;

	context[@"AVDepthDataAccuracyRelative"] = @0;
	context[@"AVDepthDataAccuracyAbsolute"] = @1;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVDepthData_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
