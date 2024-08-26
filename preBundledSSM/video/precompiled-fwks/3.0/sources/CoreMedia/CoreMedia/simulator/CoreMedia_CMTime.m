#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreMedia_CMTime)
+(JSValue*) valueWithCMTime: (CMTime) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"value": @(s.value),
		@"timescale": @(s.timescale),
		@"flags": @(s.flags),
		@"epoch": @(s.epoch),
	} inContext: context];
}
-(CMTime) toCMTime {
	return (CMTime) {
		(CMTimeValue) [self[@"value"] toDouble],
		(CMTimeScale) [self[@"timescale"] toInt32],
		(CMTimeFlags) [self[@"flags"] toInt32],
		(CMTimeEpoch) [self[@"epoch"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"CMTimeConvertScale"] = ^CMTime(CMTime arg0, int32_t arg1, CMTimeRoundingMethod arg2) {
		return CMTimeConvertScale(arg0, arg1, arg2);
	};
	context[@"CMTimeShow"] = ^void(CMTime arg0) {
		CMTimeShow(arg0);
	};
	context[@"CMTimeMultiplyByRatio"] = ^CMTime(CMTime arg0, int32_t arg1, int32_t arg2) {
		return CMTimeMultiplyByRatio(arg0, arg1, arg2);
	};
	context[@"CMTimeGetSeconds"] = ^Float64(CMTime arg0) {
		return CMTimeGetSeconds(arg0);
	};
	context[@"CMTimeMakeFromDictionary"] = ^CMTime(id arg0) {
		return CMTimeMakeFromDictionary(arg0);
	};
	context[@"CMTimeCopyDescription"] = ^id(id arg0, CMTime arg1) {
		return CMTimeCopyDescription(arg0, arg1);
	};
	context[@"CMTimeCopyAsDictionary"] = ^id(CMTime arg0, id arg1) {
		return CMTimeCopyAsDictionary(arg0, arg1);
	};
	context[@"CMTimeMakeWithEpoch"] = ^CMTime(int64_t arg0, int32_t arg1, int64_t arg2) {
		return CMTimeMakeWithEpoch(arg0, arg1, arg2);
	};
	context[@"CMTimeAdd"] = ^CMTime(CMTime arg0, CMTime arg1) {
		return CMTimeAdd(arg0, arg1);
	};
	context[@"CMTimeMultiply"] = ^CMTime(CMTime arg0, int32_t arg1) {
		return CMTimeMultiply(arg0, arg1);
	};
	context[@"CMTimeMultiplyByFloat64"] = ^CMTime(CMTime arg0, Float64 arg1) {
		return CMTimeMultiplyByFloat64(arg0, arg1);
	};
	context[@"CMTimeAbsoluteValue"] = ^CMTime(CMTime arg0) {
		return CMTimeAbsoluteValue(arg0);
	};
	context[@"CMTimeSubtract"] = ^CMTime(CMTime arg0, CMTime arg1) {
		return CMTimeSubtract(arg0, arg1);
	};
	context[@"CMTimeCompare"] = ^int32_t(CMTime arg0, CMTime arg1) {
		return CMTimeCompare(arg0, arg1);
	};
	context[@"CMTimeMake"] = ^CMTime(int64_t arg0, int32_t arg1) {
		return CMTimeMake(arg0, arg1);
	};
	context[@"CMTimeMaximum"] = ^CMTime(CMTime arg0, CMTime arg1) {
		return CMTimeMaximum(arg0, arg1);
	};
	context[@"CMTimeMakeWithSeconds"] = ^CMTime(Float64 arg0, int32_t arg1) {
		return CMTimeMakeWithSeconds(arg0, arg1);
	};
	context[@"CMTimeMinimum"] = ^CMTime(CMTime arg0, CMTime arg1) {
		return CMTimeMinimum(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCMTimeFlags_Valid"] = @1U;
	context[@"kCMTimeFlags_HasBeenRounded"] = @2U;
	context[@"kCMTimeFlags_PositiveInfinity"] = @4U;
	context[@"kCMTimeFlags_NegativeInfinity"] = @8U;
	context[@"kCMTimeFlags_Indefinite"] = @16U;
	context[@"kCMTimeFlags_ImpliedValueFlagsMask"] = @28U;

	context[@"kCMTimeRoundingMethod_RoundHalfAwayFromZero"] = @1U;
	context[@"kCMTimeRoundingMethod_RoundTowardZero"] = @2U;
	context[@"kCMTimeRoundingMethod_RoundAwayFromZero"] = @3U;
	context[@"kCMTimeRoundingMethod_QuickTime"] = @4U;
	context[@"kCMTimeRoundingMethod_RoundTowardPositiveInfinity"] = @5U;
	context[@"kCMTimeRoundingMethod_RoundTowardNegativeInfinity"] = @6U;
	context[@"kCMTimeRoundingMethod_Default"] = @1U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCMTimeIndefinite;
	if (p != NULL) context[@"kCMTimeIndefinite"] = [JSValue valueWithCMTime: kCMTimeIndefinite inContext: context];
	p = (void*) &kCMTimeZero;
	if (p != NULL) context[@"kCMTimeZero"] = [JSValue valueWithCMTime: kCMTimeZero inContext: context];
	p = (void*) &kCMTimeEpochKey;
	if (p != NULL) context[@"kCMTimeEpochKey"] = [JSValue valueWithObject: (__bridge id) kCMTimeEpochKey inContext: context];
	p = (void*) &kCMTimeValueKey;
	if (p != NULL) context[@"kCMTimeValueKey"] = [JSValue valueWithObject: (__bridge id) kCMTimeValueKey inContext: context];
	p = (void*) &kCMTimeNegativeInfinity;
	if (p != NULL) context[@"kCMTimeNegativeInfinity"] = [JSValue valueWithCMTime: kCMTimeNegativeInfinity inContext: context];
	p = (void*) &kCMTimeScaleKey;
	if (p != NULL) context[@"kCMTimeScaleKey"] = [JSValue valueWithObject: (__bridge id) kCMTimeScaleKey inContext: context];
	p = (void*) &kCMTimePositiveInfinity;
	if (p != NULL) context[@"kCMTimePositiveInfinity"] = [JSValue valueWithCMTime: kCMTimePositiveInfinity inContext: context];
	p = (void*) &kCMTimeInvalid;
	if (p != NULL) context[@"kCMTimeInvalid"] = [JSValue valueWithCMTime: kCMTimeInvalid inContext: context];
	p = (void*) &kCMTimeFlagsKey;
	if (p != NULL) context[@"kCMTimeFlagsKey"] = [JSValue valueWithObject: (__bridge id) kCMTimeFlagsKey inContext: context];
}
void load_CoreMedia_CMTime_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
