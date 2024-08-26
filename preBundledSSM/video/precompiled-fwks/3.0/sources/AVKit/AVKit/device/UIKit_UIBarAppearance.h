#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIBarAppearance_symbols(JSContext*);
@protocol UIBarAppearanceInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readwrite,nonatomic,strong) UIImage * shadowImage;
@property (readonly,assign,nonatomic) UIUserInterfaceIdiom idiom;
@property (readwrite,copy,nonatomic) UIColor * shadowColor;
@property (readwrite,nonatomic,strong) UIImage * backgroundImage;
@property (assign,readwrite,nonatomic) UIViewContentMode backgroundImageContentMode;
@property (readwrite,copy,nonatomic) UIColor * backgroundColor;
@property (readwrite,copy,nonatomic) UIBlurEffect * backgroundEffect;
-(void) configureWithTransparentBackground;
JSExportAs(initWithBarAppearance,
-(id) jsinitWithBarAppearance: (UIBarAppearance *) barAppearance );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
JSExportAs(initWithIdiom,
-(id) jsinitWithIdiom: (UIUserInterfaceIdiom) idiom );
-(id) jsinit;
-(void) configureWithOpaqueBackground;
-(void) configureWithDefaultBackground;
-(id) jscopy;
@end
@protocol UIBarAppearanceClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop