#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFICoreGraphicsModules(JSContext* context)
{
	load_CoreGraphics_CGPDFPage_symbols(context);
	load_CoreGraphics_CGPDFDocument_symbols(context);
	load_CoreGraphics_CGPDFString_symbols(context);
	load_CoreGraphics_CGColorSpace_symbols(context);
	load_CoreGraphics_CGColor_symbols(context);
	load_CoreGraphics_CGPattern_symbols(context);
	load_CoreGraphics_CGLayer_symbols(context);
	load_CoreGraphics_CGError_symbols(context);
	load_CoreGraphics_CGPath_symbols(context);
	load_CoreGraphics_CGFunction_symbols(context);
	load_CoreGraphics_CGBitmapContext_symbols(context);
	load_CoreGraphics_CGGradient_symbols(context);
	load_CoreGraphics_CGPDFScanner_symbols(context);
	load_CoreGraphics_CGPDFArray_symbols(context);
	load_CoreGraphics_CGAffineTransform_symbols(context);
	load_CoreGraphics_CGGeometry_symbols(context);
	load_CoreGraphics_CGPDFObject_symbols(context);
	load_CoreGraphics_CGPDFStream_symbols(context);
	load_CoreGraphics_CGColorConversionInfo_symbols(context);
	load_CoreGraphics_CGShading_symbols(context);
	load_CoreGraphics_CGImage_symbols(context);
	load_CoreGraphics_CGContext_symbols(context);
	load_CoreGraphics_CGPDFDictionary_symbols(context);
	load_CoreGraphics_CGDataConsumer_symbols(context);
	load_CoreGraphics_CGFont_symbols(context);
	load_CoreGraphics_CGDataProvider_symbols(context);
	load_CoreGraphics_CGPDFContext_symbols(context);
	load_CoreGraphics_CGPDFContentStream_symbols(context);
	load_CoreGraphics_CGPDFOperatorTable_symbols(context);
}

JSValue* extractNFICoreGraphicsStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
	if (strcmp(type, @encode(CGAffineTransform)) == 0) {
		CGAffineTransform argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCGAffineTransform: argument inContext: context];
	} else if (strcmp(type, @encode(CGVector)) == 0) {
		CGVector argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCGVector: argument inContext: context];
	}    
    return nil;
}

BOOL setNFICoreGraphicsStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
	if (strcmp(type, @encode(CGAffineTransform)) == 0) {
		CGAffineTransform returnValue = value.toCGAffineTransform;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CGVector)) == 0) {
		CGVector returnValue = value.toCGVector;
		[invocation setReturnValue: &returnValue];
		return YES;
	}    
    return NO;
}

