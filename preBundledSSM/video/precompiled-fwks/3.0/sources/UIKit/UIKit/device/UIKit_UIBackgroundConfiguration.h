#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIBackgroundConfiguration_symbols(JSContext*);
@protocol UIBackgroundConfigurationInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (getter=getJsBackgroundColorTransformer,setter=setJsBackgroundColorTransformer:) JSValue* jsbackgroundColorTransformer;
@property (nonatomic) NSDirectionalRectEdge edgesAddingLayoutMarginsToBackgroundInsets;
@property (copy,nonatomic) UIVisualEffect * visualEffect;
@property (nonatomic,strong) UIView * customView;
@property (nonatomic) CGFloat strokeWidth;
@property (getter=getJsStrokeColorTransformer,setter=setJsStrokeColorTransformer:) JSValue* jsstrokeColorTransformer;
@property (nonatomic) CGFloat cornerRadius;
@property (nonatomic,strong) UIColor * backgroundColor;
@property (nonatomic) NSDirectionalEdgeInsets backgroundInsets;
@property (nonatomic) CGFloat strokeOutset;
@property (nonatomic,strong) UIColor * strokeColor;
-(UIColor *) resolvedStrokeColorForTintColor: (UIColor *) tintColor ;
-(UIColor *) resolvedBackgroundColorForTintColor: (UIColor *) tintColor ;
-(id) updatedConfigurationForState: (id) state ;
@end
@protocol UIBackgroundConfigurationClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
+(id) clearConfiguration;
+(id) listGroupedHeaderFooterConfiguration;
+(id) listPlainCellConfiguration;
+(id) listGroupedCellConfiguration;
+(id) listAccompaniedSidebarCellConfiguration;
+(id) listSidebarHeaderConfiguration;
+(id) listSidebarCellConfiguration;
+(id) listPlainHeaderFooterConfiguration;
@end
#pragma clang diagnostic pop