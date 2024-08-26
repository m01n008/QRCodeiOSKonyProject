#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFICoreImageModules(JSContext* context)
{
	load_CoreImage_CIImageProcessor_symbols(context);
	load_CoreImage_CIFeature_symbols(context);
	load_CoreImage_CIImageProvider_symbols(context);
	load_CoreImage_CIRenderDestination_symbols(context);
	load_CoreImage_CISampler_symbols(context);
	load_CoreImage_CIImage_symbols(context);
	load_CoreImage_CIRAWFilter_symbols(context);
	load_CoreImage_CIContext_symbols(context);
	load_CoreImage_CIVector_symbols(context);
	load_CoreImage_CIKernel_symbols(context);
	load_CoreImage_CIBarcodeDescriptor_symbols(context);
	load_CoreImage_CIFilterShape_symbols(context);
	load_CoreImage_CIFilter_symbols(context);
	load_CoreImage_CIDetector_symbols(context);
	load_CoreImage_CIFilterConstructor_symbols(context);
	load_CoreImage_CIColor_symbols(context);
	load_CoreImage_CIImageAccumulator_symbols(context);
}

JSValue* extractNFICoreImageStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
    
    return nil;
}

BOOL setNFICoreImageStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
    
    return NO;
}

