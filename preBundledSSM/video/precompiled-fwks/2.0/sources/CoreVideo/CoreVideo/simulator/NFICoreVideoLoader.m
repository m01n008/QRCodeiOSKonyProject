#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFICoreVideoModules(JSContext* context)
{
	load_CoreVideo_CVMetalTextureCache_symbols(context);
	load_CoreVideo_CVOpenGLESTextureCache_symbols(context);
	load_CoreVideo_CVBuffer_symbols(context);
	load_CoreVideo_CVPixelBufferPool_symbols(context);
	load_CoreVideo_CVBase_symbols(context);
	load_CoreVideo_CVPixelBuffer_symbols(context);
	load_CoreVideo_CVReturn_symbols(context);
	load_CoreVideo_CVOpenGLESTexture_symbols(context);
	load_CoreVideo_CVImageBuffer_symbols(context);
	load_CoreVideo_CVPixelFormatDescription_symbols(context);
}

JSValue* extractNFICoreVideoStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
	if (strcmp(type, @encode(CVTimeStamp)) == 0) {
		CVTimeStamp argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCVTimeStamp: argument inContext: context];
	} else if (strcmp(type, @encode(CVSMPTETime)) == 0) {
		CVSMPTETime argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCVSMPTETime: argument inContext: context];
	} else if (strcmp(type, @encode(CVTime)) == 0) {
		CVTime argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCVTime: argument inContext: context];
	} else if (strcmp(type, @encode(CVPlanarPixelBufferInfo_YCbCrPlanar)) == 0) {
		CVPlanarPixelBufferInfo_YCbCrPlanar argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCVPlanarPixelBufferInfo_YCbCrPlanar: argument inContext: context];
	} else if (strcmp(type, @encode(CVPlanarPixelBufferInfo_YCbCrBiPlanar)) == 0) {
		CVPlanarPixelBufferInfo_YCbCrBiPlanar argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCVPlanarPixelBufferInfo_YCbCrBiPlanar: argument inContext: context];
	} else if (strcmp(type, @encode(CVPlanarComponentInfo)) == 0) {
		CVPlanarComponentInfo argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCVPlanarComponentInfo: argument inContext: context];
	}    
    return nil;
}

BOOL setNFICoreVideoStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
	if (strcmp(type, @encode(CVTimeStamp)) == 0) {
		CVTimeStamp returnValue = value.toCVTimeStamp;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CVSMPTETime)) == 0) {
		CVSMPTETime returnValue = value.toCVSMPTETime;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CVTime)) == 0) {
		CVTime returnValue = value.toCVTime;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CVPlanarPixelBufferInfo_YCbCrPlanar)) == 0) {
		CVPlanarPixelBufferInfo_YCbCrPlanar returnValue = value.toCVPlanarPixelBufferInfo_YCbCrPlanar;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CVPlanarPixelBufferInfo_YCbCrBiPlanar)) == 0) {
		CVPlanarPixelBufferInfo_YCbCrBiPlanar returnValue = value.toCVPlanarPixelBufferInfo_YCbCrBiPlanar;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CVPlanarComponentInfo)) == 0) {
		CVPlanarComponentInfo returnValue = value.toCVPlanarComponentInfo;
		[invocation setReturnValue: &returnValue];
		return YES;
	}    
    return NO;
}

