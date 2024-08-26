#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSDecimalNumber_symbols(JSContext*);
@protocol NSDecimalNumberInstanceExports<JSExport>
@property (readonly) double doubleValue;
JSExportAs(initWithMantissaExponentIsNegative,
-(id) jsinitWithMantissa: (unsigned long long) mantissa exponent: (short) exponent isNegative: (BOOL) flag );
JSExportAs(initWithString,
-(id) jsinitWithString: (NSString *) numberValue );
JSExportAs(initWithStringLocale,
-(id) jsinitWithString: (NSString *) numberValue locale: (id) locale );
-(NSString *) descriptionWithLocale: (id) locale ;
-(NSDecimalNumber *) decimalNumberByAdding: (NSDecimalNumber *) decimalNumber ;
-(NSDecimalNumber *) decimalNumberByAdding: (NSDecimalNumber *) decimalNumber withBehavior: (id) behavior ;
-(NSDecimalNumber *) decimalNumberBySubtracting: (NSDecimalNumber *) decimalNumber ;
-(NSDecimalNumber *) decimalNumberBySubtracting: (NSDecimalNumber *) decimalNumber withBehavior: (id) behavior ;
-(NSDecimalNumber *) decimalNumberByMultiplyingBy: (NSDecimalNumber *) decimalNumber ;
-(NSDecimalNumber *) decimalNumberByMultiplyingBy: (NSDecimalNumber *) decimalNumber withBehavior: (id) behavior ;
-(NSDecimalNumber *) decimalNumberByDividingBy: (NSDecimalNumber *) decimalNumber ;
-(NSDecimalNumber *) decimalNumberByDividingBy: (NSDecimalNumber *) decimalNumber withBehavior: (id) behavior ;
-(NSDecimalNumber *) decimalNumberByRaisingToPower: (NSUInteger) power ;
-(NSDecimalNumber *) decimalNumberByRaisingToPower: (NSUInteger) power withBehavior: (id) behavior ;
-(NSDecimalNumber *) decimalNumberByMultiplyingByPowerOf10: (short) power ;
-(NSDecimalNumber *) decimalNumberByMultiplyingByPowerOf10: (short) power withBehavior: (id) behavior ;
-(NSDecimalNumber *) decimalNumberByRoundingAccordingToBehavior: (id) behavior ;
-(NSComparisonResult) compare: (NSNumber *) decimalNumber ;
@end
@protocol NSDecimalNumberClassExports<JSExport>
+(NSDecimalNumber *) decimalNumberWithMantissa: (unsigned long long) mantissa exponent: (short) exponent isNegative: (BOOL) flag ;
+(NSDecimalNumber *) decimalNumberWithString: (NSString *) numberValue ;
+(NSDecimalNumber *) decimalNumberWithString: (NSString *) numberValue locale: (id) locale ;
+(NSDecimalNumber *) zero;
+(NSDecimalNumber *) one;
+(NSDecimalNumber *) minimumDecimalNumber;
+(NSDecimalNumber *) maximumDecimalNumber;
+(NSDecimalNumber *) notANumber;
+(id) defaultBehavior;
+(void) setDefaultBehavior: (id) defaultBehavior ;
@end
@protocol NSDecimalNumberHandlerInstanceExports<JSExport, NSDecimalNumberBehaviorsInstanceExports_, NSCodingInstanceExports_>
JSExportAs(initWithRoundingModeScaleRaiseOnExactnessRaiseOnOverflowRaiseOnUnderflowRaiseOnDivideByZero,
-(id) jsinitWithRoundingMode: (NSRoundingMode) roundingMode scale: (short) scale raiseOnExactness: (BOOL) exact raiseOnOverflow: (BOOL) overflow raiseOnUnderflow: (BOOL) underflow raiseOnDivideByZero: (BOOL) divideByZero );
@end
@protocol NSDecimalNumberHandlerClassExports<JSExport, NSDecimalNumberBehaviorsClassExports_, NSCodingClassExports_>
+(id) decimalNumberHandlerWithRoundingMode: (NSRoundingMode) roundingMode scale: (short) scale raiseOnExactness: (BOOL) exact raiseOnOverflow: (BOOL) overflow raiseOnUnderflow: (BOOL) underflow raiseOnDivideByZero: (BOOL) divideByZero ;
+(NSDecimalNumberHandler *) defaultDecimalNumberHandler;
@end
@protocol NSNumberNSDecimalNumberExtensionsCategoryInstanceExports<JSExport>
@end
@protocol NSNumberNSDecimalNumberExtensionsCategoryClassExports<JSExport>
@end
@protocol NSScannerNSDecimalNumberScanningCategoryInstanceExports<JSExport>
@end
@protocol NSScannerNSDecimalNumberScanningCategoryClassExports<JSExport>
@end
@protocol NSDecimalNumberBehaviorsInstanceExports_<JSExport>
-(NSRoundingMode) roundingMode;
-(short) scale;
JSExportAs(exceptionDuringOperationErrorLeftOperandRightOperand,
-(NSDecimalNumber *) jsexceptionDuringOperation: (NSString *) operation error: (NSCalculationError) error leftOperand: (NSDecimalNumber *) leftOperand rightOperand: (NSDecimalNumber *) rightOperand );
@end
@protocol NSDecimalNumberBehaviorsClassExports_<JSExport>
@end
#pragma clang diagnostic pop