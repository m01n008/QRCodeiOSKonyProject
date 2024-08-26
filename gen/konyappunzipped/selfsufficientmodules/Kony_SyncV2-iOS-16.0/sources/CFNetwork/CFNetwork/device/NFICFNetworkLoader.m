#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFICFNetworkModules(JSContext* context)
{
	load_CFNetwork_CFHost_symbols(context);
	load_CFNetwork_CFNetServices_symbols(context);
	load_CFNetwork_CFSocketStream_symbols(context);
	load_CFNetwork_CFFTPStream_symbols(context);
	load_CFNetwork_CFHTTPMessage_symbols(context);
	load_CFNetwork_CFHTTPStream_symbols(context);
	load_CFNetwork_CFHTTPAuthentication_symbols(context);
	load_CFNetwork_CFNetDiagnostics_symbols(context);
	load_CFNetwork_CFProxySupport_symbols(context);
	load_CFNetwork_CFNetworkErrors_symbols(context);
}

JSValue* extractNFICFNetworkStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
    
    return nil;
}

BOOL setNFICFNetworkStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
    
    return NO;
}

