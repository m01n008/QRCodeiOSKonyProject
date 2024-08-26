#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFIFoundationModules(JSContext* context)
{
	load_Foundation_NSUUID_symbols(context);
	load_Foundation_NSItemProvider_symbols(context);
	load_Foundation_NSMassFormatter_symbols(context);
	load_Foundation_NSURLConnection_symbols(context);
	load_Foundation_NSExtensionContext_symbols(context);
	load_Foundation_NSSortDescriptor_symbols(context);
	load_Foundation_NSException_symbols(context);
	load_Foundation_NSDecimalNumber_symbols(context);
	load_Foundation_NSObject_symbols(context);
	load_Foundation_NSComparisonPredicate_symbols(context);
	load_Foundation_NSDecimal_symbols(context);
	load_Foundation_NSValue_symbols(context);
	load_Foundation_NSThread_symbols(context);
	load_Foundation_NSProxy_symbols(context);
	load_Foundation_NSISO8601DateFormatter_symbols(context);
	load_Foundation_NSExtensionItem_symbols(context);
	load_Foundation_NSOperation_symbols(context);
	load_Foundation_NSOrthography_symbols(context);
	load_Foundation_NSKeyedArchiver_symbols(context);
	load_Foundation_NSURLRequest_symbols(context);
	load_Foundation_NSByteOrder_symbols(context);
	load_Foundation_NSURLAuthenticationChallenge_symbols(context);
	load_Foundation_NSNotification_symbols(context);
	load_Foundation_NSUserActivity_symbols(context);
	load_Foundation_NSURLCache_symbols(context);
	load_Foundation_NSMethodSignature_symbols(context);
	load_Foundation_NSTimeZone_symbols(context);
	load_Foundation_NSValueTransformer_symbols(context);
	load_Foundation_NSLinguisticTagger_symbols(context);
	load_Foundation_NSDateIntervalFormatter_symbols(context);
	load_Foundation_NSIndexSet_symbols(context);
	load_Foundation_NSProcessInfo_symbols(context);
	load_Foundation_NSMetadata_symbols(context);
	load_Foundation_NSPersonNameComponents_symbols(context);
	load_Foundation_NSLock_symbols(context);
	load_Foundation_NSPathUtilities_symbols(context);
	load_Foundation_NSPointerFunctions_symbols(context);
	load_Foundation_NSURLResponse_symbols(context);
	load_Foundation_NSFileWrapper_symbols(context);
	load_Foundation_NSPointerArray_symbols(context);
	load_Foundation_NSPort_symbols(context);
	load_Foundation_NSTimer_symbols(context);
	load_Foundation_NSDateInterval_symbols(context);
	load_Foundation_NSIndexPath_symbols(context);
	load_Foundation_NSScanner_symbols(context);
	load_Foundation_NSTextCheckingResult_symbols(context);
	load_Foundation_NSEnergyFormatter_symbols(context);
	load_Foundation_NSPredicate_symbols(context);
	load_Foundation_NSOrderedSet_symbols(context);
	load_Foundation_NSStream_symbols(context);
	load_Foundation_NSDateComponentsFormatter_symbols(context);
	load_Foundation_NSRange_symbols(context);
	load_Foundation_NSFileVersion_symbols(context);
	load_Foundation_NSAttributedString_symbols(context);
	load_Foundation_NSRegularExpression_symbols(context);
	load_Foundation_NSNumberFormatter_symbols(context);
	load_Foundation_NSURLCredential_symbols(context);
	load_Foundation_NSCharacterSet_symbols(context);
	load_Foundation_NSExtensionRequestHandling_symbols(context);
	load_Foundation_NSNull_symbols(context);
	load_Foundation_NSNetServices_symbols(context);
	load_Foundation_NSHTTPCookie_symbols(context);
	load_Foundation_NSCache_symbols(context);
	load_Foundation_NSFilePresenter_symbols(context);
	load_Foundation_NSError_symbols(context);
	load_Foundation_NSRunLoop_symbols(context);
	load_Foundation_NSXMLParser_symbols(context);
	load_Foundation_NSLocale_symbols(context);
	load_Foundation_NSMeasurement_symbols(context);
	load_Foundation_NSJSONSerialization_symbols(context);
	load_Foundation_NSHashTable_symbols(context);
	load_Foundation_NSProgress_symbols(context);
	load_Foundation_NSURL_symbols(context);
	load_Foundation_NSAutoreleasePool_symbols(context);
	load_Foundation_NSSet_symbols(context);
	load_Foundation_NSMeasurementFormatter_symbols(context);
	load_Foundation_NSLengthFormatter_symbols(context);
	load_Foundation_NSExpression_symbols(context);
	load_Foundation_NSFormatter_symbols(context);
	load_Foundation_NSKeyValueCoding_symbols(context);
	load_Foundation_NSUndoManager_symbols(context);
	load_Foundation_NSObjCRuntime_symbols(context);
	load_Foundation_NSPropertyList_symbols(context);
	load_Foundation_NSCalendar_symbols(context);
	load_Foundation_NSURLSession_symbols(context);
	load_Foundation_NSFileCoordinator_symbols(context);
	load_Foundation_NSFileHandle_symbols(context);
	load_Foundation_NSCoder_symbols(context);
	load_Foundation_NSUserDefaults_symbols(context);
	load_Foundation_NSInvocation_symbols(context);
	load_Foundation_NSURLError_symbols(context);
	load_Foundation_NSDictionary_symbols(context);
	load_Foundation_NSNotificationQueue_symbols(context);
	load_Foundation_NSMapTable_symbols(context);
	load_Foundation_NSCompoundPredicate_symbols(context);
	load_Foundation_NSUnit_symbols(context);
	load_Foundation_NSUbiquitousKeyValueStore_symbols(context);
	load_Foundation_NSDate_symbols(context);
	load_Foundation_NSBundle_symbols(context);
	load_Foundation_NSData_symbols(context);
	load_Foundation_NSURLProtocol_symbols(context);
	load_Foundation_NSZone_symbols(context);
	load_Foundation_NSByteCountFormatter_symbols(context);
	load_Foundation_FoundationErrors_symbols(context);
	load_Foundation_NSXPCConnection_symbols(context);
	load_Foundation_NSKeyValueObserving_symbols(context);
	load_Foundation_NSDateFormatter_symbols(context);
	load_Foundation_NSHTTPCookieStorage_symbols(context);
	load_Foundation_NSPersonNameComponentsFormatter_symbols(context);
	load_Foundation_NSURLCredentialStorage_symbols(context);
	load_Foundation_NSFileManager_symbols(context);
	load_Foundation_NSURLProtectionSpace_symbols(context);
	load_Foundation_NSString_symbols(context);
	load_Foundation_NSArray_symbols(context);
	load_Foundation_NSEnumerator_symbols(context);
	load_Foundation_NSMetadataAttributes_symbols(context);
}

JSValue* extractNFIFoundationStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
	if (strcmp(type, @encode(NSSwappedDouble)) == 0) {
		NSSwappedDouble argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithNSSwappedDouble: argument inContext: context];
	} else if (strcmp(type, @encode(NSSwappedFloat)) == 0) {
		NSSwappedFloat argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithNSSwappedFloat: argument inContext: context];
	} else if (strcmp(type, @encode(NSOperatingSystemVersion)) == 0) {
		NSOperatingSystemVersion argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithNSOperatingSystemVersion: argument inContext: context];
	}    
    return nil;
}

BOOL setNFIFoundationStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
	if (strcmp(type, @encode(NSSwappedDouble)) == 0) {
		NSSwappedDouble returnValue = value.toNSSwappedDouble;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(NSSwappedFloat)) == 0) {
		NSSwappedFloat returnValue = value.toNSSwappedFloat;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(NSOperatingSystemVersion)) == 0) {
		NSOperatingSystemVersion returnValue = value.toNSOperatingSystemVersion;
		[invocation setReturnValue: &returnValue];
		return YES;
	}    
    return NO;
}

