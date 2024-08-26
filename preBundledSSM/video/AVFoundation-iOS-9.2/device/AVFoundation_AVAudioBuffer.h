#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioBuffer_symbols(JSContext*);
@protocol AVAudioPCMBufferInstanceExports<JSExport>
@property (nonatomic) AVAudioFrameCount frameLength;
@property (readonly,nonatomic) NSUInteger stride;
@property (readonly,nonatomic) AVAudioFrameCount frameCapacity;
JSExportAs(initWithPCMFormatFrameCapacity,
-(id) jsinitWithPCMFormat: (AVAudioFormat *) format frameCapacity: (AVAudioFrameCount) frameCapacity );
@end
@protocol AVAudioPCMBufferClassExports<JSExport>
@end
@protocol AVAudioBufferInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_>
@property (readonly,nonatomic) AVAudioFormat * format;
@end
@protocol AVAudioBufferClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_>
@end
@protocol AVAudioCompressedBufferInstanceExports<JSExport>
@property (readonly,nonatomic) AVAudioPacketCount packetCapacity;
@property (readonly,nonatomic) NSInteger maximumPacketSize;
@property (nonatomic) AVAudioPacketCount packetCount;
JSExportAs(initWithFormatPacketCapacity,
-(id) jsinitWithFormat: (AVAudioFormat *) format packetCapacity: (AVAudioPacketCount) packetCapacity );
JSExportAs(initWithFormatPacketCapacityMaximumPacketSize,
-(id) jsinitWithFormat: (AVAudioFormat *) format packetCapacity: (AVAudioPacketCount) packetCapacity maximumPacketSize: (NSInteger) maximumPacketSize );
@end
@protocol AVAudioCompressedBufferClassExports<JSExport>
@end
#pragma clang diagnostic pop