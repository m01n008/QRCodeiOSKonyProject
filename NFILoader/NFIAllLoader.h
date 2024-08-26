#ifndef NFIAllLoader_h
#define NFIAllLoader_h

#import <JavaScriptCore/JavaScriptCore.h>

void loadAllModules(JSContext* context);
JSValue* extractStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
void setStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);

#endif /* NFIAllLoader_h */
