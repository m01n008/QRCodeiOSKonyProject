#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFISecurityModules(JSContext* context)
{
	load_Security_SecKey_symbols(context);
	load_Security_SecCertificate_symbols(context);
	load_Security_SecProtocolObject_symbols(context);
	load_Security_SecAccessControl_symbols(context);
	load_Security_SecItem_symbols(context);
	load_Security_SecBase_symbols(context);
	load_Security_SecProtocolTypes_symbols(context);
	load_Security_SecImportExport_symbols(context);
	load_Security_SecSharedCredential_symbols(context);
	load_Security_SecProtocolOptions_symbols(context);
	load_Security_SecTrust_symbols(context);
	load_Security_SecRandom_symbols(context);
	load_Security_SecIdentity_symbols(context);
	load_Security_SecPolicy_symbols(context);
	load_Security_SecProtocolMetadata_symbols(context);
	load_Security_CipherSuite_symbols(context);
}

JSValue* extractNFISecurityStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
    
    return nil;
}

BOOL setNFISecurityStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
    
    return NO;
}

