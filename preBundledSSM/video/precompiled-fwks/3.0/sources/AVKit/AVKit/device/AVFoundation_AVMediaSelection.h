#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVMediaSelection_symbols(JSContext*);
@protocol AVMediaSelectionInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_>
@property (readonly,nonatomic,weak) AVAsset * asset;
-(AVMediaSelectionOption *) selectedMediaOptionInMediaSelectionGroup: (AVMediaSelectionGroup *) mediaSelectionGroup ;
-(BOOL) mediaSelectionCriteriaCanBeAppliedAutomaticallyToMediaSelectionGroup: (AVMediaSelectionGroup *) mediaSelectionGroup ;
@end
@protocol AVMediaSelectionClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_>
@end
@protocol AVMutableMediaSelectionInstanceExports<JSExport>
-(void) selectMediaOption: (AVMediaSelectionOption *) mediaSelectionOption inMediaSelectionGroup: (AVMediaSelectionGroup *) mediaSelectionGroup ;
@end
@protocol AVMutableMediaSelectionClassExports<JSExport>
@end
#pragma clang diagnostic pop