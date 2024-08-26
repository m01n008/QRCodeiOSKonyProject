#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioConnectionPoint_symbols(JSContext*);
@protocol AVAudioConnectionPointInstanceExports<JSExport>
@property (readonly,nonatomic,weak) AVAudioNode * node;
@property (readonly,nonatomic) AVAudioNodeBus bus;
JSExportAs(initWithNodeBus,
-(id) jsinitWithNode: (AVAudioNode *) node bus: (AVAudioNodeBus) bus );
@end
@protocol AVAudioConnectionPointClassExports<JSExport>
@end
#pragma clang diagnostic pop