#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSTextCheckingResult_symbols(JSContext*);
@protocol NSTextCheckingResultInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly) NSTextCheckingType resultType;
@property (readonly) NSRange range;
@end
@protocol NSTextCheckingResultClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSTextCheckingResultNSTextCheckingResultOptionalCategoryInstanceExports<JSExport>
@property (readonly,copy) NSOrthography * orthography;
@property (readonly,copy) NSArray * grammarDetails;
@property (readonly,copy) NSDate * date;
@property (readonly,copy) NSTimeZone * timeZone;
@property (readonly) NSTimeInterval duration;
@property (readonly,copy) NSDictionary * components;
@property (readonly,copy) NSURL * URL;
@property (readonly,copy) NSString * replacementString;
@property (readonly,copy) NSArray * alternativeStrings;
@property (readonly,copy) NSRegularExpression * regularExpression;
@property (readonly,copy) NSString * phoneNumber;
@property (readonly) NSUInteger numberOfRanges;
@property (readonly,copy) NSDictionary * addressComponents;
-(NSRange) rangeAtIndex: (NSUInteger) idx ;
-(NSRange) rangeWithName: (NSString *) name ;
-(NSTextCheckingResult *) resultByAdjustingRangesWithOffset: (NSInteger) offset ;
@end
@protocol NSTextCheckingResultNSTextCheckingResultOptionalCategoryClassExports<JSExport>
@end
@protocol NSTextCheckingResultNSTextCheckingResultCreationCategoryInstanceExports<JSExport>
@end
@protocol NSTextCheckingResultNSTextCheckingResultCreationCategoryClassExports<JSExport>
+(NSTextCheckingResult *) orthographyCheckingResultWithRange: (NSRange) range orthography: (NSOrthography *) orthography ;
+(NSTextCheckingResult *) spellCheckingResultWithRange: (NSRange) range ;
+(NSTextCheckingResult *) grammarCheckingResultWithRange: (NSRange) range details: (NSArray *) details ;
+(NSTextCheckingResult *) dateCheckingResultWithRange: (NSRange) range date: (NSDate *) date ;
+(NSTextCheckingResult *) dateCheckingResultWithRange: (NSRange) range date: (NSDate *) date timeZone: (NSTimeZone *) timeZone duration: (NSTimeInterval) duration ;
+(NSTextCheckingResult *) addressCheckingResultWithRange: (NSRange) range components: (NSDictionary *) components ;
+(NSTextCheckingResult *) linkCheckingResultWithRange: (NSRange) range URL: (NSURL *) url ;
+(NSTextCheckingResult *) quoteCheckingResultWithRange: (NSRange) range replacementString: (NSString *) replacementString ;
+(NSTextCheckingResult *) dashCheckingResultWithRange: (NSRange) range replacementString: (NSString *) replacementString ;
+(NSTextCheckingResult *) replacementCheckingResultWithRange: (NSRange) range replacementString: (NSString *) replacementString ;
+(NSTextCheckingResult *) correctionCheckingResultWithRange: (NSRange) range replacementString: (NSString *) replacementString ;
+(NSTextCheckingResult *) correctionCheckingResultWithRange: (NSRange) range replacementString: (NSString *) replacementString alternativeStrings: (NSArray *) alternativeStrings ;
+(NSTextCheckingResult *) phoneNumberCheckingResultWithRange: (NSRange) range phoneNumber: (NSString *) phoneNumber ;
+(NSTextCheckingResult *) transitInformationCheckingResultWithRange: (NSRange) range components: (NSDictionary *) components ;
@end
#pragma clang diagnostic pop