#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFIBinaryModules(JSContext* context)
{
	load_Binary_BinaryFileStorageInterface_symbols(context);
}

JSValue* extractNFIBinaryStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
    
    return nil;
}

BOOL setNFIBinaryStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
    
    return NO;
}

