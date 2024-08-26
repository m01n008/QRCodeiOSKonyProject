#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreMedia_CMTimeRange)
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
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"CMTimeMappingCopyDescription"] = ^id(id arg0, CMTimeMapping arg1) {
		return CMTimeMappingCopyDescription(arg0, arg1);
	};
	context[@"CMTimeRangeEqual"] = ^Boolean(CMTimeRange arg0, CMTimeRange arg1) {
		return CMTimeRangeEqual(arg0, arg1);
	};
	context[@"CMTimeRangeCopyDescription"] = ^id(id arg0, CMTimeRange arg1) {
		return CMTimeRangeCopyDescription(arg0, arg1);
	};
	context[@"CMTimeMapTimeFromRangeToRange"] = ^CMTime(CMTime arg0, CMTimeRange arg1, CMTimeRange arg2) {
		return CMTimeMapTimeFromRangeToRange(arg0, arg1, arg2);
	};
	context[@"CMTimeRangeMakeFromDictionary"] = ^CMTimeRange(id arg0) {
		return CMTimeRangeMakeFromDictionary(arg0);
	};
	context[@"CMTimeRangeShow"] = ^void(CMTimeRange arg0) {
		CMTimeRangeShow(arg0);
	};
	context[@"CMTimeMappingMake"] = ^CMTimeMapping(CMTimeRange arg0, CMTimeRange arg1) {
		return CMTimeMappingMake(arg0, arg1);
	};
	context[@"CMTimeMappingShow"] = ^void(CMTimeMapping arg0) {
		CMTimeMappingShow(arg0);
	};
	context[@"CMTimeRangeGetIntersection"] = ^CMTimeRange(CMTimeRange arg0, CMTimeRange arg1) {
		return CMTimeRangeGetIntersection(arg0, arg1);
	};
	context[@"CMTimeMappingCopyAsDictionary"] = ^id(CMTimeMapping arg0, id arg1) {
		return CMTimeMappingCopyAsDictionary(arg0, arg1);
	};
	context[@"CMTimeMappingMakeFromDictionary"] = ^CMTimeMapping(id arg0) {
		return CMTimeMappingMakeFromDictionary(arg0);
	};
	context[@"CMTimeRangeCopyAsDictionary"] = ^id(CMTimeRange arg0, id arg1) {
		return CMTimeRangeCopyAsDictionary(arg0, arg1);
	};
	context[@"CMTimeRangeMake"] = ^CMTimeRange(CMTime arg0, CMTime arg1) {
		return CMTimeRangeMake(arg0, arg1);
	};
	context[@"CMTimeRangeGetUnion"] = ^CMTimeRange(CMTimeRange arg0, CMTimeRange arg1) {
		return CMTimeRangeGetUnion(arg0, arg1);
	};
	context[@"CMTimeRangeContainsTime"] = ^Boolean(CMTimeRange arg0, CMTime arg1) {
		return CMTimeRangeContainsTime(arg0, arg1);
	};
	context[@"CMTimeMapDurationFromRangeToRange"] = ^CMTime(CMTime arg0, CMTimeRange arg1, CMTimeRange arg2) {
		return CMTimeMapDurationFromRangeToRange(arg0, arg1, arg2);
	};
	context[@"CMTimeRangeGetEnd"] = ^CMTime(CMTimeRange arg0) {
		return CMTimeRangeGetEnd(arg0);
	};
	context[@"CMTimeClampToRange"] = ^CMTime(CMTime arg0, CMTimeRange arg1) {
		return CMTimeClampToRange(arg0, arg1);
	};
	context[@"CMTimeMappingMakeEmpty"] = ^CMTimeMapping(CMTimeRange arg0) {
		return CMTimeMappingMakeEmpty(arg0);
	};
	context[@"CMTimeRangeFromTimeToTime"] = ^CMTimeRange(CMTime arg0, CMTime arg1) {
		return CMTimeRangeFromTimeToTime(arg0, arg1);
	};
	context[@"CMTimeRangeContainsTimeRange"] = ^Boolean(CMTimeRange arg0, CMTimeRange arg1) {
		return CMTimeRangeContainsTimeRange(arg0, arg1);
	};
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
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
