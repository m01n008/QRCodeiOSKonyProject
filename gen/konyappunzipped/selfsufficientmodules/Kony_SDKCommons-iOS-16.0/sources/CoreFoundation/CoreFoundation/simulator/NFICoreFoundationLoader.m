#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFICoreFoundationModules(JSContext* context)
{
	load_CoreFoundation_CFBase_symbols(context);
	load_CoreFoundation_CFByteOrder_symbols(context);
	load_CoreFoundation_CFDate_symbols(context);
	load_CoreFoundation_CFCGTypes_symbols(context);
	load_CoreFoundation_CFStream_symbols(context);
	load_CoreFoundation_CFUUID_symbols(context);
	load_CoreFoundation_CFArray_symbols(context);
	load_CoreFoundation_CFBag_symbols(context);
	load_CoreFoundation_CFBinaryHeap_symbols(context);
	load_CoreFoundation_CFBitVector_symbols(context);
	load_CoreFoundation_CFDictionary_symbols(context);
	load_CoreFoundation_CFNotificationCenter_symbols(context);
	load_CoreFoundation_CFLocale_symbols(context);
	load_CoreFoundation_CFData_symbols(context);
	load_CoreFoundation_CFCharacterSet_symbols(context);
	load_CoreFoundation_CFError_symbols(context);
	load_CoreFoundation_CFString_symbols(context);
	load_CoreFoundation_CFTimeZone_symbols(context);
	load_CoreFoundation_CFCalendar_symbols(context);
	load_CoreFoundation_CFDateFormatter_symbols(context);
	load_CoreFoundation_CFNumber_symbols(context);
	load_CoreFoundation_CFNumberFormatter_symbols(context);
	load_CoreFoundation_CFPreferences_symbols(context);
	load_CoreFoundation_CFURL_symbols(context);
	load_CoreFoundation_CFRunLoop_symbols(context);
	load_CoreFoundation_CFSocket_symbols(context);
	load_CoreFoundation_CFPropertyList_symbols(context);
	load_CoreFoundation_CFSet_symbols(context);
	load_CoreFoundation_CFTree_symbols(context);
	load_CoreFoundation_CFURLAccess_symbols(context);
	load_CoreFoundation_CFUtilities_symbols(context);
	load_CoreFoundation_CFBundle_symbols(context);
	load_CoreFoundation_CFMessagePort_symbols(context);
	load_CoreFoundation_CFPlugIn_symbols(context);
	load_CoreFoundation_CFMachPort_symbols(context);
	load_CoreFoundation_CFAttributedString_symbols(context);
	load_CoreFoundation_CFURLEnumerator_symbols(context);
	load_CoreFoundation_CFFileSecurity_symbols(context);
	load_CoreFoundation_CFStringTokenizer_symbols(context);
	load_CoreFoundation_CFFileDescriptor_symbols(context);
	load_CoreFoundation_CFStringEncodingExt_symbols(context);
	load_CoreFoundation_CFUserNotification_symbols(context);
}

JSValue* extractNFICoreFoundationStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
	if (strcmp(type, @encode(CFRange)) == 0) {
		CFRange argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCFRange: argument inContext: context];
	} else if (strcmp(type, @encode(CFSwappedFloat32)) == 0) {
		CFSwappedFloat32 argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCFSwappedFloat32: argument inContext: context];
	} else if (strcmp(type, @encode(CFSwappedFloat64)) == 0) {
		CFSwappedFloat64 argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCFSwappedFloat64: argument inContext: context];
	} else if (strcmp(type, @encode(CFGregorianDate)) == 0) {
		CFGregorianDate argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCFGregorianDate: argument inContext: context];
	} else if (strcmp(type, @encode(CFGregorianUnits)) == 0) {
		CFGregorianUnits argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCFGregorianUnits: argument inContext: context];
	} else if (strcmp(type, @encode(CGVector)) == 0) {
		CGVector argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCGVector: argument inContext: context];
	} else if (strcmp(type, @encode(CGAffineTransform)) == 0) {
		CGAffineTransform argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCGAffineTransform: argument inContext: context];
	} else if (strcmp(type, @encode(CGAffineTransformComponents)) == 0) {
		CGAffineTransformComponents argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCGAffineTransformComponents: argument inContext: context];
	} else if (strcmp(type, @encode(CFStreamError)) == 0) {
		CFStreamError argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCFStreamError: argument inContext: context];
	} else if (strcmp(type, @encode(CFUUIDBytes)) == 0) {
		CFUUIDBytes argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCFUUIDBytes: argument inContext: context];
	}    
    return nil;
}

BOOL setNFICoreFoundationStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
	if (strcmp(type, @encode(CFRange)) == 0) {
		CFRange returnValue = value.toCFRange;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CFSwappedFloat32)) == 0) {
		CFSwappedFloat32 returnValue = value.toCFSwappedFloat32;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CFSwappedFloat64)) == 0) {
		CFSwappedFloat64 returnValue = value.toCFSwappedFloat64;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CFGregorianDate)) == 0) {
		CFGregorianDate returnValue = value.toCFGregorianDate;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CFGregorianUnits)) == 0) {
		CFGregorianUnits returnValue = value.toCFGregorianUnits;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CGVector)) == 0) {
		CGVector returnValue = value.toCGVector;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CGAffineTransform)) == 0) {
		CGAffineTransform returnValue = value.toCGAffineTransform;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CGAffineTransformComponents)) == 0) {
		CGAffineTransformComponents returnValue = value.toCGAffineTransformComponents;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CFStreamError)) == 0) {
		CFStreamError returnValue = value.toCFStreamError;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CFUUIDBytes)) == 0) {
		CFUUIDBytes returnValue = value.toCFUUIDBytes;
		[invocation setReturnValue: &returnValue];
		return YES;
	}    
    return NO;
}

