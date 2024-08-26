#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFIImageIOModules(JSContext* context)
{
	load_ImageIO_CGImageMetadata_symbols(context);
	load_ImageIO_CGImageProperties_symbols(context);
	load_ImageIO_CGImageDestination_symbols(context);
	load_ImageIO_CGImageSource_symbols(context);
}

JSValue* extractNFIImageIOStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
    
    return nil;
}

BOOL setNFIImageIOStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
    
    return NO;
}

