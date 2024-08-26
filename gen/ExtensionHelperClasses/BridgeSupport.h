#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@interface BridgeSupport: NSObject

+(void) addSupportTo: (JSContextRef) context mainContext: (BOOL) m;
+(JSContext*) mainContext;

@end
