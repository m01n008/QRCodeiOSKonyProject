#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURLCredentialStorage_symbols(JSContext*);
@protocol NSURLCredentialStorageInstanceExports<JSExport>
@property (readonly,copy) NSDictionary * allCredentials;
-(NSDictionary *) credentialsForProtectionSpace: (NSURLProtectionSpace *) space ;
-(void) setCredential: (NSURLCredential *) credential forProtectionSpace: (NSURLProtectionSpace *) space ;
-(void) removeCredential: (NSURLCredential *) credential forProtectionSpace: (NSURLProtectionSpace *) space ;
-(void) removeCredential: (NSURLCredential *) credential forProtectionSpace: (NSURLProtectionSpace *) space options: (NSDictionary *) options ;
-(NSURLCredential *) defaultCredentialForProtectionSpace: (NSURLProtectionSpace *) space ;
-(void) setDefaultCredential: (NSURLCredential *) credential forProtectionSpace: (NSURLProtectionSpace *) space ;
@end
@protocol NSURLCredentialStorageClassExports<JSExport>
+(NSURLCredentialStorage *) sharedCredentialStorage;
@end
@protocol NSURLCredentialStorageNSURLSessionTaskAdditionsCategoryInstanceExports<JSExport>
JSExportAs(getCredentialsForProtectionSpaceTaskCompletionHandler,
-(void) jsgetCredentialsForProtectionSpace: (NSURLProtectionSpace *) protectionSpace task: (NSURLSessionTask *) task completionHandler: (JSValue *) completionHandler );
-(void) setCredential: (NSURLCredential *) credential forProtectionSpace: (NSURLProtectionSpace *) protectionSpace task: (NSURLSessionTask *) task ;
-(void) removeCredential: (NSURLCredential *) credential forProtectionSpace: (NSURLProtectionSpace *) protectionSpace options: (NSDictionary *) options task: (NSURLSessionTask *) task ;
JSExportAs(getDefaultCredentialForProtectionSpaceTaskCompletionHandler,
-(void) jsgetDefaultCredentialForProtectionSpace: (NSURLProtectionSpace *) space task: (NSURLSessionTask *) task completionHandler: (JSValue *) completionHandler );
-(void) setDefaultCredential: (NSURLCredential *) credential forProtectionSpace: (NSURLProtectionSpace *) protectionSpace task: (NSURLSessionTask *) task ;
@end
@protocol NSURLCredentialStorageNSURLSessionTaskAdditionsCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop