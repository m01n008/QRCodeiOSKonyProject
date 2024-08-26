#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFIKonyKVOWrapperModules(JSContext* context)
{
	load_KonyKVOWrapper_NSObject_KonyKVOWrapper_symbols(context);
}

JSValue* extractNFIKonyKVOWrapperStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
    
    return nil;
}

BOOL setNFIKonyKVOWrapperStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
    
    return NO;
}

