#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioEngine_symbols(JSContext*);
@protocol AVAudioEngineInstanceExports<JSExport>
@property (readonly,nonatomic) AVAudioInputNode * inputNode;
@property (getter=isRunning,readonly,nonatomic) BOOL running;
@property (nonatomic) id musicSequence;
@property (readonly,nonatomic) AVAudioOutputNode * outputNode;
@property (readonly,nonatomic) AVAudioMixerNode * mainMixerNode;
-(NSArray *) outputConnectionPointsForNode: (AVAudioNode *) node outputBus: (AVAudioNodeBus) bus ;
-(void) connect: (AVAudioNode *) node1 to: (AVAudioNode *) node2 format: (AVAudioFormat *) format ;
-(void) connect: (AVAudioNode *) node1 to: (AVAudioNode *) node2 fromBus: (AVAudioNodeBus) bus1 toBus: (AVAudioNodeBus) bus2 format: (AVAudioFormat *) format ;
-(void) pause;
-(void) disconnectNodeInput: (AVAudioNode *) node ;
-(void) prepare;
-(void) disconnectNodeInput: (AVAudioNode *) node bus: (AVAudioNodeBus) bus ;
-(void) disconnectNodeOutput: (AVAudioNode *) node ;
-(id) jsinit;
-(void) detachNode: (AVAudioNode *) node ;
-(void) stop;
-(AVAudioConnectionPoint *) inputConnectionPointForNode: (AVAudioNode *) node inputBus: (AVAudioNodeBus) bus ;
-(void) connect: (AVAudioNode *) sourceNode toConnectionPoints: (NSArray *) destNodes fromBus: (AVAudioNodeBus) sourceBus format: (AVAudioFormat *) format ;
-(void) reset;
JSExportAs(startAndReturnError,
-(BOOL) jsstartAndReturnError: (JSValue *) outError );
-(void) disconnectNodeOutput: (AVAudioNode *) node bus: (AVAudioNodeBus) bus ;
-(void) attachNode: (AVAudioNode *) node ;
@end
@protocol AVAudioEngineClassExports<JSExport>
@end
#pragma clang diagnostic pop