#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVFAudio_AVAudioUnitMIDIInstrument_symbols(JSContext*);
@protocol AVAudioUnitMIDIInstrumentInstanceExports<JSExport, AVAudioMixingInstanceExports_>
-(void) sendMIDIEvent: (uint8_t) midiStatus data1: (uint8_t) data1 ;
-(void) sendPitchBend: (uint16_t) pitchbend onChannel: (uint8_t) channel ;
-(void) sendProgramChange: (uint8_t) program bankMSB: (uint8_t) bankMSB bankLSB: (uint8_t) bankLSB onChannel: (uint8_t) channel ;
-(void) sendPressureForKey: (uint8_t) key withValue: (uint8_t) value onChannel: (uint8_t) channel ;
-(void) startNote: (uint8_t) note withVelocity: (uint8_t) velocity onChannel: (uint8_t) channel ;
-(void) sendController: (uint8_t) controller withValue: (uint8_t) value onChannel: (uint8_t) channel ;
-(void) sendMIDIEvent: (uint8_t) midiStatus data1: (uint8_t) data1 data2: (uint8_t) data2 ;
-(void) sendPressure: (uint8_t) pressure onChannel: (uint8_t) channel ;
-(void) stopNote: (uint8_t) note onChannel: (uint8_t) channel ;
-(void) sendProgramChange: (uint8_t) program onChannel: (uint8_t) channel ;
JSExportAs(initWithAudioComponentDescription,
-(id) jsinitWithAudioComponentDescription: (AudioComponentDescription) description );
-(void) sendMIDISysExEvent: (NSData *) midiData ;
@end
@protocol AVAudioUnitMIDIInstrumentClassExports<JSExport, AVAudioMixingClassExports_>
@end
#pragma clang diagnostic pop