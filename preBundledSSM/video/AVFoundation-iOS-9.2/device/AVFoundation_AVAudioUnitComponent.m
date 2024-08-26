#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioUnitComponentManager (Exports)
-(NSArray *) jscomponentsPassingTest: (JSValue *) testHandler 
{
	BOOL (^ testHandler_)(AVAudioUnitComponent * , BOOL * ) = nil;
	if (!testHandler.isUndefined) {
		testHandler_ = ^BOOL(AVAudioUnitComponent * arg0, BOOL * arg1) {
			JSContext* __jsContext = testHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg1] inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, testHandler, self, parameters);
			return [result toInt32];
		};
	}
	NSArray * resultVal__;
	resultVal__ = [self componentsPassingTest: testHandler_ ];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioUnitComponent class], @protocol(AVAudioUnitComponentInstanceExports));
	class_addProtocol([AVAudioUnitComponent class], @protocol(AVAudioUnitComponentClassExports));
	class_addProtocol([AVAudioUnitComponentManager class], @protocol(AVAudioUnitComponentManagerInstanceExports));
	class_addProtocol([AVAudioUnitComponentManager class], @protocol(AVAudioUnitComponentManagerClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVAudioUnitTypeFormatConverter;
	if (p != NULL) context[@"AVAudioUnitTypeFormatConverter"] = AVAudioUnitTypeFormatConverter;
	p = (void*) &AVAudioUnitTypeMusicDevice;
	if (p != NULL) context[@"AVAudioUnitTypeMusicDevice"] = AVAudioUnitTypeMusicDevice;
	p = (void*) &AVAudioUnitTypeOutput;
	if (p != NULL) context[@"AVAudioUnitTypeOutput"] = AVAudioUnitTypeOutput;
	p = (void*) &AVAudioUnitComponentTagsDidChangeNotification;
	if (p != NULL) context[@"AVAudioUnitComponentTagsDidChangeNotification"] = AVAudioUnitComponentTagsDidChangeNotification;
	p = (void*) &AVAudioUnitTypeMIDIProcessor;
	if (p != NULL) context[@"AVAudioUnitTypeMIDIProcessor"] = AVAudioUnitTypeMIDIProcessor;
	p = (void*) &AVAudioUnitTypeMixer;
	if (p != NULL) context[@"AVAudioUnitTypeMixer"] = AVAudioUnitTypeMixer;
	p = (void*) &AVAudioUnitTypeEffect;
	if (p != NULL) context[@"AVAudioUnitTypeEffect"] = AVAudioUnitTypeEffect;
	p = (void*) &AVAudioUnitTypeOfflineEffect;
	if (p != NULL) context[@"AVAudioUnitTypeOfflineEffect"] = AVAudioUnitTypeOfflineEffect;
	p = (void*) &AVAudioUnitTypeMusicEffect;
	if (p != NULL) context[@"AVAudioUnitTypeMusicEffect"] = AVAudioUnitTypeMusicEffect;
	p = (void*) &AVAudioUnitTypeGenerator;
	if (p != NULL) context[@"AVAudioUnitTypeGenerator"] = AVAudioUnitTypeGenerator;
	p = (void*) &AVAudioUnitManufacturerNameApple;
	if (p != NULL) context[@"AVAudioUnitManufacturerNameApple"] = AVAudioUnitManufacturerNameApple;
	p = (void*) &AVAudioUnitTypePanner;
	if (p != NULL) context[@"AVAudioUnitTypePanner"] = AVAudioUnitTypePanner;
}
void load_AVFoundation_AVAudioUnitComponent_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
