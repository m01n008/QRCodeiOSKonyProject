#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVPlayerItemLegibleOutput (AVPlayerItemLegibleOutputAVPlayerItemLegibleOutput_NativeRepresentationCategoryExports)
-(id) jsinitWithMediaSubtypesForNativeRepresentation: (NSArray *) subtypes 
{
	id resultVal__;
	resultVal__ = [[self initWithMediaSubtypesForNativeRepresentation: subtypes ] autorelease];
	return resultVal__;
}
@end
@implementation AVPlayerItemMetadataOutput (Exports)
-(id) jsinitWithIdentifiers: (NSArray *) identifiers 
{
	id resultVal__;
	resultVal__ = [[self initWithIdentifiers: identifiers ] autorelease];
	return resultVal__;
}
@end
@implementation AVPlayerItemVideoOutput (Exports)
-(id) jsinitWithPixelBufferAttributes: (NSDictionary *) pixelBufferAttributes 
{
	id resultVal__;
	resultVal__ = [[self initWithPixelBufferAttributes: pixelBufferAttributes ] autorelease];
	return resultVal__;
}
-(id) jsinitWithOutputSettings: (NSDictionary *) outputSettings 
{
	id resultVal__;
	resultVal__ = [[self initWithOutputSettings: outputSettings ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVPlayerItemOutput class], @protocol(AVPlayerItemOutputInstanceExports));
	class_addProtocol([AVPlayerItemOutput class], @protocol(AVPlayerItemOutputClassExports));
	class_addProtocol([AVPlayerItemLegibleOutput class], @protocol(AVPlayerItemLegibleOutputInstanceExports));
	class_addProtocol([AVPlayerItemLegibleOutput class], @protocol(AVPlayerItemLegibleOutputClassExports));
	class_addProtocol([AVPlayerItemLegibleOutput class], @protocol(AVPlayerItemLegibleOutputAVPlayerItemLegibleOutput_NativeRepresentationCategoryInstanceExports));
	class_addProtocol([AVPlayerItemLegibleOutput class], @protocol(AVPlayerItemLegibleOutputAVPlayerItemLegibleOutput_NativeRepresentationCategoryClassExports));
	class_addProtocol([AVPlayerItemLegibleOutput class], @protocol(AVPlayerItemLegibleOutputAVPlayerItemLegibleOutput_TextStylingResolutionCategoryInstanceExports));
	class_addProtocol([AVPlayerItemLegibleOutput class], @protocol(AVPlayerItemLegibleOutputAVPlayerItemLegibleOutput_TextStylingResolutionCategoryClassExports));
	class_addProtocol([AVPlayerItemMetadataOutput class], @protocol(AVPlayerItemMetadataOutputInstanceExports));
	class_addProtocol([AVPlayerItemMetadataOutput class], @protocol(AVPlayerItemMetadataOutputClassExports));
	class_addProtocol([AVPlayerItemVideoOutput class], @protocol(AVPlayerItemVideoOutputInstanceExports));
	class_addProtocol([AVPlayerItemVideoOutput class], @protocol(AVPlayerItemVideoOutputClassExports));
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
	p = (void*) &AVPlayerItemLegibleOutputTextStylingResolutionDefault;
	if (p != NULL) context[@"AVPlayerItemLegibleOutputTextStylingResolutionDefault"] = AVPlayerItemLegibleOutputTextStylingResolutionDefault;
	p = (void*) &AVPlayerItemLegibleOutputTextStylingResolutionSourceAndRulesOnly;
	if (p != NULL) context[@"AVPlayerItemLegibleOutputTextStylingResolutionSourceAndRulesOnly"] = AVPlayerItemLegibleOutputTextStylingResolutionSourceAndRulesOnly;
}
void AVFoundation_AVPlayerItemOutputProtocols()
{
	(void)@protocol(AVPlayerItemMetadataOutputPushDelegate);
	(void)@protocol(AVPlayerItemOutputPushDelegate);
	(void)@protocol(AVPlayerItemOutputPullDelegate);
	(void)@protocol(AVPlayerItemLegibleOutputPushDelegate);
}
void load_AVFoundation_AVPlayerItemOutput_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
