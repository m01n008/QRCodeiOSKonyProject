#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAssetWriterInput (Exports)
-(id) jsinitWithMediaType: (NSString *) mediaType outputSettings: (NSDictionary *) outputSettings sourceFormatHint: (id) sourceFormatHint 
{
	id resultVal__;
	resultVal__ = [[self initWithMediaType: mediaType outputSettings: outputSettings sourceFormatHint: sourceFormatHint ] autorelease];
	return resultVal__;
}
-(id) jsinitWithMediaType: (NSString *) mediaType outputSettings: (NSDictionary *) outputSettings 
{
	id resultVal__;
	resultVal__ = [[self initWithMediaType: mediaType outputSettings: outputSettings ] autorelease];
	return resultVal__;
}
@end
@implementation AVAssetWriterInputMetadataAdaptor (Exports)
-(id) jsinitWithAssetWriterInput: (AVAssetWriterInput *) input 
{
	id resultVal__;
	resultVal__ = [[self initWithAssetWriterInput: input ] autorelease];
	return resultVal__;
}
@end
@implementation AVAssetWriterInputPixelBufferAdaptor (Exports)
-(id) jsinitWithAssetWriterInput: (AVAssetWriterInput *) input sourcePixelBufferAttributes: (NSDictionary *) sourcePixelBufferAttributes 
{
	id resultVal__;
	resultVal__ = [[self initWithAssetWriterInput: input sourcePixelBufferAttributes: sourcePixelBufferAttributes ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAssetWriterInput class], @protocol(AVAssetWriterInputAVAssetWriterInputFileTypeSpecificPropertiesCategoryInstanceExports));
	class_addProtocol([AVAssetWriterInput class], @protocol(AVAssetWriterInputAVAssetWriterInputFileTypeSpecificPropertiesCategoryClassExports));
	class_addProtocol([AVAssetWriterInput class], @protocol(AVAssetWriterInputInstanceExports));
	class_addProtocol([AVAssetWriterInput class], @protocol(AVAssetWriterInputClassExports));
	class_addProtocol([AVAssetWriterInput class], @protocol(AVAssetWriterInputAVAssetWriterInputLanguagePropertiesCategoryInstanceExports));
	class_addProtocol([AVAssetWriterInput class], @protocol(AVAssetWriterInputAVAssetWriterInputLanguagePropertiesCategoryClassExports));
	class_addProtocol([AVAssetWriterInputMetadataAdaptor class], @protocol(AVAssetWriterInputMetadataAdaptorInstanceExports));
	class_addProtocol([AVAssetWriterInputMetadataAdaptor class], @protocol(AVAssetWriterInputMetadataAdaptorClassExports));
	class_addProtocol([AVAssetWriterInput class], @protocol(AVAssetWriterInputAVAssetWriterInputPropertiesForVisualCharacteristicCategoryInstanceExports));
	class_addProtocol([AVAssetWriterInput class], @protocol(AVAssetWriterInputAVAssetWriterInputPropertiesForVisualCharacteristicCategoryClassExports));
	class_addProtocol([AVAssetWriterInput class], @protocol(AVAssetWriterInputAVAssetWriterInputTrackAssociationsCategoryInstanceExports));
	class_addProtocol([AVAssetWriterInput class], @protocol(AVAssetWriterInputAVAssetWriterInputTrackAssociationsCategoryClassExports));
	class_addProtocol([AVAssetWriterInputPassDescription class], @protocol(AVAssetWriterInputPassDescriptionInstanceExports));
	class_addProtocol([AVAssetWriterInputPassDescription class], @protocol(AVAssetWriterInputPassDescriptionClassExports));
	class_addProtocol([AVAssetWriterInput class], @protocol(AVAssetWriterInputAVAssetWriterInputMultiPassCategoryInstanceExports));
	class_addProtocol([AVAssetWriterInput class], @protocol(AVAssetWriterInputAVAssetWriterInputMultiPassCategoryClassExports));
	class_addProtocol([AVAssetWriterInputPixelBufferAdaptor class], @protocol(AVAssetWriterInputPixelBufferAdaptorInstanceExports));
	class_addProtocol([AVAssetWriterInputPixelBufferAdaptor class], @protocol(AVAssetWriterInputPixelBufferAdaptorClassExports));
	class_addProtocol([AVAssetWriterInput class], @protocol(AVAssetWriterInputAVAssetWriterInputPropertiesForAudibleCharacteristicCategoryInstanceExports));
	class_addProtocol([AVAssetWriterInput class], @protocol(AVAssetWriterInputAVAssetWriterInputPropertiesForAudibleCharacteristicCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVAssetWriterInput_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
