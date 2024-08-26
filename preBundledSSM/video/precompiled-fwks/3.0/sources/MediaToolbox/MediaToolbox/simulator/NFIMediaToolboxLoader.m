#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFIMediaToolboxModules(JSContext* context)
{
	load_MediaToolbox_MTAudioProcessingTap_symbols(context);
	load_MediaToolbox_MTFormatNames_symbols(context);
}

JSValue* extractNFIMediaToolboxStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
    
    return nil;
}

BOOL setNFIMediaToolboxStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
    
    return NO;
}

