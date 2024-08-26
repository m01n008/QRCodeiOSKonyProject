#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVMovie (AVMovieAVMovieMovieHeaderSupportCategoryExports)
-(BOOL) jswriteMovieHeaderToURL: (NSURL *) URL fileType: (AVFileType) fileType options: (AVMovieWritingOptions) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self writeMovieHeaderToURL: URL fileType: fileType options: options error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(NSData *) jsmovieHeaderWithFileType: (AVFileType) fileType error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	NSData * resultVal__;
	resultVal__ = [self movieHeaderWithFileType: fileType error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
@implementation AVMediaDataStorage (Exports)
-(id) jsinitWithURL: (NSURL *) URL options: (NSDictionary *) options 
{
	id resultVal__;
	resultVal__ = [[self initWithURL: URL options: options ] autorelease];
	return resultVal__;
}
@end
@implementation AVFragmentedMovieMinder (Exports)
-(id) jsinitWithMovie: (AVFragmentedMovie *) movie mindingInterval: (NSTimeInterval) mindingInterval 
{
	id resultVal__;
	resultVal__ = [[self initWithMovie: movie mindingInterval: mindingInterval ] autorelease];
	return resultVal__;
}
@end
@implementation AVMutableMovie (AVMutableMovieAVMutableMovieMovieLevelEditingCategoryExports)
-(BOOL) jsinsertTimeRange: (CMTimeRange) timeRange ofAsset: (AVAsset *) asset atTime: (CMTime) startTime copySampleData: (BOOL) copySampleData error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self insertTimeRange: timeRange ofAsset: asset atTime: startTime copySampleData: copySampleData error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
@implementation AVMovie (Exports)
-(id) jsinitWithURL: (NSURL *) URL options: (NSDictionary *) options 
{
	id resultVal__;
	resultVal__ = [[self initWithURL: URL options: options ] autorelease];
	return resultVal__;
}
-(id) jsinitWithData: (NSData *) data options: (NSDictionary *) options 
{
	id resultVal__;
	resultVal__ = [[self initWithData: data options: options ] autorelease];
	return resultVal__;
}
@end
@implementation AVMutableMovie (Exports)
-(id) jsinitWithURL: (NSURL *) URL options: (NSDictionary *) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithURL: URL options: options error: &outError_ ] autorelease];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(id) jsinitWithSettingsFromMovie: (AVMovie *) movie options: (NSDictionary *) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithSettingsFromMovie: movie options: options error: &outError_ ] autorelease];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(id) jsinitWithData: (NSData *) data options: (NSDictionary *) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithData: data options: options error: &outError_ ] autorelease];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
+(id) jsmovieWithURL: (NSURL *) URL options: (NSDictionary *) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [self movieWithURL: URL options: options error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
+(id) jsmovieWithData: (NSData *) data options: (NSDictionary *) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [self movieWithData: data options: options error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
+(id) jsmovieWithSettingsFromMovie: (AVMovie *) movie options: (NSDictionary *) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [self movieWithSettingsFromMovie: movie options: options error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVMutableMovie class], @protocol(AVMutableMovieAVMutableMovieMetadataEditingCategoryInstanceExports));
	class_addProtocol([AVMutableMovie class], @protocol(AVMutableMovieAVMutableMovieMetadataEditingCategoryClassExports));
	class_addProtocol([AVMutableMovie class], @protocol(AVMutableMovieAVMutableMovieTrackInspectionCategoryInstanceExports));
	class_addProtocol([AVMutableMovie class], @protocol(AVMutableMovieAVMutableMovieTrackInspectionCategoryClassExports));
	class_addProtocol([AVMutableMovie class], @protocol(AVMutableMovieAVMutableMovieTrackLevelEditingCategoryInstanceExports));
	class_addProtocol([AVMutableMovie class], @protocol(AVMutableMovieAVMutableMovieTrackLevelEditingCategoryClassExports));
	class_addProtocol([AVMovie class], @protocol(AVMovieAVMovieMovieHeaderSupportCategoryInstanceExports));
	class_addProtocol([AVMovie class], @protocol(AVMovieAVMovieMovieHeaderSupportCategoryClassExports));
	class_addProtocol([AVMovie class], @protocol(AVMovieAVMovieTrackInspectionCategoryInstanceExports));
	class_addProtocol([AVMovie class], @protocol(AVMovieAVMovieTrackInspectionCategoryClassExports));
	class_addProtocol([AVMediaDataStorage class], @protocol(AVMediaDataStorageInstanceExports));
	class_addProtocol([AVMediaDataStorage class], @protocol(AVMediaDataStorageClassExports));
	class_addProtocol([AVFragmentedMovieMinder class], @protocol(AVFragmentedMovieMinderInstanceExports));
	class_addProtocol([AVFragmentedMovieMinder class], @protocol(AVFragmentedMovieMinderClassExports));
	class_addProtocol([AVFragmentedMovie class], @protocol(AVFragmentedMovieInstanceExports));
	class_addProtocol([AVFragmentedMovie class], @protocol(AVFragmentedMovieClassExports));
	class_addProtocol([AVMutableMovie class], @protocol(AVMutableMovieAVMutableMovieMovieLevelEditingCategoryInstanceExports));
	class_addProtocol([AVMutableMovie class], @protocol(AVMutableMovieAVMutableMovieMovieLevelEditingCategoryClassExports));
	class_addProtocol([AVMovie class], @protocol(AVMovieInstanceExports));
	class_addProtocol([AVMovie class], @protocol(AVMovieClassExports));
	class_addProtocol([AVMutableMovie class], @protocol(AVMutableMovieInstanceExports));
	class_addProtocol([AVMutableMovie class], @protocol(AVMutableMovieClassExports));
	class_addProtocol([AVFragmentedMovie class], @protocol(AVFragmentedMovieAVFragmentedMovieTrackInspectionCategoryInstanceExports));
	class_addProtocol([AVFragmentedMovie class], @protocol(AVFragmentedMovieAVFragmentedMovieTrackInspectionCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVMovieWritingAddMovieHeaderToDestination"] = @0U;
	context[@"AVMovieWritingTruncateDestinationToMovieHeaderOnly"] = @1U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVFragmentedMovieWasDefragmentedNotification;
	if (p != NULL) context[@"AVFragmentedMovieWasDefragmentedNotification"] = AVFragmentedMovieWasDefragmentedNotification;
	p = (void*) &AVFragmentedMovieDurationDidChangeNotification;
	if (p != NULL) context[@"AVFragmentedMovieDurationDidChangeNotification"] = AVFragmentedMovieDurationDidChangeNotification;
	p = (void*) &AVFragmentedMovieContainsMovieFragmentsDidChangeNotification;
	if (p != NULL) context[@"AVFragmentedMovieContainsMovieFragmentsDidChangeNotification"] = AVFragmentedMovieContainsMovieFragmentsDidChangeNotification;
	p = (void*) &AVMovieReferenceRestrictionsKey;
	if (p != NULL) context[@"AVMovieReferenceRestrictionsKey"] = AVMovieReferenceRestrictionsKey;
}
void load_AVFoundation_AVMovie_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
