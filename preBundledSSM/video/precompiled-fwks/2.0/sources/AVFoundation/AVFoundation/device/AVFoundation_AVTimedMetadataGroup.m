#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVTimedMetadataGroup (Exports)
-(id) jsinitWithSampleBuffer: (id) sampleBuffer 
{
	id resultVal__;
	resultVal__ = [[self initWithSampleBuffer: sampleBuffer ] autorelease];
	return resultVal__;
}
-(id) jsinitWithItems: (NSArray *) items timeRange: (CMTimeRange) timeRange 
{
	id resultVal__;
	resultVal__ = [[self initWithItems: items timeRange: timeRange ] autorelease];
	return resultVal__;
}
@end
@implementation AVDateRangeMetadataGroup (Exports)
-(id) jsinitWithItems: (NSArray *) items startDate: (NSDate *) startDate endDate: (NSDate *) endDate 
{
	id resultVal__;
	resultVal__ = [[self initWithItems: items startDate: startDate endDate: endDate ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVTimedMetadataGroup class], @protocol(AVTimedMetadataGroupAVTimedMetadataGroupSerializationSupportCategoryInstanceExports));
	class_addProtocol([AVTimedMetadataGroup class], @protocol(AVTimedMetadataGroupAVTimedMetadataGroupSerializationSupportCategoryClassExports));
	class_addProtocol([AVTimedMetadataGroup class], @protocol(AVTimedMetadataGroupInstanceExports));
	class_addProtocol([AVTimedMetadataGroup class], @protocol(AVTimedMetadataGroupClassExports));
	class_addProtocol([AVMetadataGroup class], @protocol(AVMetadataGroupAVMetadataGroupIdentificationCategoryInstanceExports));
	class_addProtocol([AVMetadataGroup class], @protocol(AVMetadataGroupAVMetadataGroupIdentificationCategoryClassExports));
	class_addProtocol([AVDateRangeMetadataGroup class], @protocol(AVDateRangeMetadataGroupInstanceExports));
	class_addProtocol([AVDateRangeMetadataGroup class], @protocol(AVDateRangeMetadataGroupClassExports));
	class_addProtocol([AVMutableDateRangeMetadataGroup class], @protocol(AVMutableDateRangeMetadataGroupInstanceExports));
	class_addProtocol([AVMutableDateRangeMetadataGroup class], @protocol(AVMutableDateRangeMetadataGroupClassExports));
	class_addProtocol([AVMutableTimedMetadataGroup class], @protocol(AVMutableTimedMetadataGroupInstanceExports));
	class_addProtocol([AVMutableTimedMetadataGroup class], @protocol(AVMutableTimedMetadataGroupClassExports));
	class_addProtocol([AVMetadataGroup class], @protocol(AVMetadataGroupInstanceExports));
	class_addProtocol([AVMetadataGroup class], @protocol(AVMetadataGroupClassExports));
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
}
void load_AVFoundation_AVTimedMetadataGroup_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
