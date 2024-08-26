#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIBarButtonItem_symbols(JSContext*);
@protocol UIBarButtonItemSpringLoadingCategoryInstanceExports<JSExport, UISpringLoadedInteractionSupportingInstanceExports_>
@end
@protocol UIBarButtonItemSpringLoadingCategoryClassExports<JSExport, UISpringLoadedInteractionSupportingClassExports_>
@end
@protocol UIBarButtonItemInstanceExports<JSExport, NSCodingInstanceExports_>
@property (assign,readwrite,nonatomic) UIBarButtonItemStyle style;
@property (readwrite,nonatomic,weak) id target;
@property (readwrite,copy,nonatomic) UIAction * primaryAction;
@property (readwrite,copy,nonatomic) UIMenu * menu;
@property (nonatomic,strong) UIColor * tintColor;
@property (readwrite,nonatomic,strong) __kindof UIView * customView;
@property (assign,readwrite,nonatomic) CGFloat width;
@property (getter=getJsAction,setter=setJsAction:) NSString* jsaction;
@property (readwrite,copy,nonatomic) NSSet * possibleTitles;
-(UIImage *) backgroundImageForState: (UIControlState) state style: (UIBarButtonItemStyle) style barMetrics: (UIBarMetrics) barMetrics ;
-(CGFloat) backgroundVerticalPositionAdjustmentForBarMetrics: (UIBarMetrics) barMetrics ;
-(void) setBackButtonTitlePositionAdjustment: (UIOffset) adjustment forBarMetrics: (UIBarMetrics) barMetrics ;
-(void) setBackButtonBackgroundVerticalPositionAdjustment: (CGFloat) adjustment forBarMetrics: (UIBarMetrics) barMetrics ;
JSExportAs(initWithImageMenu,
-(id) jsinitWithImage: (UIImage *) image menu: (UIMenu *) menu );
JSExportAs(initWithBarButtonSystemItemMenu,
-(id) jsinitWithBarButtonSystemItem: (UIBarButtonSystemItem) systemItem menu: (UIMenu *) menu );
JSExportAs(initWithTitleMenu,
-(id) jsinitWithTitle: (NSString *) title menu: (UIMenu *) menu );
JSExportAs(initWithBarButtonSystemItemPrimaryAction,
-(id) jsinitWithBarButtonSystemItem: (UIBarButtonSystemItem) systemItem primaryAction: (UIAction *) primaryAction );
JSExportAs(initWithBarButtonSystemItemTargetAction,
-(id) jsinitWithBarButtonSystemItem: (UIBarButtonSystemItem) systemItem target: (id) target action: (NSString *) action );
-(UIOffset) backButtonTitlePositionAdjustmentForBarMetrics: (UIBarMetrics) barMetrics ;
-(CGFloat) backButtonBackgroundVerticalPositionAdjustmentForBarMetrics: (UIBarMetrics) barMetrics ;
JSExportAs(initWithImageStyleTargetAction,
-(id) jsinitWithImage: (UIImage *) image style: (UIBarButtonItemStyle) style target: (id) target action: (NSString *) action );
-(id) jsinit;
JSExportAs(initWithTitleStyleTargetAction,
-(id) jsinitWithTitle: (NSString *) title style: (UIBarButtonItemStyle) style target: (id) target action: (NSString *) action );
-(void) setBackgroundVerticalPositionAdjustment: (CGFloat) adjustment forBarMetrics: (UIBarMetrics) barMetrics ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
JSExportAs(initWithImageLandscapeImagePhoneStyleTargetAction,
-(id) jsinitWithImage: (UIImage *) image landscapeImagePhone: (UIImage *) landscapeImagePhone style: (UIBarButtonItemStyle) style target: (id) target action: (NSString *) action );
-(UIImage *) backgroundImageForState: (UIControlState) state barMetrics: (UIBarMetrics) barMetrics ;
-(void) setTitlePositionAdjustment: (UIOffset) adjustment forBarMetrics: (UIBarMetrics) barMetrics ;
-(void) setBackgroundImage: (UIImage *) backgroundImage forState: (UIControlState) state style: (UIBarButtonItemStyle) style barMetrics: (UIBarMetrics) barMetrics ;
-(UIImage *) backButtonBackgroundImageForState: (UIControlState) state barMetrics: (UIBarMetrics) barMetrics ;
JSExportAs(initWithPrimaryAction,
-(id) jsinitWithPrimaryAction: (UIAction *) primaryAction );
-(UIOffset) titlePositionAdjustmentForBarMetrics: (UIBarMetrics) barMetrics ;
-(void) setBackButtonBackgroundImage: (UIImage *) backgroundImage forState: (UIControlState) state barMetrics: (UIBarMetrics) barMetrics ;
-(void) setBackgroundImage: (UIImage *) backgroundImage forState: (UIControlState) state barMetrics: (UIBarMetrics) barMetrics ;
JSExportAs(initWithCustomView,
-(id) jsinitWithCustomView: (UIView *) customView );
@end
@protocol UIBarButtonItemClassExports<JSExport, NSCodingClassExports_>
+(id) flexibleSpaceItem;
+(id) fixedSpaceItemOfWidth: (CGFloat) width ;
@end
#pragma clang diagnostic pop