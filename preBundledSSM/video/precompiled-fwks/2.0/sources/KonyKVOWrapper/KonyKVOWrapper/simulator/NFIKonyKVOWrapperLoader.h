#import <JavaScriptCore/JavaScriptCore.h>

void loadNFIKonyKVOWrapperModules(JSContext* context);
JSValue* extractNFIKonyKVOWrapperStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFIKonyKVOWrapperStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
