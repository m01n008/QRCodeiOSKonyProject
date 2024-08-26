#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
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
	p = (void*) &kCMTimeIndefinite;
	if (p != NULL) context[@"kCMTimeIndefinite"] = [JSValue valueWithCMTime: kCMTimeIndefinite inContext: context];
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
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
