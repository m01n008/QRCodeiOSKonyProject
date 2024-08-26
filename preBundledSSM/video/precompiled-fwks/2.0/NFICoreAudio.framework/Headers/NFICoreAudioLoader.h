#import <JavaScriptCore/JavaScriptCore.h>

void loadNFICoreAudioModules(JSContext* context);
JSValue* extractNFICoreAudioStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFICoreAudioStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
