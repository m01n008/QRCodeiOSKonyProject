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
}
static void registerCFunctions(JSContext* context)
{
	context[@"CMBlockBufferAppendBufferReference"] = ^OSStatus(id arg0, id arg1, size_t arg2, size_t arg3, CMBlockBufferFlags arg4) {
		return CMBlockBufferAppendBufferReference(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"CMBlockBufferGetDataLength"] = ^size_t(id arg0) {
		return CMBlockBufferGetDataLength(arg0);
	};
	context[@"CMBlockBufferIsRangeContiguous"] = ^Boolean(id arg0, size_t arg1, size_t arg2) {
		return CMBlockBufferIsRangeContiguous(arg0, arg1, arg2);
	};
	context[@"CMBlockBufferIsEmpty"] = ^Boolean(id arg0) {
		return CMBlockBufferIsEmpty(arg0);
	};
	context[@"CMBlockBufferGetTypeID"] = ^CFTypeID() {
		return CMBlockBufferGetTypeID();
	};
	context[@"CMBlockBufferFillDataBytes"] = ^OSStatus(char arg0, id arg1, size_t arg2, size_t arg3) {
		return CMBlockBufferFillDataBytes(arg0, arg1, arg2, arg3);
	};
	context[@"CMBlockBufferAssureBlockMemory"] = ^OSStatus(id arg0) {
		return CMBlockBufferAssureBlockMemory(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCMBlockBufferNoErr"] = @0;
	context[@"kCMBlockBufferStructureAllocationFailedErr"] = @-12700;
	context[@"kCMBlockBufferBlockAllocationFailedErr"] = @-12701;
	context[@"kCMBlockBufferBadCustomBlockSourceErr"] = @-12702;
	context[@"kCMBlockBufferBadOffsetParameterErr"] = @-12703;
	context[@"kCMBlockBufferBadLengthParameterErr"] = @-12704;
	context[@"kCMBlockBufferBadPointerParameterErr"] = @-12705;
	context[@"kCMBlockBufferEmptyBBufErr"] = @-12706;
	context[@"kCMBlockBufferUnallocatedBlockErr"] = @-12707;
	context[@"kCMBlockBufferInsufficientSpaceErr"] = @-12708;

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
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
