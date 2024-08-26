#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_QuartzCore_CADisplayLink_symbols(JSContext*);
@protocol CADisplayLinkInstanceExports<JSExport>
@property (readonly,nonatomic) CFTimeInterval duration;
@property (readonly,nonatomic) CFTimeInterval timestamp;
@property (getter=isPaused,nonatomic) BOOL paused;
@property (nonatomic) NSInteger frameInterval;
-(void) invalidate;
-(void) addToRunLoop: (NSRunLoop *) runloop forMode: (NSString *) mode ;
-(void) removeFromRunLoop: (NSRunLoop *) runloop forMode: (NSString *) mode ;
@end
@protocol CADisplayLinkClassExports<JSExport>
JSExportAs(displayLinkWithTargetSelector,
+(CADisplayLink *) jsdisplayLinkWithTarget: (id) target selector: (NSString *) sel );
@end
#pragma clang diagnostic pop