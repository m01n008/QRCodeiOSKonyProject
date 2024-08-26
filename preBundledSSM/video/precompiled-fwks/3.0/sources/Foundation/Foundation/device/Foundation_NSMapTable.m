#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSMapTable (Exports)
-(id) jsinitWithKeyPointerFunctions: (NSPointerFunctions *) keyFunctions valuePointerFunctions: (NSPointerFunctions *) valueFunctions capacity: (NSUInteger) initialCapacity 
{
	id resultVal__;
	resultVal__ = [[self initWithKeyPointerFunctions: keyFunctions valuePointerFunctions: valueFunctions capacity: initialCapacity ] autorelease];
	return resultVal__;
}
-(id) jsinitWithKeyOptions: (NSPointerFunctionsOptions) keyOptions valueOptions: (NSPointerFunctionsOptions) valueOptions capacity: (NSUInteger) initialCapacity 
{
	id resultVal__;
	resultVal__ = [[self initWithKeyOptions: keyOptions valueOptions: valueOptions capacity: initialCapacity ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSMapTable class], @protocol(NSMapTableInstanceExports));
	class_addProtocol([NSMapTable class], @protocol(NSMapTableClassExports));
}
static void registerCFunctions(JSContext* context)
{
	context[@"NSAllMapTableKeys"] = ^NSArray *(NSMapTable * arg0) {
		return NSAllMapTableKeys(arg0);
	};
	context[@"NSFreeMapTable"] = ^void(NSMapTable * arg0) {
		NSFreeMapTable(arg0);
	};
	context[@"NSStringFromMapTable"] = ^NSString *(NSMapTable * arg0) {
		return NSStringFromMapTable(arg0);
	};
	context[@"NSCompareMapTables"] = ^BOOL(NSMapTable * arg0, NSMapTable * arg1) {
		return NSCompareMapTables(arg0, arg1);
	};
	context[@"NSCountMapTable"] = ^NSUInteger(NSMapTable * arg0) {
		return NSCountMapTable(arg0);
	};
	context[@"NSAllMapTableValues"] = ^NSArray *(NSMapTable * arg0) {
		return NSAllMapTableValues(arg0);
	};
	context[@"NSResetMapTable"] = ^void(NSMapTable * arg0) {
		NSResetMapTable(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSMapTableObjectPointerPersonality;
	if (p != NULL) context[@"NSMapTableObjectPointerPersonality"] = @(NSMapTableObjectPointerPersonality);
	p = (void*) &NSMapTableStrongMemory;
	if (p != NULL) context[@"NSMapTableStrongMemory"] = @(NSMapTableStrongMemory);
	p = (void*) &NSMapTableWeakMemory;
	if (p != NULL) context[@"NSMapTableWeakMemory"] = @(NSMapTableWeakMemory);
	p = (void*) &NSMapTableCopyIn;
	if (p != NULL) context[@"NSMapTableCopyIn"] = @(NSMapTableCopyIn);
}
void load_Foundation_NSMapTable_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
