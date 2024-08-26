#import <JavaScriptCore/JavaScriptCore.h>

void loadNFIMetalModules(JSContext* context);
JSValue* extractNFIMetalStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFIMetalStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
