#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreFoundation_CFDate)
+(JSValue*) valueWithCFGregorianUnits: (CFGregorianUnits) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"years": @(s.years),
		@"months": @(s.months),
		@"days": @(s.days),
		@"hours": @(s.hours),
		@"minutes": @(s.minutes),
		@"seconds": @(s.seconds),
	} inContext: context];
}
-(CFGregorianUnits) toCFGregorianUnits {
	return (CFGregorianUnits) {
		(SInt32) [self[@"years"] toDouble],
		(SInt32) [self[@"months"] toDouble],
		(SInt32) [self[@"days"] toDouble],
		(SInt32) [self[@"hours"] toDouble],
		(SInt32) [self[@"minutes"] toDouble],
		(double) [self[@"seconds"] toDouble],
	};
}
+(JSValue*) valueWithCFGregorianDate: (CFGregorianDate) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"year": @(s.year),
		@"month": @(s.month),
		@"day": @(s.day),
		@"hour": @(s.hour),
		@"minute": @(s.minute),
		@"second": @(s.second),
	} inContext: context];
}
-(CFGregorianDate) toCFGregorianDate {
	return (CFGregorianDate) {
		(SInt32) [self[@"year"] toDouble],
		(SInt8) [self[@"month"] toInt32],
		(SInt8) [self[@"day"] toInt32],
		(SInt8) [self[@"hour"] toInt32],
		(SInt8) [self[@"minute"] toInt32],
		(double) [self[@"second"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFGregorianUnitsYears"] = @1UL;
	context[@"kCFGregorianUnitsMonths"] = @2UL;
	context[@"kCFGregorianUnitsDays"] = @4UL;
	context[@"kCFGregorianUnitsHours"] = @8UL;
	context[@"kCFGregorianUnitsMinutes"] = @16UL;
	context[@"kCFGregorianUnitsSeconds"] = @32UL;
	context[@"kCFGregorianAllUnits"] = @16777215UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFAbsoluteTimeIntervalSince1970;
	if (p != NULL) context[@"kCFAbsoluteTimeIntervalSince1970"] = @(kCFAbsoluteTimeIntervalSince1970);
	p = (void*) &kCFAbsoluteTimeIntervalSince1904;
	if (p != NULL) context[@"kCFAbsoluteTimeIntervalSince1904"] = @(kCFAbsoluteTimeIntervalSince1904);
}
void load_CoreFoundation_CFDate_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
