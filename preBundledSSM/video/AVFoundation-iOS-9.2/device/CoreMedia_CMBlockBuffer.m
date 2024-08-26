#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCMBlockBufferNoErr"] = @0L;
	context[@"kCMBlockBufferStructureAllocationFailedErr"] = @-12700L;
	context[@"kCMBlockBufferBlockAllocationFailedErr"] = @-12701L;
	context[@"kCMBlockBufferBadCustomBlockSourceErr"] = @-12702L;
	context[@"kCMBlockBufferBadOffsetParameterErr"] = @-12703L;
	context[@"kCMBlockBufferBadLengthParameterErr"] = @-12704L;
	context[@"kCMBlockBufferBadPointerParameterErr"] = @-12705L;
	context[@"kCMBlockBufferEmptyBBufErr"] = @-12706L;
	context[@"kCMBlockBufferUnallocatedBlockErr"] = @-12707L;
	context[@"kCMBlockBufferInsufficientSpaceErr"] = @-12708L;

	context[@"kCMBlockBufferAssureMemoryNowFlag"] = @1U;
	context[@"kCMBlockBufferAlwaysCopyDataFlag"] = @2U;
	context[@"kCMBlockBufferDontOptimizeDepthFlag"] = @4U;
	context[@"kCMBlockBufferPermitEmptyReferenceFlag"] = @8U;

	context[@"kCMBlockBufferCustomBlockSourceVersion"] = @0U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreMedia_CMBlockBuffer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
