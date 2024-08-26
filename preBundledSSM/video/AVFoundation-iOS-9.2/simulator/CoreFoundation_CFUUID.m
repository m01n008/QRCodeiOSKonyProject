#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreFoundation_CFUUID)
+(JSValue*) valueWithCFUUIDBytes: (CFUUIDBytes) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"byte0": @(s.byte0),
		@"byte1": @(s.byte1),
		@"byte2": @(s.byte2),
		@"byte3": @(s.byte3),
		@"byte4": @(s.byte4),
		@"byte5": @(s.byte5),
		@"byte6": @(s.byte6),
		@"byte7": @(s.byte7),
		@"byte8": @(s.byte8),
		@"byte9": @(s.byte9),
		@"byte10": @(s.byte10),
		@"byte11": @(s.byte11),
		@"byte12": @(s.byte12),
		@"byte13": @(s.byte13),
		@"byte14": @(s.byte14),
		@"byte15": @(s.byte15),
	} inContext: context];
}
-(CFUUIDBytes) toCFUUIDBytes {
	return (CFUUIDBytes) {
		(UInt8) [self[@"byte0"] toUInt32],
		(UInt8) [self[@"byte1"] toUInt32],
		(UInt8) [self[@"byte2"] toUInt32],
		(UInt8) [self[@"byte3"] toUInt32],
		(UInt8) [self[@"byte4"] toUInt32],
		(UInt8) [self[@"byte5"] toUInt32],
		(UInt8) [self[@"byte6"] toUInt32],
		(UInt8) [self[@"byte7"] toUInt32],
		(UInt8) [self[@"byte8"] toUInt32],
		(UInt8) [self[@"byte9"] toUInt32],
		(UInt8) [self[@"byte10"] toUInt32],
		(UInt8) [self[@"byte11"] toUInt32],
		(UInt8) [self[@"byte12"] toUInt32],
		(UInt8) [self[@"byte13"] toUInt32],
		(UInt8) [self[@"byte14"] toUInt32],
		(UInt8) [self[@"byte15"] toUInt32],
	};
}
@end
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFUUID_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
