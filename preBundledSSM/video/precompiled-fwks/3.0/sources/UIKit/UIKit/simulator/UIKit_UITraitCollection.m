#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UITraitCollection (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
@implementation UITraitCollection (UITraitCollectionCurrentTraitCollectionCategoryExports)
-(void) jsperformAsCurrentTraitCollection: (JSValue *) actions 
{
	void (^ actions_)(void) = nil;
	if (!actions.isUndefined) {
		actions_ = ^void() {
			JSContext* __jsContext = actions.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, actions, self, parameters);
		};
	}
	[self performAsCurrentTraitCollection: actions_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([UITraitCollection class], @protocol(UITraitCollectionDynamicAppearanceCategoryInstanceExports));
	class_addProtocol([UITraitCollection class], @protocol(UITraitCollectionDynamicAppearanceCategoryClassExports));
	class_addProtocol([UITraitCollection class], @protocol(UITraitCollectionImageConfigurationCategoryInstanceExports));
	class_addProtocol([UITraitCollection class], @protocol(UITraitCollectionImageConfigurationCategoryClassExports));
	class_addProtocol([UITraitCollection class], @protocol(UITraitCollectionInstanceExports));
	class_addProtocol([UITraitCollection class], @protocol(UITraitCollectionClassExports));
	class_addProtocol([UITraitCollection class], @protocol(UITraitCollectionCurrentTraitCollectionCategoryInstanceExports));
	class_addProtocol([UITraitCollection class], @protocol(UITraitCollectionCurrentTraitCollectionCategoryClassExports));
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
void UIKit_UITraitCollectionProtocols()
{
	(void)@protocol(UITraitEnvironment);
}
void load_UIKit_UITraitCollection_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
