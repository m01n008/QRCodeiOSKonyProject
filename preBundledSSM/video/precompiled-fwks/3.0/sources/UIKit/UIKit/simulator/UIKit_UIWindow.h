#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIWindow_symbols(JSContext*);
@protocol UIWindowInstanceExports<JSExport>
@property (nonatomic,weak) UIWindowScene * windowScene;
@property (nonatomic,strong) UIScreen * screen;
@property (nonatomic,strong) UIViewController * rootViewController;
@property (setter=setCanResizeToFitContent:,nonatomic) BOOL canResizeToFitContent;
@property (getter=isKeyWindow,readonly,nonatomic) BOOL keyWindow;
@property (nonatomic) UIWindowLevel windowLevel;
-(CGPoint) convertPoint: (CGPoint) point fromWindow: (UIWindow *) window ;
-(CGRect) convertRect: (CGRect) rect fromWindow: (UIWindow *) window ;
-(void) makeKeyWindow;
-(void) becomeKeyWindow;
JSExportAs(initWithWindowScene,
-(id) jsinitWithWindowScene: (UIWindowScene *) windowScene );
-(CGPoint) convertPoint: (CGPoint) point toWindow: (UIWindow *) window ;
-(void) resignKeyWindow;
-(CGRect) convertRect: (CGRect) rect toWindow: (UIWindow *) window ;
-(void) setScreen: (UIScreen *) screen ;
-(void) makeKeyAndVisible;
-(void) sendEvent: (UIEvent *) event ;
@end
@protocol UIWindowClassExports<JSExport>
@end
#pragma clang diagnostic pop