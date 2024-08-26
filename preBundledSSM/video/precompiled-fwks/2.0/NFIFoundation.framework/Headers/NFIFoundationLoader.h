#import <JavaScriptCore/JavaScriptCore.h>

void loadNFIFoundationModules(JSContext* context);
JSValue* extractNFIFoundationStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFIFoundationStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
