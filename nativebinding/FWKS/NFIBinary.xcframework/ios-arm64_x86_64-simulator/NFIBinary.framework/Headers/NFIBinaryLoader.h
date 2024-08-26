#import <JavaScriptCore/JavaScriptCore.h>

void loadNFIBinaryModules(JSContext* context);
JSValue* extractNFIBinaryStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFIBinaryStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
