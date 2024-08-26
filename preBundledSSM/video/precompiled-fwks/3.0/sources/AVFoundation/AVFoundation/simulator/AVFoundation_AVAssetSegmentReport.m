#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
	class_addProtocol([AVAssetSegmentReport class], @protocol(AVAssetSegmentReportInstanceExports));
	class_addProtocol([AVAssetSegmentReport class], @protocol(AVAssetSegmentReportClassExports));
	class_addProtocol([AVAssetSegmentTrackReport class], @protocol(AVAssetSegmentTrackReportInstanceExports));
	class_addProtocol([AVAssetSegmentTrackReport class], @protocol(AVAssetSegmentTrackReportClassExports));
	class_addProtocol([AVAssetSegmentReportSampleInformation class], @protocol(AVAssetSegmentReportSampleInformationInstanceExports));
	class_addProtocol([AVAssetSegmentReportSampleInformation class], @protocol(AVAssetSegmentReportSampleInformationClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVAssetSegmentTypeInitialization"] = @1L;
	context[@"AVAssetSegmentTypeSeparable"] = @2L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVAssetSegmentReport_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
