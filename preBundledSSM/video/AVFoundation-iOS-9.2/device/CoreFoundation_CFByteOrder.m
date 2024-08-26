#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreFoundation_CFByteOrder)
+(JSValue*) valueWithCFSwappedFloat32: (CFSwappedFloat32) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"v": @(s.v),
	} inContext: context];
}
-(CFSwappedFloat32) toCFSwappedFloat32 {
	return (CFSwappedFloat32) {
		(uint32_t) [self[@"v"] toUInt32],
	};
}
+(JSValue*) valueWithCFSwappedFloat64: (CFSwappedFloat64) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"v": @(s.v),
	} inContext: context];
}
-(CFSwappedFloat64) toCFSwappedFloat64 {
	return (CFSwappedFloat64) {
		(uint64_t) [self[@"v"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"CFByteOrderUnknown"] = @0;
	context[@"CFByteOrderLittleEndian"] = @1;
	context[@"CFByteOrderBigEndian"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFByteOrder_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
