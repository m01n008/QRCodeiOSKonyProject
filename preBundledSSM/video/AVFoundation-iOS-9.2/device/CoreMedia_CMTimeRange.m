#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreMedia_CMTimeRange)
+(JSValue*) valueWithCMTimeRange: (CMTimeRange) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"value": @(s.start.value),
		@"timescale": @(s.start.timescale),
		@"flags": @(s.start.flags),
		@"epoch": @(s.start.epoch),
		@"value": @(s.duration.value),
		@"timescale": @(s.duration.timescale),
		@"flags": @(s.duration.flags),
		@"epoch": @(s.duration.epoch),
	} inContext: context];
}
-(CMTimeRange) toCMTimeRange {
	return (CMTimeRange) {
		[self[@"start"] toCMTime],
		[self[@"duration"] toCMTime],
	};
}
+(JSValue*) valueWithCMTimeMapping: (CMTimeMapping) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"value": @(s.source.start.value),
		@"timescale": @(s.source.start.timescale),
		@"flags": @(s.source.start.flags),
		@"epoch": @(s.source.start.epoch),
		@"value": @(s.source.duration.value),
		@"timescale": @(s.source.duration.timescale),
		@"flags": @(s.source.duration.flags),
		@"epoch": @(s.source.duration.epoch),
		@"value": @(s.target.start.value),
		@"timescale": @(s.target.start.timescale),
		@"flags": @(s.target.start.flags),
		@"epoch": @(s.target.start.epoch),
		@"value": @(s.target.duration.value),
		@"timescale": @(s.target.duration.timescale),
		@"flags": @(s.target.duration.flags),
		@"epoch": @(s.target.duration.epoch),
	} inContext: context];
}
-(CMTimeMapping) toCMTimeMapping {
	return (CMTimeMapping) {
		[self[@"source"] toCMTimeRange],
		[self[@"target"] toCMTimeRange],
	};
}
@end
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCMTimeMappingSourceKey;
	if (p != NULL) context[@"kCMTimeMappingSourceKey"] = [JSValue valueWithObject: (__bridge id) kCMTimeMappingSourceKey inContext: context];
	p = (void*) &kCMTimeMappingInvalid;
	if (p != NULL) context[@"kCMTimeMappingInvalid"] = [JSValue valueWithCMTimeMapping: kCMTimeMappingInvalid inContext: context];
	p = (void*) &kCMTimeRangeDurationKey;
	if (p != NULL) context[@"kCMTimeRangeDurationKey"] = [JSValue valueWithObject: (__bridge id) kCMTimeRangeDurationKey inContext: context];
	p = (void*) &kCMTimeRangeZero;
	if (p != NULL) context[@"kCMTimeRangeZero"] = [JSValue valueWithCMTimeRange: kCMTimeRangeZero inContext: context];
	p = (void*) &kCMTimeRangeStartKey;
	if (p != NULL) context[@"kCMTimeRangeStartKey"] = [JSValue valueWithObject: (__bridge id) kCMTimeRangeStartKey inContext: context];
	p = (void*) &kCMTimeMappingTargetKey;
	if (p != NULL) context[@"kCMTimeMappingTargetKey"] = [JSValue valueWithObject: (__bridge id) kCMTimeMappingTargetKey inContext: context];
	p = (void*) &kCMTimeRangeInvalid;
	if (p != NULL) context[@"kCMTimeRangeInvalid"] = [JSValue valueWithCMTimeRange: kCMTimeRangeInvalid inContext: context];
}
void load_CoreMedia_CMTimeRange_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
