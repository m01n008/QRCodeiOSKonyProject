#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSOrthography (Exports)
-(id) jsinitWithDominantScript: (NSString *) script languageMap: (NSDictionary *) map 
{
	id resultVal__;
	resultVal__ = [[self initWithDominantScript: script languageMap: map ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSOrthography class], @protocol(NSOrthographyInstanceExports));
	class_addProtocol([NSOrthography class], @protocol(NSOrthographyClassExports));
	class_addProtocol([NSOrthography class], @protocol(NSOrthographyNSOrthographyCreationCategoryInstanceExports));
	class_addProtocol([NSOrthography class], @protocol(NSOrthographyNSOrthographyCreationCategoryClassExports));
	class_addProtocol([NSOrthography class], @protocol(NSOrthographyNSOrthographyExtendedCategoryInstanceExports));
	class_addProtocol([NSOrthography class], @protocol(NSOrthographyNSOrthographyExtendedCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSOrthography_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
