#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UITabBar_symbols(JSContext*);
@protocol UITabBarInstanceExports<JSExport>
@property (copy,nonatomic) NSArray * items;
@property (assign,nonatomic) UITabBarItem * selectedItem;
@property (nonatomic) UITabBarItemPositioning itemPositioning;
@property (nonatomic,strong) UIColor * barTintColor;
@property (nonatomic,strong) UIImage * shadowImage;
@property (nonatomic,strong) UIColor * tintColor;
@property (nonatomic) CGFloat itemWidth;
@property (nonatomic,strong) UIImage * backgroundImage;
@property (assign,nonatomic) id delegate;
@property (nonatomic,strong) UIImage * selectionIndicatorImage;
@property (nonatomic,strong) UIColor * selectedImageTintColor;
@property (nonatomic) UIBarStyle barStyle;
@property (getter=isTranslucent,nonatomic) BOOL translucent;
@property (nonatomic) CGFloat itemSpacing;
-(void) beginCustomizingItems: (NSArray *) items ;
-(BOOL) isCustomizing;
-(void) setItems: (NSArray *) items animated: (BOOL) animated ;
-(BOOL) endCustomizingAnimated: (BOOL) animated ;
@end
@protocol UITabBarClassExports<JSExport>
@end
@protocol UITabBarDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) tabBar: (UITabBar *) tabBar willEndCustomizingItems: (NSArray *) items changed: (BOOL) changed ;
-(void) tabBar: (UITabBar *) tabBar didSelectItem: (UITabBarItem *) item ;
-(void) tabBar: (UITabBar *) tabBar willBeginCustomizingItems: (NSArray *) items ;
-(void) tabBar: (UITabBar *) tabBar didEndCustomizingItems: (NSArray *) items changed: (BOOL) changed ;
-(void) tabBar: (UITabBar *) tabBar didBeginCustomizingItems: (NSArray *) items ;
@end
@protocol UITabBarDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop