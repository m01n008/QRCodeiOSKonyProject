#import <JavaScriptCore/JavaScriptCore.h>

void loadNFIMediaToolboxModules(JSContext* context);
JSValue* extractNFIMediaToolboxStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFIMediaToolboxStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
