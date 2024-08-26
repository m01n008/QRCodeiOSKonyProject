#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVMutableComposition (AVMutableCompositionAVMutableCompositionCompositionLevelEditingCategoryExports)
-(BOOL) jsinsertTimeRange: (CMTimeRange) timeRange ofAsset: (AVAsset *) asset atTime: (CMTime) startTime error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self insertTimeRange: timeRange ofAsset: asset atTime: startTime error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVComposition class], @protocol(AVCompositionAVCompositionTrackInspectionCategoryInstanceExports));
	class_addProtocol([AVComposition class], @protocol(AVCompositionAVCompositionTrackInspectionCategoryClassExports));
	class_addProtocol([AVComposition class], @protocol(AVCompositionInstanceExports));
	class_addProtocol([AVComposition class], @protocol(AVCompositionClassExports));
	class_addProtocol([AVMutableComposition class], @protocol(AVMutableCompositionAVMutableCompositionCompositionLevelEditingCategoryInstanceExports));
	class_addProtocol([AVMutableComposition class], @protocol(AVMutableCompositionAVMutableCompositionCompositionLevelEditingCategoryClassExports));
	class_addProtocol([AVMutableComposition class], @protocol(AVMutableCompositionInstanceExports));
	class_addProtocol([AVMutableComposition class], @protocol(AVMutableCompositionClassExports));
	class_addProtocol([AVMutableComposition class], @protocol(AVMutableCompositionAVMutableCompositionTrackInspectionCategoryInstanceExports));
	class_addProtocol([AVMutableComposition class], @protocol(AVMutableCompositionAVMutableCompositionTrackInspectionCategoryClassExports));
	class_addProtocol([AVMutableComposition class], @protocol(AVMutableCompositionAVMutableCompositionTrackLevelEditingCategoryInstanceExports));
	class_addProtocol([AVMutableComposition class], @protocol(AVMutableCompositionAVMutableCompositionTrackLevelEditingCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVComposition_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
