#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSCompoundPredicate_symbols(JSContext*);
@protocol NSCompoundPredicateInstanceExports<JSExport>
@property (readonly) NSCompoundPredicateType compoundPredicateType;
@property (readonly,copy) NSArray * subpredicates;
JSExportAs(initWithTypeSubpredicates,
-(id) jsinitWithType: (NSCompoundPredicateType) type subpredicates: (NSArray *) subpredicates );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
@end
@protocol NSCompoundPredicateClassExports<JSExport>
+(NSCompoundPredicate *) andPredicateWithSubpredicates: (NSArray *) subpredicates ;
+(NSCompoundPredicate *) orPredicateWithSubpredicates: (NSArray *) subpredicates ;
+(NSCompoundPredicate *) notPredicateWithSubpredicate: (NSPredicate *) predicate ;
@end
#pragma clang diagnostic pop