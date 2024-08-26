#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Binary_BinaryFileStorageInterface_symbols(JSContext*);
@protocol BinaryFileStorageInterfaceInstanceExports<JSExport>
@end
@protocol BinaryFileStorageInterfaceClassExports<JSExport>
JSExportAs(getFilesWithUrlCriteriaHeadersOnSuccessOnFailureOptions,
+(void) jsgetFilesWithUrl: (NSString *) url criteria: (NSString *) criteria headers: (NSDictionary *) headers onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure options: (NSDictionary *) options );
JSExportAs(uploadBinaryWithUrlInputTypeUploadParamsOnSuccessOnFailureOnProgressOptions,
+(void) jsuploadBinaryWithUrl: (NSString *) url InputType: (NSString *) uploadInputType uploadParams: (NSDictionary *) uploadParams onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure onProgress: (JSValue *) onProgress options: (NSDictionary *) options );
JSExportAs(downloadWithURLParamsOnSuccessOnFailureOnProgressOptions,
+(void) jsdownloadWithURL: (NSString *) url Params: (NSDictionary *) downloadParams onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure onProgress: (JSValue *) onProgress options: (NSDictionary *) options );
JSExportAs(updateWithUrlParamsOnSuccessOnFailureOptions,
+(void) jsupdateWithUrl: (NSString *) url Params: (NSDictionary *) updateParams onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure options: (NSDictionary *) options );
JSExportAs(deleteWithUrlFileIdDeleteParamsHeadersOnSuccessOnFailureOptions,
+(void) jsdeleteWithUrl: (NSString *) url fileId: (NSString *) fileId deleteParams: (NSDictionary *) deleteParams headers: (NSDictionary *) headers onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure options: (NSDictionary *) options );
JSExportAs(deleteByCriteriaDeleteCriteriaHeadersOnSuccessOnFailureOptions,
+(void) jsdeleteByCriteria: (NSString *) url deleteCriteria: (NSDictionary *) deleteCriteria headers: (NSDictionary *) headers onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure options: (NSDictionary *) options );
JSExportAs(abortWithUrlFileIdAbortParamsHeadersOnSuccessOnFailureOptions,
+(void) jsabortWithUrl: (NSString *) url fileId: (NSString *) fileId abortParams: (NSDictionary *) abortParams headers: (NSDictionary *) headers onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure options: (NSDictionary *) options );
@end
#pragma clang diagnostic pop