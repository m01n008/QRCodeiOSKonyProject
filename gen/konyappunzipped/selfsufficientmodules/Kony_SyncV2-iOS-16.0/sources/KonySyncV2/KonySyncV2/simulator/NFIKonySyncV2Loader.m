#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFIKonySyncV2Modules(JSContext* context)
{
	load_KonySyncV2_ApplicationSync_symbols(context);
	load_KonySyncV2_SDKObjectSync_symbols(context);
	load_KonySyncV2_SDKObjectServiceSync_symbols(context);
}

JSValue* extractNFIKonySyncV2StructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
    
    return nil;
}

BOOL setNFIKonySyncV2StructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
    
    return NO;
}

