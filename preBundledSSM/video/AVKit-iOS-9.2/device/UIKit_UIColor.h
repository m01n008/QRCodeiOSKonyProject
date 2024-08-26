#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIColor_symbols(JSContext*);
@protocol UIColorInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_>
@property (readonly,nonatomic) id CGColor;
@property (readonly,nonatomic) CIColor * CIColor;
-(void) setStroke;
-(void) set;
JSExportAs(initWithPatternImage,
-(UIColor *) jsinitWithPatternImage: (UIImage *) image );
-(id) CGColor;
JSExportAs(initWithHueSaturationBrightnessAlpha,
-(UIColor *) jsinitWithHue: (CGFloat) hue saturation: (CGFloat) saturation brightness: (CGFloat) brightness alpha: (CGFloat) alpha );
JSExportAs(initWithRedGreenBlueAlpha,
-(UIColor *) jsinitWithRed: (CGFloat) red green: (CGFloat) green blue: (CGFloat) blue alpha: (CGFloat) alpha );
JSExportAs(initWithCIColor,
-(UIColor *) jsinitWithCIColor: (CIColor *) ciColor );
JSExportAs(initWithWhiteAlpha,
-(UIColor *) jsinitWithWhite: (CGFloat) white alpha: (CGFloat) alpha );
-(void) setFill;
JSExportAs(initWithCGColor,
-(UIColor *) jsinitWithCGColor: (id) cgColor );
-(UIColor *) colorWithAlphaComponent: (CGFloat) alpha ;
@end
@protocol UIColorClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_>
+(UIColor *) colorWithWhite: (CGFloat) white alpha: (CGFloat) alpha ;
+(UIColor *) grayColor;
+(UIColor *) purpleColor;
+(UIColor *) colorWithRed: (CGFloat) red green: (CGFloat) green blue: (CGFloat) blue alpha: (CGFloat) alpha ;
+(UIColor *) colorWithPatternImage: (UIImage *) image ;
+(UIColor *) greenColor;
+(UIColor *) redColor;
+(UIColor *) cyanColor;
+(UIColor *) blackColor;
+(UIColor *) colorWithCIColor: (CIColor *) ciColor ;
+(UIColor *) magentaColor;
+(UIColor *) colorWithHue: (CGFloat) hue saturation: (CGFloat) saturation brightness: (CGFloat) brightness alpha: (CGFloat) alpha ;
+(UIColor *) lightGrayColor;
+(UIColor *) blueColor;
+(UIColor *) brownColor;
+(UIColor *) orangeColor;
+(UIColor *) colorWithCGColor: (id) cgColor ;
+(UIColor *) whiteColor;
+(UIColor *) darkGrayColor;
+(UIColor *) clearColor;
+(UIColor *) yellowColor;
@end
@protocol CIColorUIKitAdditionsCategoryInstanceExports<JSExport>
JSExportAs(initWithColor,
-(id) jsinitWithColor: (UIColor *) color );
@end
@protocol CIColorUIKitAdditionsCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop