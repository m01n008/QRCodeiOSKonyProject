#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AudioToolbox_CAFFile_symbols(JSContext*);
@interface JSValue (AudioToolbox_CAFFile)
+(JSValue*) valueWithCAFStringID: (CAFStringID) s inContext: (JSContext*) context;
-(CAFStringID) toCAFStringID;
+(JSValue*) valueWithCAFAudioDescription: (CAFAudioDescription) s inContext: (JSContext*) context;
-(CAFAudioDescription) toCAFAudioDescription;
+(JSValue*) valueWithCAFFileHeader: (CAFFileHeader) s inContext: (JSContext*) context;
-(CAFFileHeader) toCAFFileHeader;
+(JSValue*) valueWithCAFInfoStrings: (CAFInfoStrings) s inContext: (JSContext*) context;
-(CAFInfoStrings) toCAFInfoStrings;
+(JSValue*) valueWithCAFPositionPeak: (CAFPositionPeak) s inContext: (JSContext*) context;
-(CAFPositionPeak) toCAFPositionPeak;
+(JSValue*) valueWithCAFOverviewSample: (CAFOverviewSample) s inContext: (JSContext*) context;
-(CAFOverviewSample) toCAFOverviewSample;
+(JSValue*) valueWithCAFChunkHeader: (CAFChunkHeader) s inContext: (JSContext*) context;
-(CAFChunkHeader) toCAFChunkHeader;
+(JSValue*) valueWithCAF_SMPTE_Time: (CAF_SMPTE_Time) s inContext: (JSContext*) context;
-(CAF_SMPTE_Time) toCAF_SMPTE_Time;
+(JSValue*) valueWithCAFInstrumentChunk: (CAFInstrumentChunk) s inContext: (JSContext*) context;
-(CAFInstrumentChunk) toCAFInstrumentChunk;
+(JSValue*) valueWithCAFMarker: (CAFMarker) s inContext: (JSContext*) context;
-(CAFMarker) toCAFMarker;
@end
#pragma clang diagnostic pop