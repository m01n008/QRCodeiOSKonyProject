
#import <CoreComponent/RuntimeObject.h>
#import <CoreComponent/JSWidget.h>
#import "WebWidgetProxy.h"
#import <CoreComponent/KonyBoolean.h>

/** Proxy object which we will registering as "Button" to the Javscript world */

@interface JSWebWidget : JSWidget {
    
}

- (KonyBoolean *) canGoBack:(NSArray*) arguments;
- (KonyBoolean *) canGoForward:(NSArray*) arguments;
- (void) reload:(NSArray*) arguments;
- (void) goBack:(NSArray*) arguments;
- (void) goForward:(NSArray*) arguments;
- (void) clearHistory:(NSArray*) arguments;
- (void) loadData:(NSArray*) arguments;
- (NSString *)evaluateJavaScript:(NSArray*)arguments;
- (void)evaluateJavaScriptAsync:(NSArray*)arguments;

@end
