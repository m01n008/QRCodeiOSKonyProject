#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSDataAsset (Exports)
-(id) jsinitWithName: (NSString *) name 
{
	id resultVal__;
	resultVal__ = [[self initWithName: name ] autorelease];
	return resultVal__;
}
-(id) jsinitWithName: (NSString *) name bundle: (NSBundle *) bundle 
{
	id resultVal__;
	resultVal__ = [[self initWithName: name bundle: bundle ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSDataAsset class], @protocol(NSDataAssetInstanceExports));
	class_addProtocol([NSDataAsset class], @protocol(NSDataAssetClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_NSDataAsset_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
