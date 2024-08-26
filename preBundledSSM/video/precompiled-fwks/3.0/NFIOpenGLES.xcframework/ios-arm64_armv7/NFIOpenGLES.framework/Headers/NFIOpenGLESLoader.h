#import <JavaScriptCore/JavaScriptCore.h>

void loadNFIOpenGLESModules(JSContext* context);
JSValue* extractNFIOpenGLESStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFIOpenGLESStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
