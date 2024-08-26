#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVFAudio_AVAudioEngine_symbols(JSContext*);
@protocol AVAudioEngineInstanceExports<JSExport>
@property (readonly,nonatomic) AVAudioEngineManualRenderingMode manualRenderingMode;
@property (readonly,nonatomic) AVAudioFramePosition manualRenderingSampleTime;
@property (nonatomic) id musicSequence;
@property (readonly,getter=getJsManualRenderingBlock) JSValue* jsmanualRenderingBlock;
@property (getter=isAutoShutdownEnabled,nonatomic) BOOL autoShutdownEnabled;
@property (getter=isRunning,readonly,nonatomic) BOOL running;
@property (readonly,copy) NSSet * attachedNodes;
@property (readonly,nonatomic) AVAudioMixerNode * mainMixerNode;
@property (readonly,nonatomic) AVAudioInputNode * inputNode;
@property (readonly,nonatomic) AVAudioFormat * manualRenderingFormat;
@property (readonly,nonatomic) AVAudioFrameCount manualRenderingMaximumFrameCount;
@property (readonly,nonatomic) AVAudioOutputNode * outputNode;
@property (readonly,nonatomic) BOOL isInManualRenderingMode;
-(NSArray *) outputConnectionPointsForNode: (AVAudioNode *) node outputBus: (AVAudioNodeBus) bus ;
-(void) connect: (AVAudioNode *) node1 to: (AVAudioNode *) node2 format: (AVAudioFormat *) format ;
-(void) disconnectMIDIInput: (AVAudioNode *) node ;
-(void) disableManualRenderingMode;
-(void) connect: (AVAudioNode *) node1 to: (AVAudioNode *) node2 fromBus: (AVAudioNodeBus) bus1 toBus: (AVAudioNodeBus) bus2 format: (AVAudioFormat *) format ;
-(void) pause;
-(void) disconnectNodeInput: (AVAudioNode *) node ;
-(void) prepare;
-(void) disconnectMIDIOutput: (AVAudioNode *) node ;
-(void) disconnectNodeInput: (AVAudioNode *) node bus: (AVAudioNodeBus) bus ;
JSExportAs(enableManualRenderingModeFormatMaximumFrameCountError,
-(BOOL) jsenableManualRenderingMode: (AVAudioEngineManualRenderingMode) mode format: (AVAudioFormat *) pcmFormat maximumFrameCount: (AVAudioFrameCount) maximumFrameCount error: (JSValue *) outError );
-(void) disconnectNodeOutput: (AVAudioNode *) node ;
-(id) jsinit;
-(void) detachNode: (AVAudioNode *) node ;
-(void) stop;
-(AVAudioConnectionPoint *) inputConnectionPointForNode: (AVAudioNode *) node inputBus: (AVAudioNodeBus) bus ;
-(void) connect: (AVAudioNode *) sourceNode toConnectionPoints: (NSArray *) destNodes fromBus: (AVAudioNodeBus) sourceBus format: (AVAudioFormat *) format ;
-(void) reset;
JSExportAs(renderOfflineToBufferError,
-(AVAudioEngineManualRenderingStatus) jsrenderOffline: (AVAudioFrameCount) numberOfFrames toBuffer: (AVAudioPCMBuffer *) buffer error: (JSValue *) outError );
-(void) disconnectMIDI: (AVAudioNode *) sourceNode fromNodes: (NSArray *) destinationNodes ;
JSExportAs(startAndReturnError,
-(BOOL) jsstartAndReturnError: (JSValue *) outError );
-(void) disconnectNodeOutput: (AVAudioNode *) node bus: (AVAudioNodeBus) bus ;
-(void) disconnectMIDI: (AVAudioNode *) sourceNode from: (AVAudioNode *) destinationNode ;
-(void) attachNode: (AVAudioNode *) node ;
@end
@protocol AVAudioEngineClassExports<JSExport>
@end
#pragma clang diagnostic pop