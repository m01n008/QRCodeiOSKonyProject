#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_KonySyncV2_SDKObjectServiceSync_symbols(JSContext*);
@protocol SDKObjectServiceSyncInstanceExports<JSExport>
JSExportAs(initWithNameError,
-(id) jsinitWithName: (NSString *) name error: (JSValue *) error );
JSExportAs(getSdkObjectByNameError,
-(SDKObjectSync *) jsgetSdkObjectByName: (NSString *) objectName error: (JSValue *) error );
JSExportAs(startSyncOnSuccessOnFailureOnProgress,
-(void) jsstartSync: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure onProgress: (JSValue *) onProgress );
JSExportAs(rollbackOnFailure,
-(void) jsrollback: (JSValue *) onSuccess onFailure: (JSValue *) onFailure );
JSExportAs(cancelSyncOnFailure,
-(void) jscancelSync: (JSValue *) onSuccess onFailure: (JSValue *) onFailure );
JSExportAs(clearDataWithOptionsOnSuccessOnFailure,
-(void) jsclearDataWithOptions: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure );
@end
@protocol SDKObjectServiceSyncClassExports<JSExport>
@end
#pragma clang diagnostic pop