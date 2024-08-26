#import <JavaScriptCore/JavaScriptCore.h>

void loadNFIKonySyncV2Modules(JSContext* context);
JSValue* extractNFIKonySyncV2StructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFIKonySyncV2StructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
