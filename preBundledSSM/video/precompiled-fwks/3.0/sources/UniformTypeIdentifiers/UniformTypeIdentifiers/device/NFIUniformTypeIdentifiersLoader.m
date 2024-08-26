#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFIUniformTypeIdentifiersModules(JSContext* context)
{
	load_UniformTypeIdentifiers_UTTagClass_symbols(context);
	load_UniformTypeIdentifiers_UTAdditions_symbols(context);
	load_UniformTypeIdentifiers_UTType_symbols(context);
	load_UniformTypeIdentifiers_UTCoreTypes_symbols(context);
}

JSValue* extractNFIUniformTypeIdentifiersStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
    
    return nil;
}

BOOL setNFIUniformTypeIdentifiersStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
    
    return NO;
}

