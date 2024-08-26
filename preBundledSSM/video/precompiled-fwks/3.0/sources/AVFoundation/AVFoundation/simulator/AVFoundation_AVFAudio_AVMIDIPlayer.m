#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVMIDIPlayer (Exports)
-(id) jsinitWithData: (NSData *) data soundBankURL: (NSURL *) bankURL error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithData: data soundBankURL: bankURL error: &outError_ ] autorelease];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(void) jsplay: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(void) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void() {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self play: completionHandler_ ];
}
-(id) jsinitWithContentsOfURL: (NSURL *) inURL soundBankURL: (NSURL *) bankURL error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithContentsOfURL: inURL soundBankURL: bankURL error: &outError_ ] autorelease];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVMIDIPlayer class], @protocol(AVMIDIPlayerInstanceExports));
	class_addProtocol([AVMIDIPlayer class], @protocol(AVMIDIPlayerClassExports));
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
void load_AVFoundation_AVFAudio_AVMIDIPlayer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
