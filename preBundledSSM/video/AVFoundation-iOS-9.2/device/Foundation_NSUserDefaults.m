#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSUserDefaults (Exports)
-(id) jsinitWithSuiteName: (NSString *) suitename 
{
	id resultVal__;
	resultVal__ = [[self initWithSuiteName: suitename ] autorelease];
	return resultVal__;
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jsinitWithUser: (NSString *) username 
{
	id resultVal__;
	resultVal__ = [[self initWithUser: username ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSUserDefaults class], @protocol(NSUserDefaultsInstanceExports));
	class_addProtocol([NSUserDefaults class], @protocol(NSUserDefaultsClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSArgumentDomain;
	if (p != NULL) context[@"NSArgumentDomain"] = NSArgumentDomain;
	p = (void*) &NSUserDefaultsDidChangeNotification;
	if (p != NULL) context[@"NSUserDefaultsDidChangeNotification"] = NSUserDefaultsDidChangeNotification;
	p = (void*) &NSRegistrationDomain;
	if (p != NULL) context[@"NSRegistrationDomain"] = NSRegistrationDomain;
	p = (void*) &NSGlobalDomain;
	if (p != NULL) context[@"NSGlobalDomain"] = NSGlobalDomain;
}
void load_Foundation_NSUserDefaults_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
