#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVComposition_symbols(JSContext*);
@protocol AVCompositionAVCompositionTrackInspectionCategoryInstanceExports<JSExport>
-(AVCompositionTrack *) trackWithTrackID: (CMPersistentTrackID) trackID ;
-(NSArray *) tracksWithMediaCharacteristic: (NSString *) mediaCharacteristic ;
-(NSArray *) tracksWithMediaType: (NSString *) mediaType ;
@end
@protocol AVCompositionAVCompositionTrackInspectionCategoryClassExports<JSExport>
@end
@protocol AVCompositionInstanceExports<JSExport, NSMutableCopyingInstanceExports_>
@property (readonly,copy,nonatomic) NSDictionary * URLAssetInitializationOptions;
@property (readonly,nonatomic) NSArray * tracks;
@property (readonly,nonatomic) CGSize naturalSize;
@end
@protocol AVCompositionClassExports<JSExport, NSMutableCopyingClassExports_>
@end
@protocol AVMutableCompositionAVMutableCompositionCompositionLevelEditingCategoryInstanceExports<JSExport>
-(void) insertEmptyTimeRange: (CMTimeRange) timeRange ;
-(void) removeTimeRange: (CMTimeRange) timeRange ;
JSExportAs(insertTimeRangeOfAssetAtTimeError,
-(BOOL) jsinsertTimeRange: (CMTimeRange) timeRange ofAsset: (AVAsset *) asset atTime: (CMTime) startTime error: (JSValue *) outError );
-(void) scaleTimeRange: (CMTimeRange) timeRange toDuration: (CMTime) duration ;
@end
@protocol AVMutableCompositionAVMutableCompositionCompositionLevelEditingCategoryClassExports<JSExport>
@end
@protocol AVMutableCompositionInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * tracks;
@property (nonatomic) CGSize naturalSize;
@end
@protocol AVMutableCompositionClassExports<JSExport>
+(id) compositionWithURLAssetInitializationOptions: (NSDictionary *) URLAssetInitializationOptions ;
+(id) composition;
@end
@protocol AVMutableCompositionAVMutableCompositionTrackInspectionCategoryInstanceExports<JSExport>
-(AVMutableCompositionTrack *) trackWithTrackID: (CMPersistentTrackID) trackID ;
-(NSArray *) tracksWithMediaCharacteristic: (NSString *) mediaCharacteristic ;
-(NSArray *) tracksWithMediaType: (NSString *) mediaType ;
@end
@protocol AVMutableCompositionAVMutableCompositionTrackInspectionCategoryClassExports<JSExport>
@end
@protocol AVMutableCompositionAVMutableCompositionTrackLevelEditingCategoryInstanceExports<JSExport>
-(void) removeTrack: (AVCompositionTrack *) track ;
-(AVMutableCompositionTrack *) mutableTrackCompatibleWithTrack: (AVAssetTrack *) track ;
-(AVMutableCompositionTrack *) addMutableTrackWithMediaType: (NSString *) mediaType preferredTrackID: (CMPersistentTrackID) preferredTrackID ;
@end
@protocol AVMutableCompositionAVMutableCompositionTrackLevelEditingCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop