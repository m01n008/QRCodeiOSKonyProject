#import "BridgeSupport.h"

#import "ClassExtension.h"

extern void loadAllModules(JSContext*);

static JSContext* mainContext;

@implementation BridgeSupport

+(void) addSupportTo: (JSContextRef) contextRef mainContext: (BOOL) m
{
    JSContext* context = [JSContext contextWithJSGlobalContextRef: (JSGlobalContextRef) contextRef];
    loadAllModules(context);
    
    context[@"objc"] = [ClassExtension class];
    if (m) {
        mainContext = [context retain];
    } else {
        context[@"objc"][@"newClass"] = nil;
    }
}

+(JSContext*) mainContext
{
    if (!mainContext) {
        mainContext = [[JSContext alloc] init];
    }
    
    return mainContext;
}

+(void) releaseJSContext{
    if(mainContext)
        [mainContext release];
}

@end

