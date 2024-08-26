#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIFont_symbols(JSContext*);
@protocol UIFontInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic,strong) NSString * fontName;
@property (readonly,nonatomic,strong) NSString * familyName;
@property (readonly,nonatomic) CGFloat pointSize;
@property (readonly,nonatomic) CGFloat capHeight;
@property (readonly,nonatomic) CGFloat leading;
@property (readonly,nonatomic) CGFloat ascender;
@property (readonly,nonatomic) CGFloat descender;
@property (readonly,nonatomic) CGFloat xHeight;
@property (readonly,nonatomic) CGFloat lineHeight;
-(UIFontDescriptor *) fontDescriptor;
-(UIFont *) fontWithSize: (CGFloat) fontSize ;
@end
@protocol UIFontClassExports<JSExport, NSCopyingClassExports_>
+(UIFont *) systemFontOfSize: (CGFloat) fontSize weight: (CGFloat) weight ;
+(NSArray *) fontNamesForFamilyName: (NSString *) familyName ;
+(UIFont *) fontWithName: (NSString *) fontName size: (CGFloat) fontSize ;
+(UIFont *) monospacedDigitSystemFontOfSize: (CGFloat) fontSize weight: (CGFloat) weight ;
+(UIFont *) boldSystemFontOfSize: (CGFloat) fontSize ;
+(UIFont *) fontWithDescriptor: (UIFontDescriptor *) descriptor size: (CGFloat) pointSize ;
+(UIFont *) italicSystemFontOfSize: (CGFloat) fontSize ;
+(NSArray *) familyNames;
+(UIFont *) preferredFontForTextStyle: (NSString *) style ;
+(UIFont *) systemFontOfSize: (CGFloat) fontSize ;
@end
#pragma clang diagnostic pop