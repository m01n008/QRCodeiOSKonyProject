#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIPasteboard (Exports)
-(void) jsdetectPatternsForPatterns: (NSSet *) patterns inItemSet: (NSIndexSet *) itemSet completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSArray  * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSArray * arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self detectPatternsForPatterns: patterns inItemSet: itemSet completionHandler: completionHandler_ ];
}
-(void) jsdetectValuesForPatterns: (NSSet *) patterns completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSDictionary  * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSDictionary * arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self detectValuesForPatterns: patterns completionHandler: completionHandler_ ];
}
-(void) jsdetectPatternsForPatterns: (NSSet *) patterns completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSSet  * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSSet * arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self detectPatternsForPatterns: patterns completionHandler: completionHandler_ ];
}
-(void) jsdetectValuesForPatterns: (NSSet *) patterns inItemSet: (NSIndexSet *) itemSet completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSArray  * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSArray * arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self detectValuesForPatterns: patterns inItemSet: itemSet completionHandler: completionHandler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([UIPasteboard class], @protocol(UIPasteboardInstanceExports));
	class_addProtocol([UIPasteboard class], @protocol(UIPasteboardClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UIPasteboardDetectionPatternProbableWebURL;
	if (p != NULL) context[@"UIPasteboardDetectionPatternProbableWebURL"] = UIPasteboardDetectionPatternProbableWebURL;
	p = (void*) &UIPasteboardDetectionPatternProbableWebSearch;
	if (p != NULL) context[@"UIPasteboardDetectionPatternProbableWebSearch"] = UIPasteboardDetectionPatternProbableWebSearch;
	p = (void*) &UIPasteboardRemovedNotification;
	if (p != NULL) context[@"UIPasteboardRemovedNotification"] = UIPasteboardRemovedNotification;
	p = (void*) &UIPasteboardTypeListColor;
	if (p != NULL) context[@"UIPasteboardTypeListColor"] = UIPasteboardTypeListColor;
	p = (void*) &UIPasteboardTypeListImage;
	if (p != NULL) context[@"UIPasteboardTypeListImage"] = UIPasteboardTypeListImage;
	p = (void*) &UIPasteboardNameFind;
	if (p != NULL) context[@"UIPasteboardNameFind"] = UIPasteboardNameFind;
	p = (void*) &UIPasteboardTypeAutomatic;
	if (p != NULL) context[@"UIPasteboardTypeAutomatic"] = UIPasteboardTypeAutomatic;
	p = (void*) &UIPasteboardDetectionPatternNumber;
	if (p != NULL) context[@"UIPasteboardDetectionPatternNumber"] = UIPasteboardDetectionPatternNumber;
	p = (void*) &UIPasteboardNameGeneral;
	if (p != NULL) context[@"UIPasteboardNameGeneral"] = UIPasteboardNameGeneral;
	p = (void*) &UIPasteboardTypeListURL;
	if (p != NULL) context[@"UIPasteboardTypeListURL"] = UIPasteboardTypeListURL;
	p = (void*) &UIPasteboardTypeListString;
	if (p != NULL) context[@"UIPasteboardTypeListString"] = UIPasteboardTypeListString;
	p = (void*) &UIPasteboardOptionExpirationDate;
	if (p != NULL) context[@"UIPasteboardOptionExpirationDate"] = UIPasteboardOptionExpirationDate;
	p = (void*) &UIPasteboardChangedTypesAddedKey;
	if (p != NULL) context[@"UIPasteboardChangedTypesAddedKey"] = UIPasteboardChangedTypesAddedKey;
	p = (void*) &UIPasteboardChangedTypesRemovedKey;
	if (p != NULL) context[@"UIPasteboardChangedTypesRemovedKey"] = UIPasteboardChangedTypesRemovedKey;
	p = (void*) &UIPasteboardChangedNotification;
	if (p != NULL) context[@"UIPasteboardChangedNotification"] = UIPasteboardChangedNotification;
	p = (void*) &UIPasteboardOptionLocalOnly;
	if (p != NULL) context[@"UIPasteboardOptionLocalOnly"] = UIPasteboardOptionLocalOnly;
}
void load_UIKit_UIPasteboard_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
