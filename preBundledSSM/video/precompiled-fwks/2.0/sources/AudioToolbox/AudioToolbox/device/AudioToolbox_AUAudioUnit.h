#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AudioToolbox_AUAudioUnit_symbols(JSContext*);
@protocol AUAudioUnitAUAudioInputOutputUnitCategoryInstanceExports<JSExport>
@property (getter=getJsInputHandler,setter=setJsInputHandler:) JSValue* jsinputHandler;
@property (getter=isInputEnabled,nonatomic) BOOL inputEnabled;
@property (getter=getJsOutputProvider,setter=setJsOutputProvider:) JSValue* jsoutputProvider;
@property (getter=isRunning,readonly,nonatomic) BOOL running;
@property (readonly,nonatomic) BOOL canPerformOutput;
@property (readonly,nonatomic) BOOL canPerformInput;
@property (getter=isOutputEnabled,nonatomic) BOOL outputEnabled;
JSExportAs(startHardwareAndReturnError,
-(BOOL) jsstartHardwareAndReturnError: (JSValue *) outError );
-(void) stopHardware;
@end
@protocol AUAudioUnitAUAudioInputOutputUnitCategoryClassExports<JSExport>
@end
@protocol AUAudioUnitBusArrayInstanceExports<JSExport, NSFastEnumerationInstanceExports_>
@property (readonly,nonatomic) NSUInteger count;
@property (getter=isCountChangeable,readonly,nonatomic) BOOL countChangeable;
@property (readonly,assign,nonatomic) AUAudioUnit * ownerAudioUnit;
@property (readonly,nonatomic) AUAudioUnitBusType busType;
JSExportAs(initWithAudioUnitBusType,
-(id) jsinitWithAudioUnit: (AUAudioUnit *) owner busType: (AUAudioUnitBusType) busType );
JSExportAs(setBusCountError,
-(BOOL) jssetBusCount: (NSUInteger) count error: (JSValue *) outError );
-(AUAudioUnitBus *) objectAtIndexedSubscript: (NSUInteger) index ;
JSExportAs(initWithAudioUnitBusTypeBusses,
-(id) jsinitWithAudioUnit: (AUAudioUnit *) owner busType: (AUAudioUnitBusType) busType busses: (NSArray *) busArray );
@end
@protocol AUAudioUnitBusArrayClassExports<JSExport, NSFastEnumerationClassExports_>
@end
@protocol AUAudioUnitInstanceExports<JSExport>
@property (readonly,copy,nonatomic) NSArray * factoryPresets;
@property (readonly,nonatomic) BOOL allParameterValues;
@property (copy,nonatomic) NSArray * channelMap;
@property (copy,nonatomic) NSDictionary * fullState;
@property (readonly,nonatomic) BOOL providesUserInterface;
@property (readonly,copy,nonatomic) NSArray * MIDIOutputNames;
@property (nonatomic) AUAudioFrameCount maximumFramesToRender;
@property (getter=isRenderingOffline,nonatomic) BOOL renderingOffline;
@property (getter=isMusicDeviceOrEffect,readonly,nonatomic) BOOL musicDeviceOrEffect;
@property (copy,nonatomic) NSDictionary * fullStateForDocument;
@property (readonly,nonatomic) NSTimeInterval latency;
@property (readonly,nonatomic) AudioComponentDescription componentDescription;
@property (readonly,nonatomic) BOOL supportsMPE;
@property (readonly,nonatomic) uint32_t componentVersion;
@property (readonly,copy,nonatomic) NSArray * channelCapabilities;
@property (readonly,getter=getJsScheduleParameterBlock) JSValue* jsscheduleParameterBlock;
@property (getter=getJsMIDIOutputEventBlock,setter=setJsMIDIOutputEventBlock:) JSValue* jsMIDIOutputEventBlock;
@property (getter=getJsMusicalContextBlock,setter=setJsMusicalContextBlock:) JSValue* jsmusicalContextBlock;
@property (readonly,nonatomic) AUAudioUnitBusArray * inputBusses;
@property (readonly,nonatomic) AUParameterTree * parameterTree;
@property (copy,nonatomic) NSString * contextName;
@property (readonly,copy,nonatomic) NSString * componentName;
@property (retain,nonatomic) AUAudioUnitPreset * currentPreset;
@property (readonly,nonatomic) id component;
@property (readonly,nonatomic) BOOL renderResourcesAllocated;
@property (readonly,getter=getJsRenderBlock) JSValue* jsrenderBlock;
@property (nonatomic) BOOL shouldBypassEffect;
@property (readonly,copy,nonatomic) NSString * manufacturerName;
@property (readonly,copy,nonatomic) NSString * audioUnitName;
@property (getter=getJsTransportStateBlock,setter=setJsTransportStateBlock:) JSValue* jstransportStateBlock;
@property (readonly,nonatomic) BOOL canProcessInPlace;
@property (readonly,copy,nonatomic) NSString * audioUnitShortName;
@property (readonly,nonatomic) AUAudioUnitBusArray * outputBusses;
@property (readonly,nonatomic) NSInteger virtualMIDICableCount;
@property (readonly,nonatomic) NSTimeInterval tailTime;
@property (nonatomic) NSInteger renderQuality;
@property (readonly,getter=getJsScheduleMIDIEventBlock) JSValue* jsscheduleMIDIEventBlock;
JSExportAs(allocateRenderResourcesAndReturnError,
-(BOOL) jsallocateRenderResourcesAndReturnError: (JSValue *) outError );
-(void) removeRenderObserver: (NSInteger) token ;
JSExportAs(initWithComponentDescriptionError,
-(id) jsinitWithComponentDescription: (AudioComponentDescription) componentDescription error: (JSValue *) outError );
-(void) deallocateRenderResources;
-(NSArray *) parametersForOverviewWithCount: (NSInteger) count ;
JSExportAs(initWithComponentDescriptionOptionsError,
-(id) jsinitWithComponentDescription: (AudioComponentDescription) componentDescription options: (AudioComponentInstantiationOptions) options error: (JSValue *) outError );
-(void) reset;
@end
@protocol AUAudioUnitClassExports<JSExport>
JSExportAs(instantiateWithComponentDescriptionOptionsCompletionHandler,
+(void) jsinstantiateWithComponentDescription: (AudioComponentDescription) componentDescription options: (AudioComponentInstantiationOptions) options completionHandler: (JSValue *) completionHandler );
@end
@protocol AUAudioUnitBusInstanceExports<JSExport>
@property (readonly,copy,nonatomic) NSArray * supportedChannelLayoutTags;
@property (readonly,nonatomic) NSUInteger index;
@property (nonatomic) NSTimeInterval contextPresentationLatency;
@property (copy,nonatomic) NSString * name;
@property (readonly,nonatomic) AVAudioFormat * format;
@property (nonatomic) BOOL shouldAllocateBuffer;
@property (getter=isEnabled,nonatomic) BOOL enabled;
@property (readonly,nonatomic) AUAudioUnitBusType busType;
@property (readonly,assign,nonatomic) AUAudioUnit * ownerAudioUnit;
JSExportAs(setFormatError,
-(BOOL) jssetFormat: (AVAudioFormat *) format error: (JSValue *) outError );
@end
@protocol AUAudioUnitBusClassExports<JSExport>
@end
@protocol AUAudioUnitPresetInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (nonatomic) NSInteger number;
@property (copy,nonatomic) NSString * name;
@end
@protocol AUAudioUnitPresetClassExports<JSExport, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop