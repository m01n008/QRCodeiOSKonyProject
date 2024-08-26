#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSComparisonPredicate_symbols(JSContext*);
@protocol NSComparisonPredicateInstanceExports<JSExport>
@property (readonly) NSPredicateOperatorType predicateOperatorType;
@property (readonly) NSComparisonPredicateModifier comparisonPredicateModifier;
@property (readonly,retain) NSExpression * leftExpression;
@property (readonly,retain) NSExpression * rightExpression;
@property (readonly,getter=getJsCustomSelector) NSString* jscustomSelector;
@property (readonly) NSComparisonPredicateOptions options;
JSExportAs(initWithLeftExpressionRightExpressionModifierTypeOptions,
-(id) jsinitWithLeftExpression: (NSExpression *) lhs rightExpression: (NSExpression *) rhs modifier: (NSComparisonPredicateModifier) modifier type: (NSPredicateOperatorType) type options: (NSComparisonPredicateOptions) options );
JSExportAs(initWithLeftExpressionRightExpressionCustomSelector,
-(id) jsinitWithLeftExpression: (NSExpression *) lhs rightExpression: (NSExpression *) rhs customSelector: (NSString *) selector );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
@end
@protocol NSComparisonPredicateClassExports<JSExport>
+(NSComparisonPredicate *) predicateWithLeftExpression: (NSExpression *) lhs rightExpression: (NSExpression *) rhs modifier: (NSComparisonPredicateModifier) modifier type: (NSPredicateOperatorType) type options: (NSComparisonPredicateOptions) options ;
JSExportAs(predicateWithLeftExpressionRightExpressionCustomSelector,
+(NSComparisonPredicate *) jspredicateWithLeftExpression: (NSExpression *) lhs rightExpression: (NSExpression *) rhs customSelector: (NSString *) selector );
@end
#pragma clang diagnostic pop