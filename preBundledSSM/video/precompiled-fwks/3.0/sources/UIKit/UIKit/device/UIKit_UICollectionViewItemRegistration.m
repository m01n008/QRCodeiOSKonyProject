#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UICollectionViewSupplementaryRegistration (Exports)
+(id) jsregistrationWithSupplementaryNib: (UINib *) supplementaryNib elementKind: (NSString *) elementKind configurationHandler: (JSValue *) configurationHandler 
{
	void (^ configurationHandler_)(__kindof UICollectionReusableView * , NSString * , NSIndexPath * ) = nil;
	if (!configurationHandler.isUndefined) {
		configurationHandler_ = ^void(__kindof UICollectionReusableView * arg0, NSString * arg1, NSIndexPath * arg2) {
			JSContext* __jsContext = configurationHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, configurationHandler, self, parameters);
		};
	}
	id resultVal__;
	resultVal__ = [self registrationWithSupplementaryNib: supplementaryNib elementKind: elementKind configurationHandler: configurationHandler_ ];
	return resultVal__;
}
+(id) jsregistrationWithSupplementaryClass: (JSValue *) supplementaryClass elementKind: (NSString *) elementKind configurationHandler: (JSValue *) configurationHandler 
{
	Class supplementaryClass_ = objc_getClass([[supplementaryClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	void (^ configurationHandler_)(__kindof UICollectionReusableView * , NSString * , NSIndexPath * ) = nil;
	if (!configurationHandler.isUndefined) {
		configurationHandler_ = ^void(__kindof UICollectionReusableView * arg0, NSString * arg1, NSIndexPath * arg2) {
			JSContext* __jsContext = configurationHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, configurationHandler, self, parameters);
		};
	}
	id resultVal__;
	resultVal__ = [self registrationWithSupplementaryClass: supplementaryClass_ elementKind: elementKind configurationHandler: configurationHandler_ ];
	return resultVal__;
}
-(JSValue *) getJsSupplementaryClass
{
	return [JSValue valueWithObject: self.supplementaryClass inContext: [JSContext currentContext]];
}
-(JSValue *) getJsConfigurationHandler
{
	return [JSValue valueWithObject: self.configurationHandler inContext: [JSContext currentContext]];
}
@end
@implementation UICollectionViewCellRegistration (Exports)
+(id) jsregistrationWithCellNib: (UINib *) cellNib configurationHandler: (JSValue *) configurationHandler 
{
	void (^ configurationHandler_)(__kindof UICollectionViewCell * , NSIndexPath * , id ) = nil;
	if (!configurationHandler.isUndefined) {
		configurationHandler_ = ^void(__kindof UICollectionViewCell * arg0, NSIndexPath * arg1, id arg2) {
			JSContext* __jsContext = configurationHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, configurationHandler, self, parameters);
		};
	}
	id resultVal__;
	resultVal__ = [self registrationWithCellNib: cellNib configurationHandler: configurationHandler_ ];
	return resultVal__;
}
+(id) jsregistrationWithCellClass: (JSValue *) cellClass configurationHandler: (JSValue *) configurationHandler 
{
	Class cellClass_ = objc_getClass([[cellClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	void (^ configurationHandler_)(__kindof UICollectionViewCell * , NSIndexPath * , id ) = nil;
	if (!configurationHandler.isUndefined) {
		configurationHandler_ = ^void(__kindof UICollectionViewCell * arg0, NSIndexPath * arg1, id arg2) {
			JSContext* __jsContext = configurationHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, configurationHandler, self, parameters);
		};
	}
	id resultVal__;
	resultVal__ = [self registrationWithCellClass: cellClass_ configurationHandler: configurationHandler_ ];
	return resultVal__;
}
-(JSValue *) getJsConfigurationHandler
{
	return [JSValue valueWithObject: self.configurationHandler inContext: [JSContext currentContext]];
}
-(JSValue *) getJsCellClass
{
	return [JSValue valueWithObject: self.cellClass inContext: [JSContext currentContext]];
}
@end
static void addProtocols()
{
	class_addProtocol([UICollectionViewSupplementaryRegistration class], @protocol(UICollectionViewSupplementaryRegistrationInstanceExports));
	class_addProtocol([UICollectionViewSupplementaryRegistration class], @protocol(UICollectionViewSupplementaryRegistrationClassExports));
	class_addProtocol([UICollectionViewCellRegistration class], @protocol(UICollectionViewCellRegistrationInstanceExports));
	class_addProtocol([UICollectionViewCellRegistration class], @protocol(UICollectionViewCellRegistrationClassExports));
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
void load_UIKit_UICollectionViewItemRegistration_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
