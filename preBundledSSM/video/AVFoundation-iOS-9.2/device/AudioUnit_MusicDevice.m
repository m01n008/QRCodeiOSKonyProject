#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AudioUnit_MusicDevice)
+(JSValue*) valueWithNoteParamsControlValue: (NoteParamsControlValue) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mID": @(s.mID),
		@"mValue": @(s.mValue),
	} inContext: context];
}
-(NoteParamsControlValue) toNoteParamsControlValue {
	return (NoteParamsControlValue) {
		(AudioUnitParameterID) [self[@"mID"] toDouble],
		(AudioUnitParameterValue) [self[@"mValue"] toDouble],
	};
}
+(JSValue*) valueWithMusicDeviceStdNoteParams: (MusicDeviceStdNoteParams) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"argCount": @(s.argCount),
		@"mPitch": @(s.mPitch),
		@"mVelocity": @(s.mVelocity),
	} inContext: context];
}
-(MusicDeviceStdNoteParams) toMusicDeviceStdNoteParams {
	return (MusicDeviceStdNoteParams) {
		(UInt32) [self[@"argCount"] toDouble],
		(Float32) [self[@"mPitch"] toDouble],
		(Float32) [self[@"mVelocity"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kMusicNoteEvent_UseGroupInstrument"] = @4294967295U;
	context[@"kMusicNoteEvent_Unused"] = @4294967295U;

	context[@"kMusicDeviceRange"] = @256;
	context[@"kMusicDeviceMIDIEventSelect"] = @257;
	context[@"kMusicDeviceSysExSelect"] = @258;
	context[@"kMusicDevicePrepareInstrumentSelect"] = @259;
	context[@"kMusicDeviceReleaseInstrumentSelect"] = @260;
	context[@"kMusicDeviceStartNoteSelect"] = @261;
	context[@"kMusicDeviceStopNoteSelect"] = @262;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioUnit_MusicDevice_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
