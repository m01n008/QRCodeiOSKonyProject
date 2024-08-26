#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioConverter_symbols(JSContext*);
@interface JSValue (AVFoundation_AVAudioConverter)
+(JSValue*) valueWithAVAudioConverterPrimeInfo: (AVAudioConverterPrimeInfo) s inContext: (JSContext*) context;
-(AVAudioConverterPrimeInfo) toAVAudioConverterPrimeInfo;
@end
@protocol AVAudioConverterInstanceExports<JSExport>
@property (readonly,nonatomic) AVAudioFormat * outputFormat;
@property (retain,nonatomic) NSArray * channelMap;
@property (retain,nonatomic) NSData * magicCookie;
@property (readonly,nonatomic) AVAudioFormat * inputFormat;
@property (retain,nonatomic) NSString * sampleRateConverterAlgorithm;
@property (nonatomic) AVAudioConverterPrimeInfo primeInfo;
@property (nonatomic) BOOL downmix;
@property (nonatomic) AVAudioConverterPrimeMethod primeMethod;
@property (nonatomic) NSInteger sampleRateConverterQuality;
@property (nonatomic) BOOL dither;
JSExportAs(initFromFormatToFormat,
-(id) jsinitFromFormat: (AVAudioFormat *) fromFormat toFormat: (AVAudioFormat *) toFormat );
JSExportAs(convertToBufferFromBufferError,
-(BOOL) jsconvertToBuffer: (AVAudioPCMBuffer *) outputBuffer fromBuffer: (const AVAudioPCMBuffer *) inputBuffer error: (JSValue *) outError );
-(void) reset;
@end
@protocol AVAudioConverterClassExports<JSExport>
@end
@protocol AVAudioConverterEncodingCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * availableEncodeSampleRates;
@property (readonly,nonatomic) NSArray * availableEncodeBitRates;
@property (retain,nonatomic) NSString * bitRateStrategy;
@property (readonly,nonatomic) NSInteger maximumOutputPacketSize;
@property (readonly,nonatomic) NSArray * applicableEncodeSampleRates;
@property (readonly,nonatomic) NSArray * applicableEncodeBitRates;
@property (nonatomic) NSInteger bitRate;
@property (readonly,nonatomic) NSArray * availableEncodeChannelLayoutTags;
@end
@protocol AVAudioConverterEncodingCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop