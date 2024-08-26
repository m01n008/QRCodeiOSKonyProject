#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AudioToolbox_AUAudioUnitImplementation_symbols(JSContext*);
@protocol AUAudioUnitBusArrayAUAudioUnitBusImplementationCategoryInstanceExports<JSExport>
-(void) replaceBusses: (NSArray *) busArray ;
@end
@protocol AUAudioUnitBusArrayAUAudioUnitBusImplementationCategoryClassExports<JSExport>
@end
@protocol AUAudioUnitAUAudioUnitImplementationCategoryInstanceExports<JSExport>
@property (readonly,getter=getJsInternalRenderBlock) JSValue* jsinternalRenderBlock;
@property (readonly,getter=getJsRenderContextObserver) JSValue* jsrenderContextObserver;
@property (nonatomic) NSInteger MIDIOutputBufferSizeHint;
-(void) setRenderResourcesAllocated: (BOOL) flag ;
-(BOOL) shouldChangeToFormat: (AVAudioFormat *) format forBus: (AUAudioUnitBus *) bus ;
@end
@protocol AUAudioUnitAUAudioUnitImplementationCategoryClassExports<JSExport>
JSExportAs(registerSubclassAsComponentDescriptionNameVersion,
+(void) jsregisterSubclass: (JSValue *) cls asComponentDescription: (AudioComponentDescription) componentDescription name: (NSString *) name version: (UInt32) version );
@end
@protocol AUParameterTreeFactoryCategoryInstanceExports<JSExport>
@end
@protocol AUParameterTreeFactoryCategoryClassExports<JSExport>
+(AUParameterGroup *) createGroupFromTemplate: (AUParameterGroup *) templateGroup identifier: (NSString *) identifier name: (NSString *) name addressOffset: (AUParameterAddress) addressOffset ;
+(AUParameterGroup *) createGroupTemplate: (NSArray *) children ;
+(AUParameterGroup *) createGroupWithIdentifier: (NSString *) identifier name: (NSString *) name children: (NSArray *) children ;
+(AUParameter *) createParameterWithIdentifier: (NSString *) identifier name: (NSString *) name address: (AUParameterAddress) address min: (AUValue) min max: (AUValue) max unit: (AudioUnitParameterUnit) unit unitName: (NSString *) unitName flags: (AudioUnitParameterOptions) flags valueStrings: (NSArray *) valueStrings dependentParameters: (NSArray *) dependentParameters ;
+(AUParameterTree *) createTreeWithChildren: (NSArray *) children ;
@end
@protocol AUAudioUnitBusAUAudioUnitImplementationCategoryInstanceExports<JSExport>
@property (nonatomic) AUAudioChannelCount maximumChannelCount;
@property (retain,nonatomic) NSArray * supportedChannelCounts;
JSExportAs(initWithFormatError,
-(id) jsinitWithFormat: (AVAudioFormat *) format error: (JSValue *) outError );
@end
@protocol AUAudioUnitBusAUAudioUnitImplementationCategoryClassExports<JSExport>
@end
@protocol AUAudioUnitV2BridgeInstanceExports<JSExport>
@end
@protocol AUAudioUnitV2BridgeClassExports<JSExport>
@end
@protocol AUParameterNodeAUParameterNodeImplementationCategoryInstanceExports<JSExport>
@property (getter=getJsImplementorValueProvider,setter=setJsImplementorValueProvider:) JSValue* jsimplementorValueProvider;
@property (getter=getJsImplementorValueObserver,setter=setJsImplementorValueObserver:) JSValue* jsimplementorValueObserver;
@property (getter=getJsImplementorValueFromStringCallback,setter=setJsImplementorValueFromStringCallback:) JSValue* jsimplementorValueFromStringCallback;
@property (getter=getJsImplementorDisplayNameWithLengthCallback,setter=setJsImplementorDisplayNameWithLengthCallback:) JSValue* jsimplementorDisplayNameWithLengthCallback;
@property (getter=getJsImplementorStringFromValueCallback,setter=setJsImplementorStringFromValueCallback:) JSValue* jsimplementorStringFromValueCallback;
@end
@protocol AUParameterNodeAUParameterNodeImplementationCategoryClassExports<JSExport>
@end
@protocol AUAudioUnitFactoryInstanceExports_<JSExport, NSExtensionRequestHandlingInstanceExports_>
JSExportAs(createAudioUnitWithComponentDescriptionError,
-(AUAudioUnit *) jscreateAudioUnitWithComponentDescription: (AudioComponentDescription) desc error: (JSValue *) error );
@end
@protocol AUAudioUnitFactoryClassExports_<JSExport, NSExtensionRequestHandlingClassExports_>
@end
#pragma clang diagnostic pop