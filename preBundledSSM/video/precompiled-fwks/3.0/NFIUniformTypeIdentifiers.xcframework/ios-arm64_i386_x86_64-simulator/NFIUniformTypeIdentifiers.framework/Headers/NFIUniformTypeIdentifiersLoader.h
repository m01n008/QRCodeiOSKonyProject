#import <JavaScriptCore/JavaScriptCore.h>

void loadNFIUniformTypeIdentifiersModules(JSContext* context);
JSValue* extractNFIUniformTypeIdentifiersStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFIUniformTypeIdentifiersStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
