#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVKit_AVRoutePickerView_symbols(JSContext*);
@protocol AVRoutePickerViewInstanceExports<JSExport>
@property (nonatomic,strong) UIColor * activeTintColor;
@property (nonatomic,weak) id delegate;
@end
@protocol AVRoutePickerViewClassExports<JSExport>
@end
@protocol AVRoutePickerViewDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) routePickerViewWillBeginPresentingRoutes: (AVRoutePickerView *) routePickerView ;
-(void) routePickerViewDidEndPresentingRoutes: (AVRoutePickerView *) routePickerView ;
@end
@protocol AVRoutePickerViewDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop