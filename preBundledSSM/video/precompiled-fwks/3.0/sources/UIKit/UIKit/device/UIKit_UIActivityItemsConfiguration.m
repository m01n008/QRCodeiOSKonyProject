#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIActivityItemsConfiguration (Exports)
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object1 withObject: object2 ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object ];
	return resultVal__;
}
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
-(id) jsinitWithItemProviders: (NSArray *) itemProviders 
{
	id resultVal__;
	resultVal__ = [[self initWithItemProviders: itemProviders ] autorelease];
	return resultVal__;
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(id) jsinitWithObjects: (NSArray *) objects 
{
	id resultVal__;
	resultVal__ = [[self initWithObjects: objects ] autorelease];
	return resultVal__;
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(JSValue *) getJsPreviewProvider
{
	return [JSValue valueWithObject: self.previewProvider inContext: [JSContext currentContext]];
}
-(void) setJsPreviewProvider: (JSValue *) value
{
	NSItemProvider *  (^ value_)(NSInteger, UIActivityItemsConfigurationPreviewIntent , CGSize) = nil;
	if (!value.isUndefined) {
		value_ = ^NSItemProvider *(NSInteger arg0, UIActivityItemsConfigurationPreviewIntent arg1, CGSize arg2) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithSize: arg2 inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toObject];
		};
	}
	self.previewProvider = value_;
}
-(JSValue *) getJsPerItemMetadataProvider
{
	return [JSValue valueWithObject: self.perItemMetadataProvider inContext: [JSContext currentContext]];
}
-(void) setJsPerItemMetadataProvider: (JSValue *) value
{
	id   (^ value_)(NSInteger, UIActivityItemsConfigurationMetadataKey ) = nil;
	if (!value.isUndefined) {
		value_ = ^id(NSInteger arg0, UIActivityItemsConfigurationMetadataKey arg1) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toObject];
		};
	}
	self.perItemMetadataProvider = value_;
}
-(JSValue *) getJsMetadataProvider
{
	return [JSValue valueWithObject: self.metadataProvider inContext: [JSContext currentContext]];
}
-(void) setJsMetadataProvider: (JSValue *) value
{
	id   (^ value_)(UIActivityItemsConfigurationMetadataKey ) = nil;
	if (!value.isUndefined) {
		value_ = ^id(UIActivityItemsConfigurationMetadataKey arg0) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toObject];
		};
	}
	self.metadataProvider = value_;
}
-(JSValue *) getJsApplicationActivitiesProvider
{
	return [JSValue valueWithObject: self.applicationActivitiesProvider inContext: [JSContext currentContext]];
}
-(void) setJsApplicationActivitiesProvider: (JSValue *) value
{
	NSArray  *  (^ value_)(void) = nil;
	if (!value.isUndefined) {
		value_ = ^NSArray *() {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toObject];
		};
	}
	self.applicationActivitiesProvider = value_;
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
static void addProtocols()
{
	class_addProtocol([UIActivityItemsConfiguration class], @protocol(UIActivityItemsConfigurationInstanceExports));
	class_addProtocol([UIActivityItemsConfiguration class], @protocol(UIActivityItemsConfigurationClassExports));
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
void load_UIKit_UIActivityItemsConfiguration_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
