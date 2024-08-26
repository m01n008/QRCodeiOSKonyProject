#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_KonySyncV2_SDKObjectSync_symbols(JSContext*);
@protocol SDKObjectSyncInstanceExports<JSExport>
JSExportAs(initWithNameError,
-(id) jsinitWithName: (NSString *) name error: (JSValue *) error );
JSExportAs(initWithNameAndObjectServiceNameError,
-(id) jsinitWithName: (NSString *) name andObjectServiceName: (NSString *) objectServiceName error: (JSValue *) error );
JSExportAs(startSyncOnSuccessOnFailureOnProgress,
-(void) jsstartSync: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure onProgress: (JSValue *) onProgress );
JSExportAs(getPendingRecordsForUploadOnSuccessOnFailure,
-(void) jsgetPendingRecordsForUpload: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure );
JSExportAs(createOptionsOnSuccessOnFailure,
-(void) jscreate: (NSDictionary *) record options: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure );
JSExportAs(updateByPKOptionsOnSuccessOnFailure,
-(void) jsupdateByPK: (NSDictionary *) record options: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure );
JSExportAs(updateOptionsOnSuccessOnFailure,
-(void) jsupdate: (NSDictionary *) record options: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure );
JSExportAs(deleteByPKOnSuccessOnFailure,
-(void) jsdeleteByPK: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure );
JSExportAs(deleteOnSuccessOnFailure,
-(void) jsdelete: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure );
JSExportAs(getOnSuccessOnFailure,
-(void) jsget: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure );
JSExportAs(rollbackOnSuccessOnFailure,
-(void) jsrollback: (NSDictionary *) primaryKeyValueMap onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure );
JSExportAs(getBinaryDownloadStartedHandlerChunkDownloadCompletedHandlerStreamDownloadCompletedHandlerFileDownloadCompletedHandlerDownloadFailureHandler,
-(void) jsgetBinary: (NSDictionary *) options downloadStartedHandler: (JSValue *) fileDownloadStartedCompletionBlock chunkDownloadCompletedHandler: (JSValue *) chunkDownloadCompletedCompletionBlock streamDownloadCompletedHandler: (JSValue *) streamDownloadCompletionBlock fileDownloadCompletedHandler: (JSValue *) fileDownloadCompletedCompletionBlock downloadFailureHandler: (JSValue *) downloadFailureCompletionBlock );
JSExportAs(getBinaryStatusOnSuccessOnFailure,
-(void) jsgetBinaryStatus: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure );
JSExportAs(markForUploadOnSuccessOnFailure,
-(void) jsmarkForUpload: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure );
JSExportAs(getUploadDeferredRecordKeysOnFailure,
-(void) jsgetUploadDeferredRecordKeys: (JSValue *) onSuccess onFailure: (JSValue *) onFailure );
JSExportAs(cancelSyncOnFailure,
-(void) jscancelSync: (JSValue *) onSuccess onFailure: (JSValue *) onFailure );
JSExportAs(clearDataWithOptionsOnSuccessOnFailure,
-(void) jsclearDataWithOptions: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure );
@end
@protocol SDKObjectSyncClassExports<JSExport>
@end
#pragma clang diagnostic pop