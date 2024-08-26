#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAssetCache_symbols(JSContext*);
@protocol AVAssetCacheInstanceExports<JSExport>
@property (getter=isPlayableOffline,readonly,nonatomic) BOOL playableOffline;
-(NSArray *) mediaSelectionOptionsInMediaSelectionGroup: (AVMediaSelectionGroup *) mediaSelectionGroup ;
@end
@protocol AVAssetCacheClassExports<JSExport>
@end
#pragma clang diagnostic pop