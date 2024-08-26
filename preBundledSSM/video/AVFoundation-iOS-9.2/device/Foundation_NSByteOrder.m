#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (Foundation_NSByteOrder)
+(JSValue*) valueWithNSSwappedDouble: (NSSwappedDouble) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"v": @(s.v),
	} inContext: context];
}
-(NSSwappedDouble) toNSSwappedDouble {
	return (NSSwappedDouble) {
		(unsigned long long) [self[@"v"] toDouble],
	};
}
+(JSValue*) valueWithNSSwappedFloat: (NSSwappedFloat) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"v": @(s.v),
	} inContext: context];
}
-(NSSwappedFloat) toNSSwappedFloat {
	return (NSSwappedFloat) {
		(unsigned int) [self[@"v"] toUInt32],
	};
}
@end
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NS_UnknownByteOrder"] = @0;
	context[@"NS_LittleEndian"] = @1;
	context[@"NS_BigEndian"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSByteOrder_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
