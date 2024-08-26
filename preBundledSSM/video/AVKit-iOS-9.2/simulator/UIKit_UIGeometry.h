#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIGeometry_symbols(JSContext*);
@interface JSValue (UIKit_UIGeometry)
+(JSValue*) valueWithUIEdgeInsets: (UIEdgeInsets) s inContext: (JSContext*) context;
-(UIEdgeInsets) toUIEdgeInsets;
+(JSValue*) valueWithUIOffset: (UIOffset) s inContext: (JSContext*) context;
-(UIOffset) toUIOffset;
@end
@protocol NSCoderUIGeometryKeyedCodingCategoryInstanceExports<JSExport>
-(void) encodeCGSize: (CGSize) size forKey: (NSString *) key ;
-(CGSize) decodeCGSizeForKey: (NSString *) key ;
-(UIEdgeInsets) decodeUIEdgeInsetsForKey: (NSString *) key ;
-(CGRect) decodeCGRectForKey: (NSString *) key ;
-(CGVector) decodeCGVectorForKey: (NSString *) key ;
-(CGAffineTransform) decodeCGAffineTransformForKey: (NSString *) key ;
-(UIOffset) decodeUIOffsetForKey: (NSString *) key ;
-(void) encodeCGRect: (CGRect) rect forKey: (NSString *) key ;
-(void) encodeUIEdgeInsets: (UIEdgeInsets) insets forKey: (NSString *) key ;
-(CGPoint) decodeCGPointForKey: (NSString *) key ;
-(void) encodeCGVector: (CGVector) vector forKey: (NSString *) key ;
-(void) encodeCGPoint: (CGPoint) point forKey: (NSString *) key ;
-(void) encodeCGAffineTransform: (CGAffineTransform) transform forKey: (NSString *) key ;
-(void) encodeUIOffset: (UIOffset) offset forKey: (NSString *) key ;
@end
@protocol NSCoderUIGeometryKeyedCodingCategoryClassExports<JSExport>
@end
@protocol NSValueNSValueUIGeometryExtensionsCategoryInstanceExports<JSExport>
-(CGSize) CGSizeValue;
-(CGVector) CGVectorValue;
-(CGRect) CGRectValue;
-(CGPoint) CGPointValue;
-(UIOffset) UIOffsetValue;
-(CGAffineTransform) CGAffineTransformValue;
-(UIEdgeInsets) UIEdgeInsetsValue;
@end
@protocol NSValueNSValueUIGeometryExtensionsCategoryClassExports<JSExport>
+(NSValue *) valueWithCGAffineTransform: (CGAffineTransform) transform ;
+(NSValue *) valueWithCGVector: (CGVector) vector ;
+(NSValue *) valueWithUIEdgeInsets: (UIEdgeInsets) insets ;
+(NSValue *) valueWithCGSize: (CGSize) size ;
+(NSValue *) valueWithUIOffset: (UIOffset) insets ;
+(NSValue *) valueWithCGRect: (CGRect) rect ;
+(NSValue *) valueWithCGPoint: (CGPoint) point ;
@end
#pragma clang diagnostic pop