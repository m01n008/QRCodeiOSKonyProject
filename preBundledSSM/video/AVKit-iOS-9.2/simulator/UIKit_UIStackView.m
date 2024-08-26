#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIStackView (Exports)
-(id) jsinitWithArrangedSubviews: (NSArray *) views 
{
	id resultVal__;
	resultVal__ = [[self initWithArrangedSubviews: views ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIStackView class], @protocol(UIStackViewInstanceExports));
	class_addProtocol([UIStackView class], @protocol(UIStackViewClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIStackViewDistributionFill"] = @0;
	context[@"UIStackViewDistributionFillEqually"] = @1;
	context[@"UIStackViewDistributionFillProportionally"] = @2;
	context[@"UIStackViewDistributionEqualSpacing"] = @3;
	context[@"UIStackViewDistributionEqualCentering"] = @4;

	context[@"UIStackViewAlignmentFill"] = @0;
	context[@"UIStackViewAlignmentLeading"] = @1;
	context[@"UIStackViewAlignmentTop"] = @1;
	context[@"UIStackViewAlignmentFirstBaseline"] = @2;
	context[@"UIStackViewAlignmentCenter"] = @3;
	context[@"UIStackViewAlignmentTrailing"] = @4;
	context[@"UIStackViewAlignmentBottom"] = @4;
	context[@"UIStackViewAlignmentLastBaseline"] = @5;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIStackView_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
