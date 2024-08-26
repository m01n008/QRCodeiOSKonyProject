#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSItemProvider (Exports)
-(id) jsinitWithItem: (id) item typeIdentifier: (NSString *) typeIdentifier 
{
	id resultVal__;
	resultVal__ = [[self initWithItem: item typeIdentifier: typeIdentifier ] autorelease];
	return resultVal__;
}
-(void) jsregisterItemForTypeIdentifier: (NSString *) typeIdentifier loadHandler: (JSValue *) loadHandler 
{
	void (^ loadHandler_)(NSItemProviderCompletionHandler _Null_unspecified, Class _Null_unspecified, NSDictionary * _Null_unspecified) = nil;
	if (!loadHandler.isUndefined) {
		loadHandler_ = ^void(NSItemProviderCompletionHandler arg0, Class arg1, NSDictionary * arg2) {
			JSContext* __jsContext = loadHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, loadHandler, self, parameters);
		};
	}
	[self registerItemForTypeIdentifier: typeIdentifier loadHandler: loadHandler_ ];
}
-(id) jsinitWithContentsOfURL: (NSURL *) fileURL 
{
	id resultVal__;
	resultVal__ = [[self initWithContentsOfURL: fileURL ] autorelease];
	return resultVal__;
}
-(void) jsloadItemForTypeIdentifier: (NSString *) typeIdentifier options: (NSDictionary *) options completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(id<NSSecureCoding> , NSError * _Null_unspecified) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(id arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self loadItemForTypeIdentifier: typeIdentifier options: options completionHandler: completionHandler_ ];
}
@end
@implementation NSItemProvider (NSItemProviderNSPreviewSupportCategoryExports)
-(void) jsloadPreviewImageWithOptions: (NSDictionary *) options completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(id<NSSecureCoding> , NSError * _Null_unspecified) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(id arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self loadPreviewImageWithOptions: options completionHandler: completionHandler_ ];
}
-(JSValue *) getJsPreviewImageHandler
{
	return [JSValue valueWithObject: self.previewImageHandler inContext: [JSContext currentContext]];
}
-(void) setJsPreviewImageHandler: (JSValue *) value
{
	void (^ value_)(NSItemProviderCompletionHandler _Null_unspecified, Class _Null_unspecified, NSDictionary * _Null_unspecified) = nil;
	if (!value.isUndefined) {
		value_ = ^void(NSItemProviderCompletionHandler arg0, Class arg1, NSDictionary * arg2) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.previewImageHandler = value_;
}
@end
static void addProtocols()
{
	class_addProtocol([NSItemProvider class], @protocol(NSItemProviderInstanceExports));
	class_addProtocol([NSItemProvider class], @protocol(NSItemProviderClassExports));
	class_addProtocol([NSItemProvider class], @protocol(NSItemProviderNSPreviewSupportCategoryInstanceExports));
	class_addProtocol([NSItemProvider class], @protocol(NSItemProviderNSPreviewSupportCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSItemProviderUnknownError"] = @-1;
	context[@"NSItemProviderItemUnavailableError"] = @-1000;
	context[@"NSItemProviderUnexpectedValueClassError"] = @-1100;
	context[@"NSItemProviderUnavailableCoercionError"] = @-1200;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSItemProviderErrorDomain;
	if (p != NULL) context[@"NSItemProviderErrorDomain"] = NSItemProviderErrorDomain;
	p = (void*) &NSItemProviderPreferredImageSizeKey;
	if (p != NULL) context[@"NSItemProviderPreferredImageSizeKey"] = NSItemProviderPreferredImageSizeKey;
	p = (void*) &NSExtensionJavaScriptPreprocessingResultsKey;
	if (p != NULL) context[@"NSExtensionJavaScriptPreprocessingResultsKey"] = NSExtensionJavaScriptPreprocessingResultsKey;
	p = (void*) &NSExtensionJavaScriptFinalizeArgumentKey;
	if (p != NULL) context[@"NSExtensionJavaScriptFinalizeArgumentKey"] = NSExtensionJavaScriptFinalizeArgumentKey;
}
void load_Foundation_NSItemProvider_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
