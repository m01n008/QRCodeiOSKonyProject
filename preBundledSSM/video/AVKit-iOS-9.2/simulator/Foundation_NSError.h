#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSError_symbols(JSContext*);
@protocol NSObjectNSErrorRecoveryAttemptingCategoryInstanceExports<JSExport>
-(BOOL) attemptRecoveryFromError: (NSError *) error optionIndex: (NSUInteger) recoveryOptionIndex ;
@end
@protocol NSObjectNSErrorRecoveryAttemptingCategoryClassExports<JSExport>
@end
@protocol NSErrorInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,strong) id recoveryAttempter;
@property (readonly,copy) NSString * domain;
@property (readonly) NSInteger code;
@property (readonly,copy) NSString * localizedDescription;
@property (readonly,copy) NSString * localizedFailureReason;
@property (readonly,copy) NSArray * localizedRecoveryOptions;
@property (readonly,copy) NSString * helpAnchor;
@property (readonly,copy) NSString * localizedRecoverySuggestion;
@property (readonly,copy) NSDictionary * userInfo;
JSExportAs(initWithDomainCodeUserInfo,
-(id) jsinitWithDomain: (NSString *) domain code: (NSInteger) code userInfo: (NSDictionary *) dict );
@end
@protocol NSErrorClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
+(id) errorWithDomain: (NSString *) domain code: (NSInteger) code userInfo: (NSDictionary *) dict ;
JSExportAs(setUserInfoValueProviderForDomainProvider,
+(void) jssetUserInfoValueProviderForDomain: (NSString *) errorDomain provider: (JSValue *) provider );
+(id  _Nullable (^)(NSError * _Nonnull, NSString * _Nonnull)) userInfoValueProviderForDomain: (NSString *) errorDomain ;
@end
#pragma clang diagnostic pop