#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UITabBarItem_symbols(JSContext*);
@protocol UITabBarItemInstanceExports<JSExport>
@property (assign,readwrite,nonatomic) UIOffset titlePositionAdjustment;
@property (copy,nonatomic) NSString * badgeValue;
@property (nonatomic,strong) UIImage * selectedImage;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
JSExportAs(initWithTabBarSystemItemTag,
-(id) jsinitWithTabBarSystemItem: (UITabBarSystemItem) systemItem tag: (NSInteger) tag );
JSExportAs(initWithTitleImageSelectedImage,
-(id) jsinitWithTitle: (NSString *) title image: (UIImage *) image selectedImage: (UIImage *) selectedImage );
-(UIImage *) finishedSelectedImage;
-(id) jsinit;
JSExportAs(initWithTitleImageTag,
-(id) jsinitWithTitle: (NSString *) title image: (UIImage *) image tag: (NSInteger) tag );
-(UIImage *) finishedUnselectedImage;
-(void) setFinishedSelectedImage: (UIImage *) selectedImage withFinishedUnselectedImage: (UIImage *) unselectedImage ;
@end
@protocol UITabBarItemClassExports<JSExport>
@end
#pragma clang diagnostic pop