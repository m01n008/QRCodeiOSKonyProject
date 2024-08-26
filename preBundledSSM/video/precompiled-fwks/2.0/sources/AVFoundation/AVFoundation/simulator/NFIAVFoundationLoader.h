#import <JavaScriptCore/JavaScriptCore.h>

void loadNFIAVFoundationModules(JSContext* context);
JSValue* extractNFIAVFoundationStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFIAVFoundationStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
