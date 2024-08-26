#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFISDKCommonsModules(JSContext* context)
{
	load_SDKCommons_KNYHTTPMessageIntegrityManager_symbols(context);
	load_SDKCommons_KNYClientCertificatesManager_symbols(context);
	load_SDKCommons_KNYGlobalRequestParams_symbols(context);
}

JSValue* extractNFISDKCommonsStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
    
    return nil;
}

BOOL setNFISDKCommonsStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
    
    return NO;
}

