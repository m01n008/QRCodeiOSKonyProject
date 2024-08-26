#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVPlayerItemMediaDataCollector_symbols(JSContext*);
@protocol AVPlayerItemMetadataCollectorInstanceExports<JSExport>
@property (readonly,nonatomic,weak) id delegate;
JSExportAs(initWithIdentifiersClassifyingLabels,
-(id) jsinitWithIdentifiers: (NSArray *) identifiers classifyingLabels: (NSArray *) classifyingLabels );
@end
@protocol AVPlayerItemMetadataCollectorClassExports<JSExport>
@end
@protocol AVPlayerItemMediaDataCollectorInstanceExports<JSExport>
@end
@protocol AVPlayerItemMediaDataCollectorClassExports<JSExport>
@end
@protocol AVPlayerItemMetadataCollectorPushDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) metadataCollector: (AVPlayerItemMetadataCollector *) metadataCollector didCollectDateRangeMetadataGroups: (NSArray *) metadataGroups indexesOfNewGroups: (NSIndexSet *) indexesOfNewGroups indexesOfModifiedGroups: (NSIndexSet *) indexesOfModifiedGroups ;
@end
@protocol AVPlayerItemMetadataCollectorPushDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop