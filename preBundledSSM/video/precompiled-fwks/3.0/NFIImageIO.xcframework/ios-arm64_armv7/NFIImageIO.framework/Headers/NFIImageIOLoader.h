#import <JavaScriptCore/JavaScriptCore.h>

void loadNFIImageIOModules(JSContext* context);
JSValue* extractNFIImageIOStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFIImageIOStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
