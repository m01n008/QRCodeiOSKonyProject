#import <JavaScriptCore/JavaScriptCore.h>

void loadNFICoreMIDIModules(JSContext* context);
JSValue* extractNFICoreMIDIStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFICoreMIDIStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
