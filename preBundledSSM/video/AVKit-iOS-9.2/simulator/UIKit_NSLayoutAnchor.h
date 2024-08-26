#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_NSLayoutAnchor_symbols(JSContext*);
@protocol NSLayoutDimensionInstanceExports<JSExport>
-(NSLayoutConstraint *) constraintEqualToAnchor: (NSLayoutDimension *) anchor multiplier: (CGFloat) m constant: (CGFloat) c ;
-(NSLayoutConstraint *) constraintEqualToConstant: (CGFloat) c ;
-(NSLayoutConstraint *) constraintGreaterThanOrEqualToAnchor: (NSLayoutDimension *) anchor multiplier: (CGFloat) m constant: (CGFloat) c ;
-(NSLayoutConstraint *) constraintLessThanOrEqualToAnchor: (NSLayoutDimension *) anchor multiplier: (CGFloat) m constant: (CGFloat) c ;
-(NSLayoutConstraint *) constraintLessThanOrEqualToAnchor: (NSLayoutDimension *) anchor multiplier: (CGFloat) m ;
-(NSLayoutConstraint *) constraintLessThanOrEqualToConstant: (CGFloat) c ;
-(NSLayoutConstraint *) constraintGreaterThanOrEqualToConstant: (CGFloat) c ;
-(NSLayoutConstraint *) constraintGreaterThanOrEqualToAnchor: (NSLayoutDimension *) anchor multiplier: (CGFloat) m ;
-(NSLayoutConstraint *) constraintEqualToAnchor: (NSLayoutDimension *) anchor multiplier: (CGFloat) m ;
@end
@protocol NSLayoutDimensionClassExports<JSExport>
@end
@protocol NSLayoutXAxisAnchorInstanceExports<JSExport>
@end
@protocol NSLayoutXAxisAnchorClassExports<JSExport>
@end
@protocol NSLayoutYAxisAnchorInstanceExports<JSExport>
@end
@protocol NSLayoutYAxisAnchorClassExports<JSExport>
@end
@protocol NSLayoutAnchorInstanceExports<JSExport>
-(NSLayoutConstraint *) constraintGreaterThanOrEqualToAnchor: (NSLayoutAnchor *) anchor ;
-(NSLayoutConstraint *) constraintLessThanOrEqualToAnchor: (NSLayoutAnchor *) anchor ;
-(NSLayoutConstraint *) constraintEqualToAnchor: (NSLayoutAnchor *) anchor constant: (CGFloat) c ;
-(NSLayoutConstraint *) constraintEqualToAnchor: (NSLayoutAnchor *) anchor ;
-(NSLayoutConstraint *) constraintLessThanOrEqualToAnchor: (NSLayoutAnchor *) anchor constant: (CGFloat) c ;
-(NSLayoutConstraint *) constraintGreaterThanOrEqualToAnchor: (NSLayoutAnchor *) anchor constant: (CGFloat) c ;
@end
@protocol NSLayoutAnchorClassExports<JSExport>
@end
#pragma clang diagnostic pop