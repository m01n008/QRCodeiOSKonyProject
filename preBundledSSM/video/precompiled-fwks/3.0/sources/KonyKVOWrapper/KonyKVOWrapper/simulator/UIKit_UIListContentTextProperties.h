#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIListContentTextProperties_symbols(JSContext*);
@protocol UIListContentTextPropertiesInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (nonatomic) BOOL adjustsFontSizeToFitWidth;
@property (nonatomic) BOOL allowsDefaultTighteningForTruncation;
@property (nonatomic) NSLineBreakMode lineBreakMode;
@property (nonatomic,strong) UIColor * color;
@property (nonatomic) UIListContentTextTransform transform;
@property (nonatomic) NSInteger numberOfLines;
@property (getter=getJsColorTransformer,setter=setJsColorTransformer:) JSValue* jscolorTransformer;
@property (nonatomic) BOOL adjustsFontForContentSizeCategory;
@property (nonatomic) CGFloat minimumScaleFactor;
@property (nonatomic,strong) UIFont * font;
@property (nonatomic) UIListContentTextAlignment alignment;
-(UIColor *) resolvedColor;
@end
@protocol UIListContentTextPropertiesClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop