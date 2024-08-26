#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSOrderedCollectionChange (Exports)
-(id) jsinitWithObject: (id) anObject type: (NSCollectionChangeType) type index: (NSUInteger) index 
{
	id resultVal__;
	resultVal__ = [[self initWithObject: anObject type: type index: index ] autorelease];
	return resultVal__;
}
-(id) jsinitWithObject: (id) anObject type: (NSCollectionChangeType) type index: (NSUInteger) index associatedIndex: (NSUInteger) associatedIndex 
{
	id resultVal__;
	resultVal__ = [[self initWithObject: anObject type: type index: index associatedIndex: associatedIndex ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSOrderedCollectionChange class], @protocol(NSOrderedCollectionChangeInstanceExports));
	class_addProtocol([NSOrderedCollectionChange class], @protocol(NSOrderedCollectionChangeClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSCollectionChangeInsert"] = @0L;
	context[@"NSCollectionChangeRemove"] = @1L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSOrderedCollectionChange_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
