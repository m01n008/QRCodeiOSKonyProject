#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation MTLSharedEventListener (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
@end
@implementation MTLSharedEventHandle (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([MTLSharedEventListener class], @protocol(MTLSharedEventListenerInstanceExports));
	class_addProtocol([MTLSharedEventListener class], @protocol(MTLSharedEventListenerClassExports));
	class_addProtocol([MTLSharedEventHandle class], @protocol(MTLSharedEventHandleInstanceExports));
	class_addProtocol([MTLSharedEventHandle class], @protocol(MTLSharedEventHandleClassExports));
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
void Metal_MTLEventProtocols()
{
	(void)@protocol(MTLEvent);
	(void)@protocol(MTLSharedEvent);
}
void load_Metal_MTLEvent_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
