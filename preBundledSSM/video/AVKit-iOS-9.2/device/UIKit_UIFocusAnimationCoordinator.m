#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIFocusAnimationCoordinator (Exports)
-(void) jsaddCoordinatedAnimations: (JSValue *) animations completion: (JSValue *) completion 
{
	void (^ animations_)(void) = nil;
	if (!animations.isUndefined) {
		animations_ = ^void() {
			JSContext* __jsContext = animations.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, animations, self, parameters);
		};
	}
	void (^ completion_)(void) = nil;
	if (!completion.isUndefined) {
		completion_ = ^void() {
			JSContext* __jsContext = completion.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, completion, self, parameters);
		};
	}
	[self addCoordinatedAnimations: animations_ completion: completion_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([UIFocusAnimationCoordinator class], @protocol(UIFocusAnimationCoordinatorInstanceExports));
	class_addProtocol([UIFocusAnimationCoordinator class], @protocol(UIFocusAnimationCoordinatorClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIFocusAnimationCoordinator_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
