#import <JavaScriptCore/JavaScriptCore.h>

void loadNFIAudioToolboxModules(JSContext* context);
JSValue* extractNFIAudioToolboxStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFIAudioToolboxStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
