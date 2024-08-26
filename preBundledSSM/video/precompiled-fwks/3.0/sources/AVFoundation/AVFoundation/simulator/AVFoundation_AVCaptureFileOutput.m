#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVCaptureMovieFileOutput (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
+(id) jsnew
{
	id resultVal__;
	resultVal__ = [[self new] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVCaptureMovieFileOutput class], @protocol(AVCaptureMovieFileOutputInstanceExports));
	class_addProtocol([AVCaptureMovieFileOutput class], @protocol(AVCaptureMovieFileOutputClassExports));
	class_addProtocol([AVCaptureFileOutput class], @protocol(AVCaptureFileOutputInstanceExports));
	class_addProtocol([AVCaptureFileOutput class], @protocol(AVCaptureFileOutputClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void AVFoundation_AVCaptureFileOutputProtocols()
{
	(void)@protocol(AVCaptureFileOutputRecordingDelegate);
}
void load_AVFoundation_AVCaptureFileOutput_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
