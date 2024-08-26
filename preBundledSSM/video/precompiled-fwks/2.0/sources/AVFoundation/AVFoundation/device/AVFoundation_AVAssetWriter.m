#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAssetWriter (Exports)
-(void) jsfinishWritingWithCompletionHandler: (JSValue *) handler 
{
	void (^ handler_)(void) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void() {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self finishWritingWithCompletionHandler: handler_ ];
}
-(id) jsinitWithURL: (NSURL *) outputURL fileType: (AVFileType) outputFileType error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithURL: outputURL fileType: outputFileType error: &outError_ ] autorelease];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
+(id) jsassetWriterWithURL: (NSURL *) outputURL fileType: (AVFileType) outputFileType error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [self assetWriterWithURL: outputURL fileType: outputFileType error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
@implementation AVAssetWriterInputGroup (Exports)
-(id) jsinitWithInputs: (NSArray *) inputs defaultInput: (AVAssetWriterInput *) defaultInput 
{
	id resultVal__;
	resultVal__ = [[self initWithInputs: inputs defaultInput: defaultInput ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAssetWriter class], @protocol(AVAssetWriterAVAssetWriterInputGroupsCategoryInstanceExports));
	class_addProtocol([AVAssetWriter class], @protocol(AVAssetWriterAVAssetWriterInputGroupsCategoryClassExports));
	class_addProtocol([AVAssetWriter class], @protocol(AVAssetWriterAVAssetWriterFileTypeSpecificPropertiesCategoryInstanceExports));
	class_addProtocol([AVAssetWriter class], @protocol(AVAssetWriterAVAssetWriterFileTypeSpecificPropertiesCategoryClassExports));
	class_addProtocol([AVAssetWriter class], @protocol(AVAssetWriterInstanceExports));
	class_addProtocol([AVAssetWriter class], @protocol(AVAssetWriterClassExports));
	class_addProtocol([AVAssetWriterInputGroup class], @protocol(AVAssetWriterInputGroupInstanceExports));
	class_addProtocol([AVAssetWriterInputGroup class], @protocol(AVAssetWriterInputGroupClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVAssetWriterStatusUnknown"] = @0;
	context[@"AVAssetWriterStatusWriting"] = @1;
	context[@"AVAssetWriterStatusCompleted"] = @2;
	context[@"AVAssetWriterStatusFailed"] = @3;
	context[@"AVAssetWriterStatusCancelled"] = @4;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVAssetWriter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
