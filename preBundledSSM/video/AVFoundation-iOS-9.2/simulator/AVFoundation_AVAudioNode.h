#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioNode_symbols(JSContext*);
@protocol AVAudioNodeInstanceExports<JSExport>
@property (readonly,nonatomic) AVAudioEngine * engine;
@property (readonly,nonatomic) AVAudioTime * lastRenderTime;
@property (readonly,nonatomic) NSUInteger numberOfInputs;
@property (readonly,nonatomic) NSUInteger numberOfOutputs;
-(void) reset;
JSExportAs(installTapOnBusBufferSizeFormatBlock,
-(void) jsinstallTapOnBus: (AVAudioNodeBus) bus bufferSize: (AVAudioFrameCount) bufferSize format: (AVAudioFormat *) format block: (JSValue *) tapBlock );
-(void) removeTapOnBus: (AVAudioNodeBus) bus ;
-(NSString *) nameForOutputBus: (AVAudioNodeBus) bus ;
-(NSString *) nameForInputBus: (AVAudioNodeBus) bus ;
-(AVAudioFormat *) inputFormatForBus: (AVAudioNodeBus) bus ;
-(AVAudioFormat *) outputFormatForBus: (AVAudioNodeBus) bus ;
@end
@protocol AVAudioNodeClassExports<JSExport>
@end
#pragma clang diagnostic pop