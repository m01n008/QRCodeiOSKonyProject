#import <JavaScriptCore/JavaScriptCore.h>

void loadNFIQuartzCoreModules(JSContext* context);
JSValue* extractNFIQuartzCoreStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFIQuartzCoreStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
