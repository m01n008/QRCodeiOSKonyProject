#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation CIWarpKernel (Exports)
-(CIImage *) jsapplyWithExtent: (CGRect) extent roiCallback: (JSValue *) callback inputImage: (CIImage *) image arguments: (NSArray *) args 
{
	CGRect (^ callback_)(int, CGRect) = nil;
	if (!callback.isUndefined) {
		callback_ = ^CGRect(int arg0, CGRect arg1) {
			JSContext* __jsContext = callback.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithRect: arg1 inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, callback, self, parameters);
			return [result toRect];
		};
	}
	CIImage * resultVal__;
	resultVal__ = [self applyWithExtent: extent roiCallback: callback_ inputImage: image arguments: args ];
	return resultVal__;
}
@end
@implementation CIKernel (Exports)
-(CIImage *) jsapplyWithExtent: (CGRect) extent roiCallback: (JSValue *) callback arguments: (NSArray *) args 
{
	CGRect (^ callback_)(int, CGRect) = nil;
	if (!callback.isUndefined) {
		callback_ = ^CGRect(int arg0, CGRect arg1) {
			JSContext* __jsContext = callback.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithRect: arg1 inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, callback, self, parameters);
			return [result toRect];
		};
	}
	CIImage * resultVal__;
	resultVal__ = [self applyWithExtent: extent roiCallback: callback_ arguments: args ];
	return resultVal__;
}
-(void) jssetROISelector: (NSString *) method 
{
	SEL method_ = NSSelectorFromString(method);
	[self setROISelector: method_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([CIWarpKernel class], @protocol(CIWarpKernelInstanceExports));
	class_addProtocol([CIWarpKernel class], @protocol(CIWarpKernelClassExports));
	class_addProtocol([CIKernel class], @protocol(CIKernelInstanceExports));
	class_addProtocol([CIKernel class], @protocol(CIKernelClassExports));
	class_addProtocol([CIColorKernel class], @protocol(CIColorKernelInstanceExports));
	class_addProtocol([CIColorKernel class], @protocol(CIColorKernelClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreImage_CIKernel_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
