#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFIAVKitModules(JSContext* context)
{
	load_AVKit_AVRoutePickerView_symbols(context);
	load_AVKit_AVPictureInPictureController_symbols(context);
	load_AVKit_AVPlayerViewController_symbols(context);
	load_AVKit_AVError_symbols(context);
}

JSValue* extractNFIAVKitStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
    
    return nil;
}

BOOL setNFIAVKitStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
    
    return NO;
}

