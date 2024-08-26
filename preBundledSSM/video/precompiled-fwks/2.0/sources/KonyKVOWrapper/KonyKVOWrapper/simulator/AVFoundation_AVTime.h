#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVTime_symbols(JSContext*);
@protocol NSCoderAVTimeCodingCategoryInstanceExports<JSExport>
-(CMTimeMapping) decodeCMTimeMappingForKey: (NSString *) key ;
-(CMTimeRange) decodeCMTimeRangeForKey: (NSString *) key ;
-(void) encodeCMTimeMapping: (CMTimeMapping) timeMapping forKey: (NSString *) key ;
-(CMTime) decodeCMTimeForKey: (NSString *) key ;
-(void) encodeCMTimeRange: (CMTimeRange) timeRange forKey: (NSString *) key ;
-(void) encodeCMTime: (CMTime) time forKey: (NSString *) key ;
@end
@protocol NSCoderAVTimeCodingCategoryClassExports<JSExport>
@end
@protocol NSValueNSValueAVFoundationExtensionsCategoryInstanceExports<JSExport>
@property (readonly) CMTimeRange CMTimeRangeValue;
@property (readonly) CMTimeMapping CMTimeMappingValue;
@property (readonly) CMTime CMTimeValue;
@end
@protocol NSValueNSValueAVFoundationExtensionsCategoryClassExports<JSExport>
+(NSValue *) valueWithCMTimeRange: (CMTimeRange) timeRange ;
+(NSValue *) valueWithCMTime: (CMTime) time ;
+(NSValue *) valueWithCMTimeMapping: (CMTimeMapping) timeMapping ;
@end
#pragma clang diagnostic pop