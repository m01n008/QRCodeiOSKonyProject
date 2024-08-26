
#import <CoreComponent/BaseProxy.h>

@interface WebWidgetProxy : BaseProxy {
	
}

+(id) createWidget: (NSDictionary*) config;
-(BOOL) canGoBack;
-(BOOL) canGoForward;
- (void) reload;
- (void) goBack;
- (void) goForward;
- (void) clearHistory;
-(void) loadData:(NSDictionary*)conf;
- (NSString *)evaluateJavaScript:(NSArray*)arguments isSync:(BOOL)isSync;
-(void)readCookies:(NSArray*)arguments;
-(void)deleteCookies:(NSArray*)arguments;
-(void)setCookies:(NSArray*)arguments;
@end
