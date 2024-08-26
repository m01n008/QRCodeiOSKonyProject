#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVFAudio_AVMIDIPlayer_symbols(JSContext*);
@protocol AVMIDIPlayerInstanceExports<JSExport>
@property (readonly,nonatomic) NSTimeInterval duration;
@property (nonatomic) NSTimeInterval currentPosition;
@property (nonatomic) float rate;
@property (getter=isPlaying,readonly,nonatomic) BOOL playing;
JSExportAs(initWithDataSoundBankURLError,
-(id) jsinitWithData: (NSData *) data soundBankURL: (NSURL *) bankURL error: (JSValue *) outError );
-(void) stop;
JSExportAs(play,
-(void) jsplay: (JSValue *) completionHandler );
-(void) prepareToPlay;
JSExportAs(initWithContentsOfURLSoundBankURLError,
-(id) jsinitWithContentsOfURL: (NSURL *) inURL soundBankURL: (NSURL *) bankURL error: (JSValue *) outError );
@end
@protocol AVMIDIPlayerClassExports<JSExport>
@end
#pragma clang diagnostic pop