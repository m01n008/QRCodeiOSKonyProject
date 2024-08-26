#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAssetReaderSampleReferenceOutput (Exports)
-(id) jsinitWithTrack: (AVAssetTrack *) track 
{
	id resultVal__;
	resultVal__ = [[self initWithTrack: track ] autorelease];
	return resultVal__;
}
@end
@implementation AVAssetReaderOutputMetadataAdaptor (Exports)
-(id) jsinitWithAssetReaderTrackOutput: (AVAssetReaderTrackOutput *) trackOutput 
{
	id resultVal__;
	resultVal__ = [[self initWithAssetReaderTrackOutput: trackOutput ] autorelease];
	return resultVal__;
}
@end
@implementation AVAssetReaderAudioMixOutput (Exports)
-(id) jsinitWithAudioTracks: (NSArray *) audioTracks audioSettings: (NSDictionary *) audioSettings 
{
	id resultVal__;
	resultVal__ = [[self initWithAudioTracks: audioTracks audioSettings: audioSettings ] autorelease];
	return resultVal__;
}
@end
@implementation AVAssetReaderVideoCompositionOutput (Exports)
-(id) jsinitWithVideoTracks: (NSArray *) videoTracks videoSettings: (NSDictionary *) videoSettings 
{
	id resultVal__;
	resultVal__ = [[self initWithVideoTracks: videoTracks videoSettings: videoSettings ] autorelease];
	return resultVal__;
}
@end
@implementation AVAssetReaderTrackOutput (Exports)
-(id) jsinitWithTrack: (AVAssetTrack *) track outputSettings: (NSDictionary *) outputSettings 
{
	id resultVal__;
	resultVal__ = [[self initWithTrack: track outputSettings: outputSettings ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAssetReaderSampleReferenceOutput class], @protocol(AVAssetReaderSampleReferenceOutputInstanceExports));
	class_addProtocol([AVAssetReaderSampleReferenceOutput class], @protocol(AVAssetReaderSampleReferenceOutputClassExports));
	class_addProtocol([AVAssetReaderOutput class], @protocol(AVAssetReaderOutputAVAssetReaderOutputRandomAccessCategoryInstanceExports));
	class_addProtocol([AVAssetReaderOutput class], @protocol(AVAssetReaderOutputAVAssetReaderOutputRandomAccessCategoryClassExports));
	class_addProtocol([AVAssetReaderOutputMetadataAdaptor class], @protocol(AVAssetReaderOutputMetadataAdaptorInstanceExports));
	class_addProtocol([AVAssetReaderOutputMetadataAdaptor class], @protocol(AVAssetReaderOutputMetadataAdaptorClassExports));
	class_addProtocol([AVAssetReaderOutput class], @protocol(AVAssetReaderOutputInstanceExports));
	class_addProtocol([AVAssetReaderOutput class], @protocol(AVAssetReaderOutputClassExports));
	class_addProtocol([AVAssetReaderAudioMixOutput class], @protocol(AVAssetReaderAudioMixOutputInstanceExports));
	class_addProtocol([AVAssetReaderAudioMixOutput class], @protocol(AVAssetReaderAudioMixOutputClassExports));
	class_addProtocol([AVAssetReaderVideoCompositionOutput class], @protocol(AVAssetReaderVideoCompositionOutputInstanceExports));
	class_addProtocol([AVAssetReaderVideoCompositionOutput class], @protocol(AVAssetReaderVideoCompositionOutputClassExports));
	class_addProtocol([AVAssetReaderTrackOutput class], @protocol(AVAssetReaderTrackOutputInstanceExports));
	class_addProtocol([AVAssetReaderTrackOutput class], @protocol(AVAssetReaderTrackOutputClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVAssetReaderOutput_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
