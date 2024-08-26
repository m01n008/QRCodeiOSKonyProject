#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreMIDI_MIDIMessages)
+(JSValue*) valueWithMIDIMessage_96: (MIDIMessage_96) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"word0": @(s.word0),
		@"word1": @(s.word1),
		@"word2": @(s.word2),
	} inContext: context];
}
-(MIDIMessage_96) toMIDIMessage_96 {
	return (MIDIMessage_96) {
		(UInt32) [self[@"word0"] toUInt32],
		(UInt32) [self[@"word1"] toUInt32],
		(UInt32) [self[@"word2"] toUInt32],
	};
}
+(JSValue*) valueWithMIDIMessage_128: (MIDIMessage_128) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"word0": @(s.word0),
		@"word1": @(s.word1),
		@"word2": @(s.word2),
		@"word3": @(s.word3),
	} inContext: context];
}
-(MIDIMessage_128) toMIDIMessage_128 {
	return (MIDIMessage_128) {
		(UInt32) [self[@"word0"] toUInt32],
		(UInt32) [self[@"word1"] toUInt32],
		(UInt32) [self[@"word2"] toUInt32],
		(UInt32) [self[@"word3"] toUInt32],
	};
}
+(JSValue*) valueWithMIDIMessage_64: (MIDIMessage_64) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"word0": @(s.word0),
		@"word1": @(s.word1),
	} inContext: context];
}
-(MIDIMessage_64) toMIDIMessage_64 {
	return (MIDIMessage_64) {
		(UInt32) [self[@"word0"] toUInt32],
		(UInt32) [self[@"word1"] toUInt32],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"MIDI2RelRegisteredControl"] = ^MIDIMessage_64(UInt8 arg0, UInt8 arg1, UInt8 arg2, UInt8 arg3, UInt32 arg4) {
		return MIDI2RelRegisteredControl(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"MIDI2RelAssignableControl"] = ^MIDIMessage_64(UInt8 arg0, UInt8 arg1, UInt8 arg2, UInt8 arg3, UInt32 arg4) {
		return MIDI2RelAssignableControl(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"MIDI2ProgramChange"] = ^MIDIMessage_64(UInt8 arg0, UInt8 arg1, _Bool arg2, UInt8 arg3, UInt8 arg4, UInt8 arg5) {
		return MIDI2ProgramChange(arg0, arg1, arg2, arg3, arg4, arg5);
	};
	context[@"MIDI2RegisteredControl"] = ^MIDIMessage_64(UInt8 arg0, UInt8 arg1, UInt8 arg2, UInt8 arg3, UInt32 arg4) {
		return MIDI2RegisteredControl(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"MIDI2AssignablePNC"] = ^MIDIMessage_64(UInt8 arg0, UInt8 arg1, UInt8 arg2, UInt8 arg3, UInt32 arg4) {
		return MIDI2AssignablePNC(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"MIDI1UPChannelVoiceMessage"] = ^MIDIMessage_32(UInt8 arg0, UInt8 arg1, UInt8 arg2, UInt8 arg3, UInt8 arg4) {
		return MIDI1UPChannelVoiceMessage(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"MIDI2ControlChange"] = ^MIDIMessage_64(UInt8 arg0, UInt8 arg1, UInt8 arg2, UInt32 arg3) {
		return MIDI2ControlChange(arg0, arg1, arg2, arg3);
	};
	context[@"MIDI1UPControlChange"] = ^MIDIMessage_32(UInt8 arg0, UInt8 arg1, UInt8 arg2, UInt8 arg3) {
		return MIDI1UPControlChange(arg0, arg1, arg2, arg3);
	};
	context[@"MIDI1UPSystemCommon"] = ^MIDIMessage_32(UInt8 arg0, UInt8 arg1, UInt8 arg2, UInt8 arg3) {
		return MIDI1UPSystemCommon(arg0, arg1, arg2, arg3);
	};
	context[@"MIDI2PitchBend"] = ^MIDIMessage_64(UInt8 arg0, UInt8 arg1, UInt32 arg2) {
		return MIDI2PitchBend(arg0, arg1, arg2);
	};
	context[@"MIDI2PerNotePitchBend"] = ^MIDIMessage_64(UInt8 arg0, UInt8 arg1, UInt8 arg2, UInt32 arg3) {
		return MIDI2PerNotePitchBend(arg0, arg1, arg2, arg3);
	};
	context[@"MIDI1UPNoteOn"] = ^MIDIMessage_32(UInt8 arg0, UInt8 arg1, UInt8 arg2, UInt8 arg3) {
		return MIDI1UPNoteOn(arg0, arg1, arg2, arg3);
	};
	context[@"MIDI2AssignableControl"] = ^MIDIMessage_64(UInt8 arg0, UInt8 arg1, UInt8 arg2, UInt8 arg3, UInt32 arg4) {
		return MIDI2AssignableControl(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"MIDI1UPNoteOff"] = ^MIDIMessage_32(UInt8 arg0, UInt8 arg1, UInt8 arg2, UInt8 arg3) {
		return MIDI1UPNoteOff(arg0, arg1, arg2, arg3);
	};
	context[@"MIDIMessageTypeForUPWord"] = ^MIDIMessageType(const UInt32 arg0) {
		return MIDIMessageTypeForUPWord(arg0);
	};
	context[@"MIDI2PerNoteManagment"] = ^MIDIMessage_64(UInt8 arg0, UInt8 arg1, UInt8 arg2, _Bool arg3, _Bool arg4) {
		return MIDI2PerNoteManagment(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"MIDI2PolyPressure"] = ^MIDIMessage_64(UInt8 arg0, UInt8 arg1, UInt8 arg2, UInt32 arg3) {
		return MIDI2PolyPressure(arg0, arg1, arg2, arg3);
	};
	context[@"MIDI2NoteOn"] = ^MIDIMessage_64(UInt8 arg0, UInt8 arg1, UInt8 arg2, UInt8 arg3, UInt16 arg4, UInt16 arg5) {
		return MIDI2NoteOn(arg0, arg1, arg2, arg3, arg4, arg5);
	};
	context[@"MIDI2RegisteredPNC"] = ^MIDIMessage_64(UInt8 arg0, UInt8 arg1, UInt8 arg2, UInt8 arg3, UInt32 arg4) {
		return MIDI2RegisteredPNC(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"MIDI2ChannelVoiceMessage"] = ^MIDIMessage_64(UInt8 arg0, UInt8 arg1, UInt8 arg2, UInt16 arg3, UInt32 arg4) {
		return MIDI2ChannelVoiceMessage(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"MIDI2NoteOff"] = ^MIDIMessage_64(UInt8 arg0, UInt8 arg1, UInt8 arg2, UInt8 arg3, UInt16 arg4, UInt16 arg5) {
		return MIDI2NoteOff(arg0, arg1, arg2, arg3, arg4, arg5);
	};
	context[@"MIDI1UPPitchBend"] = ^MIDIMessage_32(UInt8 arg0, UInt8 arg1, UInt8 arg2, UInt8 arg3) {
		return MIDI1UPPitchBend(arg0, arg1, arg2, arg3);
	};
	context[@"MIDI2ChannelPressure"] = ^MIDIMessage_64(UInt8 arg0, UInt8 arg1, UInt32 arg2) {
		return MIDI2ChannelPressure(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kMIDIMessageTypeUtility"] = @0U;
	context[@"kMIDIMessageTypeSystem"] = @1U;
	context[@"kMIDIMessageTypeChannelVoice1"] = @2U;
	context[@"kMIDIMessageTypeSysEx"] = @3U;
	context[@"kMIDIMessageTypeChannelVoice2"] = @4U;
	context[@"kMIDIMessageTypeData128"] = @5U;

	context[@"kMIDICVStatusNoteOff"] = @8U;
	context[@"kMIDICVStatusNoteOn"] = @9U;
	context[@"kMIDICVStatusPolyPressure"] = @10U;
	context[@"kMIDICVStatusControlChange"] = @11U;
	context[@"kMIDICVStatusProgramChange"] = @12U;
	context[@"kMIDICVStatusChannelPressure"] = @13U;
	context[@"kMIDICVStatusPitchBend"] = @14U;
	context[@"kMIDICVStatusRegisteredPNC"] = @0U;
	context[@"kMIDICVStatusAssignablePNC"] = @1U;
	context[@"kMIDICVStatusRegisteredControl"] = @2U;
	context[@"kMIDICVStatusAssignableControl"] = @3U;
	context[@"kMIDICVStatusRelRegisteredControl"] = @4U;
	context[@"kMIDICVStatusRelAssignableControl"] = @5U;
	context[@"kMIDICVStatusPerNotePitchBend"] = @6U;
	context[@"kMIDICVStatusPerNoteMgmt"] = @15U;

	context[@"kMIDIStatusStartOfExclusive"] = @240U;
	context[@"kMIDIStatusEndOfExclusive"] = @247U;
	context[@"kMIDIStatusMTC"] = @241U;
	context[@"kMIDIStatusSongPosPointer"] = @242U;
	context[@"kMIDIStatusSongSelect"] = @243U;
	context[@"kMIDIStatusTuneRequest"] = @246U;
	context[@"kMIDIStatusTimingClock"] = @248U;
	context[@"kMIDIStatusStart"] = @250U;
	context[@"kMIDIStatusContinue"] = @251U;
	context[@"kMIDIStatusStop"] = @252U;
	context[@"kMIDIStatusActiveSending"] = @254U;
	context[@"kMIDIStatusSystemReset"] = @255U;

	context[@"kMIDISysExStatusComplete"] = @0U;
	context[@"kMIDISysExStatusStart"] = @1U;
	context[@"kMIDISysExStatusContinue"] = @2U;
	context[@"kMIDISysExStatusEnd"] = @3U;

	context[@"kMIDINoteAttributeNone"] = @0;
	context[@"kMIDINoteAttributeManufacturerSpecific"] = @1;
	context[@"kMIDINoteAttributeProfileSpecific"] = @2;
	context[@"kMIDINoteAttributePitch"] = @3;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreMIDI_MIDIMessages_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
