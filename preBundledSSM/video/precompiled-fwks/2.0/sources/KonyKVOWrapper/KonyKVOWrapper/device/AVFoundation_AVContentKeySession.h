#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVContentKeySession_symbols(JSContext*);
@protocol AVContentKeyRequestInstanceExports<JSExport>
@property (readonly) AVContentKeyRequestStatus status;
@property (readonly) id identifier;
@property (readonly) BOOL canProvidePersistableContentKey;
@property (readonly,nonatomic) NSData * initializationData;
@property (readonly) NSError * error;
-(void) processContentKeyResponseError: (NSError *) error ;
JSExportAs(makeStreamingContentKeyRequestDataForAppContentIdentifierOptionsCompletionHandler,
-(void) jsmakeStreamingContentKeyRequestDataForApp: (NSData *) appIdentifier contentIdentifier: (NSData *) contentIdentifier options: (NSDictionary *) options completionHandler: (JSValue *) handler );
-(void) processContentKeyResponse: (AVContentKeyResponse *) keyResponse ;
-(void) respondByRequestingPersistableContentKeyRequest;
@end
@protocol AVContentKeyRequestClassExports<JSExport>
@end
@protocol AVContentKeySessionInstanceExports<JSExport>
@property (readonly) NSData * contentProtectionSessionIdentifier;
@property (readonly) AVContentKeySystem keySystem;
@property (readonly) NSURL * storageURL;
@property (readonly,weak) id delegate;
-(void) processContentKeyRequestWithIdentifier: (id) identifier initializationData: (NSData *) initializationData options: (NSDictionary *) options ;
JSExportAs(makeSecureTokenForExpirationDateOfPersistableContentKeyCompletionHandler,
-(void) jsmakeSecureTokenForExpirationDateOfPersistableContentKey: (NSData *) persistableContentKeyData completionHandler: (JSValue *) handler );
-(void) expire;
-(void) renewExpiringResponseDataForContentKeyRequest: (AVContentKeyRequest *) contentKeyRequest ;
@end
@protocol AVContentKeySessionClassExports<JSExport>
+(id) contentKeySessionWithKeySystem: (AVContentKeySystem) keySystem storageDirectoryAtURL: (NSURL *) storageURL ;
+(id) contentKeySessionWithKeySystem: (AVContentKeySystem) keySystem ;
@end
@protocol AVPersistableContentKeyRequestInstanceExports<JSExport>
JSExportAs(persistableContentKeyFromKeyVendorResponseOptionsError,
-(NSData *) jspersistableContentKeyFromKeyVendorResponse: (NSData *) keyVendorResponse options: (NSDictionary *) options error: (JSValue *) outError );
@end
@protocol AVPersistableContentKeyRequestClassExports<JSExport>
@end
@protocol AVContentKeySessionAVContentKeySessionPendingExpiredSessionReportsCategoryInstanceExports<JSExport>
@end
@protocol AVContentKeySessionAVContentKeySessionPendingExpiredSessionReportsCategoryClassExports<JSExport>
+(NSArray *) pendingExpiredSessionReportsWithAppIdentifier: (NSData *) appIdentifier storageDirectoryAtURL: (NSURL *) storageURL ;
+(void) removePendingExpiredSessionReports: (NSArray *) expiredSessionReports withAppIdentifier: (NSData *) appIdentifier storageDirectoryAtURL: (NSURL *) storageURL ;
@end
@protocol AVContentKeyRequestAVContentKeyRequestRenewalCategoryInstanceExports<JSExport>
@property (readonly) BOOL renewsExpiringResponseData;
@end
@protocol AVContentKeyRequestAVContentKeyRequestRenewalCategoryClassExports<JSExport>
@end
@protocol AVContentKeyResponseInstanceExports<JSExport>
@end
@protocol AVContentKeyResponseClassExports<JSExport>
+(id) contentKeyResponseWithFairPlayStreamingKeyResponseData: (NSData *) keyResponseData ;
+(id) contentKeyResponseWithClearKeyData: (NSData *) keyData initializationVector: (NSData *) initializationVector ;
@end
@protocol AVContentKeySessionAVContentKeyRecipientsCategoryInstanceExports<JSExport>
@property (readonly) NSArray * contentKeyRecipients;
-(void) addContentKeyRecipient: (id) recipient ;
-(void) removeContentKeyRecipient: (id) recipient ;
@end
@protocol AVContentKeySessionAVContentKeyRecipientsCategoryClassExports<JSExport>
@end
@protocol AVContentKeyRecipientInstanceExports_<JSExport>
@property (readonly,nonatomic) BOOL mayRequireContentKeysForMediaDataProcessing;
@end
@protocol AVContentKeyRecipientClassExports_<JSExport>
@end
@protocol AVContentKeySessionDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) contentKeySession: (AVContentKeySession *) session didProvideRenewingContentKeyRequest: (AVContentKeyRequest *) keyRequest ;
-(void) contentKeySession: (AVContentKeySession *) session didUpdatePersistableContentKey: (NSData *) persistableContentKey forContentKeyIdentifier: (id) keyIdentifier ;
-(void) contentKeySession: (AVContentKeySession *) session contentKeyRequest: (AVContentKeyRequest *) keyRequest didFailWithError: (NSError *) err ;
-(void) contentKeySessionContentProtectionSessionIdentifierDidChange: (AVContentKeySession *) session ;
-(void) contentKeySession: (AVContentKeySession *) session didProvidePersistableContentKeyRequest: (AVPersistableContentKeyRequest *) keyRequest ;
-(void) contentKeySession: (AVContentKeySession *) session didProvideContentKeyRequest: (AVContentKeyRequest *) keyRequest ;
-(BOOL) contentKeySession: (AVContentKeySession *) session shouldRetryContentKeyRequest: (AVContentKeyRequest *) keyRequest reason: (AVContentKeyRequestRetryReason) retryReason ;
@end
@protocol AVContentKeySessionDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop