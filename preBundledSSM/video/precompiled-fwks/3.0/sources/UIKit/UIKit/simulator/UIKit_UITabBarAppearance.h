#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UITabBarAppearance_symbols(JSContext*);
@protocol UITabBarItemStateAppearanceInstanceExports<JSExport>
@property (readwrite,copy,nonatomic) UIColor * badgeBackgroundColor;
@property (readwrite,copy,nonatomic) NSDictionary * badgeTextAttributes;
@property (assign,readwrite,nonatomic) UIOffset titlePositionAdjustment;
@property (assign,readwrite,nonatomic) UIOffset badgeTitlePositionAdjustment;
@property (readwrite,copy,nonatomic) UIColor * iconColor;
@property (assign,readwrite,nonatomic) UIOffset badgePositionAdjustment;
@property (readwrite,copy,nonatomic) NSDictionary * titleTextAttributes;
@end
@protocol UITabBarItemStateAppearanceClassExports<JSExport>
@end
@protocol UITabBarAppearanceInstanceExports<JSExport>
@property (assign,readwrite,nonatomic) UITabBarItemPositioning stackedItemPositioning;
@property (assign,readwrite,nonatomic) CGFloat stackedItemSpacing;
@property (readwrite,copy,nonatomic) UITabBarItemAppearance * compactInlineLayoutAppearance;
@property (readwrite,nonatomic,strong) UIImage * selectionIndicatorImage;
@property (readwrite,copy,nonatomic) UIColor * selectionIndicatorTintColor;
@property (readwrite,copy,nonatomic) UITabBarItemAppearance * inlineLayoutAppearance;
@property (assign,readwrite,nonatomic) CGFloat stackedItemWidth;
@property (readwrite,copy,nonatomic) UITabBarItemAppearance * stackedLayoutAppearance;
@end
@protocol UITabBarAppearanceClassExports<JSExport>
@end
@protocol UITabBarItemAppearanceInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,nonatomic,strong) UITabBarItemStateAppearance * disabled;
@property (readonly,nonatomic,strong) UITabBarItemStateAppearance * selected;
@property (readonly,nonatomic,strong) UITabBarItemStateAppearance * focused;
@property (readonly,nonatomic,strong) UITabBarItemStateAppearance * normal;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(id) jsinit;
JSExportAs(initWithStyle,
-(id) jsinitWithStyle: (UITabBarItemAppearanceStyle) style );
-(id) jscopy;
-(void) configureWithDefaultForStyle: (UITabBarItemAppearanceStyle) style ;
@end
@protocol UITabBarItemAppearanceClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop