#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSNumberFormatter_symbols(JSContext*);
@protocol NSNumberFormatterInstanceExports<JSExport>
@property () NSFormattingContext formattingContext;
@property () NSNumberFormatterStyle numberStyle;
@property (copy) NSLocale * locale;
@property () BOOL generatesDecimalNumbers;
@property () NSNumberFormatterBehavior formatterBehavior;
@property (copy) NSString * negativeFormat;
@property (copy) NSDictionary * textAttributesForNegativeValues;
@property (copy) NSString * positiveFormat;
@property (copy) NSDictionary * textAttributesForPositiveValues;
@property () BOOL allowsFloats;
@property (copy) NSString * decimalSeparator;
@property () BOOL alwaysShowsDecimalSeparator;
@property (copy) NSString * currencyDecimalSeparator;
@property () BOOL usesGroupingSeparator;
@property (copy) NSString * groupingSeparator;
@property (copy) NSString * zeroSymbol;
@property (copy) NSDictionary * textAttributesForZero;
@property (copy) NSString * nilSymbol;
@property (copy) NSDictionary * textAttributesForNil;
@property (copy) NSString * notANumberSymbol;
@property (copy) NSDictionary * textAttributesForNotANumber;
@property (copy) NSString * positiveInfinitySymbol;
@property (copy) NSDictionary * textAttributesForPositiveInfinity;
@property (copy) NSString * negativeInfinitySymbol;
@property (copy) NSDictionary * textAttributesForNegativeInfinity;
@property (copy) NSString * positivePrefix;
@property (copy) NSString * positiveSuffix;
@property (copy) NSString * negativePrefix;
@property (copy) NSString * negativeSuffix;
@property (copy) NSString * currencyCode;
@property (copy) NSString * currencySymbol;
@property (copy) NSString * internationalCurrencySymbol;
@property (copy) NSString * percentSymbol;
@property (copy) NSString * perMillSymbol;
@property (copy) NSString * minusSign;
@property (copy) NSString * plusSign;
@property (copy) NSString * exponentSymbol;
@property () NSUInteger groupingSize;
@property () NSUInteger secondaryGroupingSize;
@property (copy) NSNumber * multiplier;
@property () NSUInteger formatWidth;
@property (copy) NSString * paddingCharacter;
@property () NSNumberFormatterPadPosition paddingPosition;
@property () NSNumberFormatterRoundingMode roundingMode;
@property (copy) NSNumber * roundingIncrement;
@property () NSUInteger minimumIntegerDigits;
@property () NSUInteger maximumIntegerDigits;
@property () NSUInteger minimumFractionDigits;
@property () NSUInteger maximumFractionDigits;
@property (copy) NSNumber * minimum;
@property (copy) NSNumber * maximum;
@property (copy) NSString * currencyGroupingSeparator;
@property (getter=isLenient) BOOL lenient;
@property () BOOL usesSignificantDigits;
@property () NSUInteger minimumSignificantDigits;
@property () NSUInteger maximumSignificantDigits;
@property (getter=isPartialStringValidationEnabled) BOOL partialStringValidationEnabled;
-(NSString *) stringFromNumber: (NSNumber *) number ;
-(NSNumber *) numberFromString: (NSString *) string ;
@end
@protocol NSNumberFormatterClassExports<JSExport>
+(NSString *) localizedStringFromNumber: (NSNumber *) num numberStyle: (NSNumberFormatterStyle) nstyle ;
+(NSNumberFormatterBehavior) defaultFormatterBehavior;
+(void) setDefaultFormatterBehavior: (NSNumberFormatterBehavior) behavior ;
@end
#pragma clang diagnostic pop