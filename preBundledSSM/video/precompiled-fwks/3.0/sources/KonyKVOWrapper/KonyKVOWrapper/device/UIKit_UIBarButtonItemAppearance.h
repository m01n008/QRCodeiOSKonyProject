#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIBarButtonItemAppearance_symbols(JSContext*);
@protocol UIBarButtonItemAppearanceInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,nonatomic,strong) UIBarButtonItemStateAppearance * highlighted;
@property (readonly,nonatomic,strong) UIBarButtonItemStateAppearance * disabled;
@property (readonly,nonatomic,strong) UIBarButtonItemStateAppearance * focused;
@property (readonly,nonatomic,strong) UIBarButtonItemStateAppearance * normal;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(id) jsinit;
JSExportAs(initWithStyle,
-(id) jsinitWithStyle: (UIBarButtonItemStyle) style );
-(id) jscopy;
-(void) configureWithDefaultForStyle: (UIBarButtonItemStyle) style ;
@end
@protocol UIBarButtonItemAppearanceClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol UIBarButtonItemStateAppearanceInstanceExports<JSExport>
@property (assign,readwrite,nonatomic) UIOffset titlePositionAdjustment;
@property (readwrite,nonatomic,strong) UIImage * backgroundImage;
@property (assign,readwrite,nonatomic) UIOffset backgroundImagePositionAdjustment;
@property (readwrite,copy,nonatomic) NSDictionary * titleTextAttributes;
@end
@protocol UIBarButtonItemStateAppearanceClassExports<JSExport>
@end
#pragma clang diagnostic pop