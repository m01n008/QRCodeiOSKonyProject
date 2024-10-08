#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSTimeZone (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
@implementation NSTimeZone (NSTimeZoneNSTimeZoneCreationCategoryExports)
-(id) jsinitWithName: (NSString *) tzName 
{
	id resultVal__;
	resultVal__ = [[self initWithName: tzName ] autorelease];
	return resultVal__;
}
-(id) jsinitWithName: (NSString *) tzName data: (NSData *) aData 
{
	id resultVal__;
	resultVal__ = [[self initWithName: tzName data: aData ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSTimeZone class], @protocol(NSTimeZoneInstanceExports));
	class_addProtocol([NSTimeZone class], @protocol(NSTimeZoneClassExports));
	class_addProtocol([NSTimeZone class], @protocol(NSTimeZoneNSExtendedTimeZoneCategoryInstanceExports));
	class_addProtocol([NSTimeZone class], @protocol(NSTimeZoneNSExtendedTimeZoneCategoryClassExports));
	class_addProtocol([NSTimeZone class], @protocol(NSTimeZoneNSTimeZoneCreationCategoryInstanceExports));
	class_addProtocol([NSTimeZone class], @protocol(NSTimeZoneNSTimeZoneCreationCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{

	context[@"NSTimeZoneNameStyleStandard"] = @0L;
	context[@"NSTimeZoneNameStyleShortStandard"] = @1L;
	context[@"NSTimeZoneNameStyleDaylightSaving"] = @2L;
	context[@"NSTimeZoneNameStyleShortDaylightSaving"] = @3L;
	context[@"NSTimeZoneNameStyleGeneric"] = @4L;
	context[@"NSTimeZoneNameStyleShortGeneric"] = @5L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSSystemTimeZoneDidChangeNotification;
	if (p != NULL) context[@"NSSystemTimeZoneDidChangeNotification"] = NSSystemTimeZoneDidChangeNotification;
}
void load_Foundation_NSTimeZone_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
