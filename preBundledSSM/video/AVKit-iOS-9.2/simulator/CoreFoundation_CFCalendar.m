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
	context[@"kCFCalendarUnitEra"] = @2UL;
	context[@"kCFCalendarUnitYear"] = @4UL;
	context[@"kCFCalendarUnitMonth"] = @8UL;
	context[@"kCFCalendarUnitDay"] = @16UL;
	context[@"kCFCalendarUnitHour"] = @32UL;
	context[@"kCFCalendarUnitMinute"] = @64UL;
	context[@"kCFCalendarUnitSecond"] = @128UL;
	context[@"kCFCalendarUnitWeek"] = @256UL;
	context[@"kCFCalendarUnitWeekday"] = @512UL;
	context[@"kCFCalendarUnitWeekdayOrdinal"] = @1024UL;
	context[@"kCFCalendarUnitQuarter"] = @2048UL;
	context[@"kCFCalendarUnitWeekOfMonth"] = @4096UL;
	context[@"kCFCalendarUnitWeekOfYear"] = @8192UL;
	context[@"kCFCalendarUnitYearForWeekOfYear"] = @16384UL;

	context[@"kCFCalendarComponentsWrap"] = @1UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFCalendar_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
