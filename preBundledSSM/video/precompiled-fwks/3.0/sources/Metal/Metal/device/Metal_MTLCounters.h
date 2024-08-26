#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLCounters_symbols(JSContext*);
@interface JSValue (Metal_MTLCounters)
+(JSValue*) valueWithMTLCounterResultStageUtilization: (MTLCounterResultStageUtilization) s inContext: (JSContext*) context;
-(MTLCounterResultStageUtilization) toMTLCounterResultStageUtilization;
+(JSValue*) valueWithMTLCounterResultTimestamp: (MTLCounterResultTimestamp) s inContext: (JSContext*) context;
-(MTLCounterResultTimestamp) toMTLCounterResultTimestamp;
+(JSValue*) valueWithMTLCounterResultStatistic: (MTLCounterResultStatistic) s inContext: (JSContext*) context;
-(MTLCounterResultStatistic) toMTLCounterResultStatistic;
@end
@protocol MTLCounterSampleBufferDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readwrite) NSUInteger sampleCount;
@property (readwrite) MTLStorageMode storageMode;
@property (readwrite,retain) id counterSet;
@property (readwrite,copy) NSString * label;
@end
@protocol MTLCounterSampleBufferDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLCounterSetInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,copy) NSString * name;
@property (readonly,copy) NSArray * counters;
@end
@protocol MTLCounterSetClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol MTLCounterSampleBufferInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) id device;
@property (readonly) NSUInteger sampleCount;
@property (readonly) NSString * label;
-(NSData *) resolveCounterRange: (NSRange) range ;
@end
@protocol MTLCounterSampleBufferClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol MTLCounterInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,copy) NSString * name;
@end
@protocol MTLCounterClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop