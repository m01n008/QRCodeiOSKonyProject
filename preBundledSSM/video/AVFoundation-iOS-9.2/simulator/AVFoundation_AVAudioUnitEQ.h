#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioUnitEQ_symbols(JSContext*);
@protocol AVAudioUnitEQInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * bands;
@property (nonatomic) float globalGain;
JSExportAs(initWithNumberOfBands,
-(id) jsinitWithNumberOfBands: (NSUInteger) numberOfBands );
@end
@protocol AVAudioUnitEQClassExports<JSExport>
@end
@protocol AVAudioUnitEQFilterParametersInstanceExports<JSExport>
@property (nonatomic) float bandwidth;
@property (nonatomic) float frequency;
@property (nonatomic) AVAudioUnitEQFilterType filterType;
@property (nonatomic) float gain;
@property (nonatomic) BOOL bypass;
@end
@protocol AVAudioUnitEQFilterParametersClassExports<JSExport>
@end
#pragma clang diagnostic pop