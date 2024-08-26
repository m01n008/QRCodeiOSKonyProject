#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVFAudio_AVAudioChannelLayout_symbols(JSContext*);
@protocol AVAudioChannelLayoutInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly,nonatomic) AVAudioChannelCount channelCount;
@property (readonly,nonatomic) AudioChannelLayoutTag layoutTag;
JSExportAs(initWithLayoutTag,
-(id) jsinitWithLayoutTag: (AudioChannelLayoutTag) layoutTag );
-(BOOL) isEqual: (id) object ;
@end
@protocol AVAudioChannelLayoutClassExports<JSExport, NSSecureCodingClassExports_>
+(id) layoutWithLayoutTag: (AudioChannelLayoutTag) layoutTag ;
@end
#pragma clang diagnostic pop