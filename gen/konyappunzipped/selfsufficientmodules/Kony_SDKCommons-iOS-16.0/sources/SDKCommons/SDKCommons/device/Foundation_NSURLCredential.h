#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURLCredential_symbols(JSContext*);
@protocol NSURLCredentialInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_>
@property (readonly) NSURLCredentialPersistence persistence;
@end
@protocol NSURLCredentialClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_>
@end
@protocol NSURLCredentialNSInternetPasswordCategoryInstanceExports<JSExport>
@property (readonly,copy) NSString * user;
@property (readonly,copy) NSString * password;
@property (readonly) BOOL hasPassword;
JSExportAs(initWithUserPasswordPersistence,
-(id) jsinitWithUser: (NSString *) user password: (NSString *) password persistence: (NSURLCredentialPersistence) persistence );
@end
@protocol NSURLCredentialNSInternetPasswordCategoryClassExports<JSExport>
+(NSURLCredential *) credentialWithUser: (NSString *) user password: (NSString *) password persistence: (NSURLCredentialPersistence) persistence ;
@end
@protocol NSURLCredentialNSClientCertificateCategoryInstanceExports<JSExport>
@property (readonly) id identity;
@property (readonly,copy) NSArray * certificates;
JSExportAs(initWithIdentityCertificatesPersistence,
-(id) jsinitWithIdentity: (id) identity certificates: (NSArray *) certArray persistence: (NSURLCredentialPersistence) persistence );
@end
@protocol NSURLCredentialNSClientCertificateCategoryClassExports<JSExport>
+(NSURLCredential *) credentialWithIdentity: (id) identity certificates: (NSArray *) certArray persistence: (NSURLCredentialPersistence) persistence ;
@end
@protocol NSURLCredentialNSServerTrustCategoryInstanceExports<JSExport>
JSExportAs(initWithTrust,
-(id) jsinitWithTrust: (id) trust );
@end
@protocol NSURLCredentialNSServerTrustCategoryClassExports<JSExport>
+(NSURLCredential *) credentialForTrust: (id) trust ;
@end
#pragma clang diagnostic pop