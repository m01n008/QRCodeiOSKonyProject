#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVPictureInPictureController (Exports)
-(id) jsinitWithPlayerLayer: (AVPlayerLayer *) playerLayer 
{
	id resultVal__;
	resultVal__ = [[self initWithPlayerLayer: playerLayer ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVPictureInPictureController class], @protocol(AVPictureInPictureControllerInstanceExports));
	class_addProtocol([AVPictureInPictureController class], @protocol(AVPictureInPictureControllerClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void AVKit_AVPictureInPictureControllerProtocols()
{
	(void)@protocol(AVPictureInPictureControllerDelegate);
}
void load_AVKit_AVPictureInPictureController_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
