#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVTimedMetadataGroup_symbols(JSContext*);
@protocol AVTimedMetadataGroupAVTimedMetadataGroupSerializationSupportCategoryInstanceExports<JSExport>
-(id) copyFormatDescription;
@end
@protocol AVTimedMetadataGroupAVTimedMetadataGroupSerializationSupportCategoryClassExports<JSExport>
@end
@protocol AVTimedMetadataGroupInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_>
@property (readonly,copy,nonatomic) NSArray * items;
@property (readonly,nonatomic) CMTimeRange timeRange;
JSExportAs(initWithSampleBuffer,
-(id) jsinitWithSampleBuffer: (id) sampleBuffer );
JSExportAs(initWithItemsTimeRange,
-(id) jsinitWithItems: (NSArray *) items timeRange: (CMTimeRange) timeRange );
@end
@protocol AVTimedMetadataGroupClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_>
@end
@protocol AVDateRangeMetadataGroupInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_>
@property (readonly,copy,nonatomic) NSDate * startDate;
@property (readonly,copy,nonatomic) NSDate * endDate;
@property (readonly,copy,nonatomic) NSArray * items;
JSExportAs(initWithItemsStartDateEndDate,
-(id) jsinitWithItems: (NSArray *) items startDate: (NSDate *) startDate endDate: (NSDate *) endDate );
@end
@protocol AVDateRangeMetadataGroupClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_>
@end
@protocol AVMutableTimedMetadataGroupInstanceExports<JSExport>
@property (readwrite,copy,nonatomic) NSArray * items;
@property (readwrite,nonatomic) CMTimeRange timeRange;
@end
@protocol AVMutableTimedMetadataGroupClassExports<JSExport>
@end
@protocol AVMutableDateRangeMetadataGroupInstanceExports<JSExport>
@property (readwrite,copy,nonatomic) NSDate * startDate;
@property (readwrite,copy,nonatomic) NSDate * endDate;
@property (readwrite,copy,nonatomic) NSArray * items;
@end
@protocol AVMutableDateRangeMetadataGroupClassExports<JSExport>
@end
@protocol AVMetadataGroupInstanceExports<JSExport>
@property (readonly,copy,nonatomic) NSArray * items;
@end
@protocol AVMetadataGroupClassExports<JSExport>
@end
#pragma clang diagnostic pop