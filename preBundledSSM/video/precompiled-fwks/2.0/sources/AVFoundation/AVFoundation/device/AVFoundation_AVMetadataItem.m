#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVMetadataItem (Exports)
-(void) jsloadValuesAsynchronouslyForKeys: (NSArray *) keys completionHandler: (JSValue *) handler 
{
	void (^ handler_)(void) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void() {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self loadValuesAsynchronouslyForKeys: keys completionHandler: handler_ ];
}
-(AVKeyValueStatus) jsstatusOfValueForKey: (NSString *) key error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	AVKeyValueStatus resultVal__;
	resultVal__ = [self statusOfValueForKey: key error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
@implementation AVMetadataItem (AVMetadataItemAVAsynchronousKeyValueLoadingCategoryExports)
-(void) jsloadValuesAsynchronouslyForKeys: (NSArray *) keys completionHandler: (JSValue *) handler 
{
	void (^ handler_)(void) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void() {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self loadValuesAsynchronouslyForKeys: keys completionHandler: handler_ ];
}
-(AVKeyValueStatus) jsstatusOfValueForKey: (NSString *) key error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	AVKeyValueStatus resultVal__;
	resultVal__ = [self statusOfValueForKey: key error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
@implementation AVMetadataItem (AVMetadataItemAVMetadataItemLazyValueLoadingCategoryExports)
+(AVMetadataItem *) jsmetadataItemWithPropertiesOfMetadataItem: (AVMetadataItem *) metadataItem valueLoadingHandler: (JSValue *) handler 
{
	void (^ handler_)(AVMetadataItemValueRequest * ) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(AVMetadataItemValueRequest * arg0) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	AVMetadataItem * resultVal__;
	resultVal__ = [self metadataItemWithPropertiesOfMetadataItem: metadataItem valueLoadingHandler: handler_ ];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVMetadataItem class], @protocol(AVMetadataItemInstanceExports));
	class_addProtocol([AVMetadataItem class], @protocol(AVMetadataItemClassExports));
	class_addProtocol([AVMetadataItem class], @protocol(AVMetadataItemAVMetadataItemArrayFilteringCategoryInstanceExports));
	class_addProtocol([AVMetadataItem class], @protocol(AVMetadataItemAVMetadataItemArrayFilteringCategoryClassExports));
	class_addProtocol([AVMetadataItem class], @protocol(AVMetadataItemAVAsynchronousKeyValueLoadingCategoryInstanceExports));
	class_addProtocol([AVMetadataItem class], @protocol(AVMetadataItemAVAsynchronousKeyValueLoadingCategoryClassExports));
	class_addProtocol([AVMetadataItem class], @protocol(AVMetadataItemAVMetadataItemLazyValueLoadingCategoryInstanceExports));
	class_addProtocol([AVMetadataItem class], @protocol(AVMetadataItemAVMetadataItemLazyValueLoadingCategoryClassExports));
	class_addProtocol([AVMetadataItem class], @protocol(AVMetadataItemAVMetadataItemDateRepresentationCategoryInstanceExports));
	class_addProtocol([AVMetadataItem class], @protocol(AVMetadataItemAVMetadataItemDateRepresentationCategoryClassExports));
	class_addProtocol([AVMutableMetadataItem class], @protocol(AVMutableMetadataItemInstanceExports));
	class_addProtocol([AVMutableMetadataItem class], @protocol(AVMutableMetadataItemClassExports));
	class_addProtocol([AVMetadataItem class], @protocol(AVMetadataItemAVMetadataItemKeyAndKeyspaceCategoryInstanceExports));
	class_addProtocol([AVMetadataItem class], @protocol(AVMetadataItemAVMetadataItemKeyAndKeyspaceCategoryClassExports));
	class_addProtocol([AVMutableMetadataItem class], @protocol(AVMutableMetadataItemAVMutableMetadataItemDateRepresentationCategoryInstanceExports));
	class_addProtocol([AVMutableMetadataItem class], @protocol(AVMutableMetadataItemAVMutableMetadataItemDateRepresentationCategoryClassExports));
	class_addProtocol([AVMetadataItemValueRequest class], @protocol(AVMetadataItemValueRequestInstanceExports));
	class_addProtocol([AVMetadataItemValueRequest class], @protocol(AVMetadataItemValueRequestClassExports));
	class_addProtocol([AVMetadataItem class], @protocol(AVMetadataItemAVMetadataItemArrayFilteringDeprecableCategoryInstanceExports));
	class_addProtocol([AVMetadataItem class], @protocol(AVMetadataItemAVMetadataItemArrayFilteringDeprecableCategoryClassExports));
	class_addProtocol([AVMetadataItem class], @protocol(AVMetadataItemAVMetadataItemTypeCoercionCategoryInstanceExports));
	class_addProtocol([AVMetadataItem class], @protocol(AVMetadataItemAVMetadataItemTypeCoercionCategoryClassExports));
	class_addProtocol([AVMutableMetadataItem class], @protocol(AVMutableMetadataItemAVMutableMetadataItemKeyAndKeyspaceCategoryInstanceExports));
	class_addProtocol([AVMutableMetadataItem class], @protocol(AVMutableMetadataItemAVMutableMetadataItemKeyAndKeyspaceCategoryClassExports));
	class_addProtocol([AVMetadataItemFilter class], @protocol(AVMetadataItemFilterInstanceExports));
	class_addProtocol([AVMetadataItemFilter class], @protocol(AVMetadataItemFilterClassExports));
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
}
void load_AVFoundation_AVMetadataItem_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
