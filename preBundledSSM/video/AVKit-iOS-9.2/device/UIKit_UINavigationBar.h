#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UINavigationBar_symbols(JSContext*);
@protocol UINavigationBarInstanceExports<JSExport, NSCodingInstanceExports_, UIBarPositioningInstanceExports_>
@property (readonly,nonatomic,strong) UINavigationItem * topItem;
@property (copy,nonatomic) NSArray * items;
@property (assign,nonatomic) UIBarStyle barStyle;
@property (readonly,nonatomic,strong) UINavigationItem * backItem;
@property (nonatomic,strong) UIColor * barTintColor;
@property (nonatomic,strong) UIImage * backIndicatorImage;
@property (nonatomic,strong) UIImage * shadowImage;
@property (nonatomic,strong) UIColor * tintColor;
@property (nonatomic,strong) UIImage * backIndicatorTransitionMaskImage;
@property (nonatomic,weak) id delegate;
@property (getter=isTranslucent,assign,nonatomic) BOOL translucent;
@property (copy,nonatomic) NSDictionary * titleTextAttributes;
-(void) pushNavigationItem: (UINavigationItem *) item animated: (BOOL) animated ;
-(CGFloat) titleVerticalPositionAdjustmentForBarMetrics: (UIBarMetrics) barMetrics ;
-(void) setTitleVerticalPositionAdjustment: (CGFloat) adjustment forBarMetrics: (UIBarMetrics) barMetrics ;
-(UIImage *) backgroundImageForBarMetrics: (UIBarMetrics) barMetrics ;
-(void) setBackgroundImage: (UIImage *) backgroundImage forBarPosition: (UIBarPosition) barPosition barMetrics: (UIBarMetrics) barMetrics ;
-(void) setBackgroundImage: (UIImage *) backgroundImage forBarMetrics: (UIBarMetrics) barMetrics ;
-(UIImage *) backgroundImageForBarPosition: (UIBarPosition) barPosition barMetrics: (UIBarMetrics) barMetrics ;
-(void) setItems: (NSArray *) items animated: (BOOL) animated ;
-(UINavigationItem *) popNavigationItemAnimated: (BOOL) animated ;
@end
@protocol UINavigationBarClassExports<JSExport, NSCodingClassExports_, UIBarPositioningClassExports_>
@end
@protocol UINavigationItemInstanceExports<JSExport, NSCodingInstanceExports_>
@property (copy,nonatomic) NSString * prompt;
@property (copy,nonatomic) NSString * title;
@property (copy,nonatomic) NSArray * rightBarButtonItems;
@property (copy,nonatomic) NSArray * leftBarButtonItems;
@property (assign,nonatomic) BOOL hidesBackButton;
@property (nonatomic,strong) UIBarButtonItem * backBarButtonItem;
@property (nonatomic,strong) UIBarButtonItem * rightBarButtonItem;
@property (nonatomic,strong) UIView * titleView;
@property (nonatomic) BOOL leftItemsSupplementBackButton;
@property (nonatomic,strong) UIBarButtonItem * leftBarButtonItem;
-(void) setRightBarButtonItems: (NSArray *) items animated: (BOOL) animated ;
JSExportAs(initWithTitle,
-(id) jsinitWithTitle: (NSString *) title );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(void) setHidesBackButton: (BOOL) hidesBackButton animated: (BOOL) animated ;
-(void) setRightBarButtonItem: (UIBarButtonItem *) item animated: (BOOL) animated ;
-(void) setLeftBarButtonItem: (UIBarButtonItem *) item animated: (BOOL) animated ;
-(void) setLeftBarButtonItems: (NSArray *) items animated: (BOOL) animated ;
@end
@protocol UINavigationItemClassExports<JSExport, NSCodingClassExports_>
@end
@protocol UINavigationBarDelegateInstanceExports_<JSExport, UIBarPositioningDelegateInstanceExports_>
-(void) navigationBar: (UINavigationBar *) navigationBar didPushItem: (UINavigationItem *) item ;
-(BOOL) navigationBar: (UINavigationBar *) navigationBar shouldPushItem: (UINavigationItem *) item ;
-(void) navigationBar: (UINavigationBar *) navigationBar didPopItem: (UINavigationItem *) item ;
-(BOOL) navigationBar: (UINavigationBar *) navigationBar shouldPopItem: (UINavigationItem *) item ;
@end
@protocol UINavigationBarDelegateClassExports_<JSExport, UIBarPositioningDelegateClassExports_>
@end
#pragma clang diagnostic pop