#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioTypes_symbols(JSContext*);
@interface JSValue (AVFoundation_AVAudioTypes)
+(JSValue*) valueWithAVAudio3DPoint: (AVAudio3DPoint) s inContext: (JSContext*) context;
-(AVAudio3DPoint) toAVAudio3DPoint;
+(JSValue*) valueWithAVAudio3DAngularOrientation: (AVAudio3DAngularOrientation) s inContext: (JSContext*) context;
-(AVAudio3DAngularOrientation) toAVAudio3DAngularOrientation;
+(JSValue*) valueWithAVAudio3DVectorOrientation: (AVAudio3DVectorOrientation) s inContext: (JSContext*) context;
-(AVAudio3DVectorOrientation) toAVAudio3DVectorOrientation;
@end
#pragma clang diagnostic pop