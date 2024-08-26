#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAssetDownloadStorageManager_symbols(JSContext*);
@protocol AVAssetDownloadStorageManagerInstanceExports<JSExport>
-(AVAssetDownloadStorageManagementPolicy *) storageManagementPolicyForURL: (NSURL *) downloadStorageURL ;
-(void) setStorageManagementPolicy: (AVAssetDownloadStorageManagementPolicy *) storageManagementPolicy forURL: (NSURL *) downloadStorageURL ;
@end
@protocol AVAssetDownloadStorageManagerClassExports<JSExport>
+(AVAssetDownloadStorageManager *) sharedDownloadStorageManager;
@end
@protocol AVAssetDownloadStorageManagementPolicyInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_>
@property (readonly,copy,nonatomic) AVAssetDownloadedAssetEvictionPriority priority;
@property (readonly,copy,nonatomic) NSDate * expirationDate;
@end
@protocol AVAssetDownloadStorageManagementPolicyClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_>
@end
@protocol AVMutableAssetDownloadStorageManagementPolicyInstanceExports<JSExport>
@property (copy,nonatomic) AVAssetDownloadedAssetEvictionPriority priority;
@property (copy,nonatomic) NSDate * expirationDate;
@end
@protocol AVMutableAssetDownloadStorageManagementPolicyClassExports<JSExport>
@end
#pragma clang diagnostic pop