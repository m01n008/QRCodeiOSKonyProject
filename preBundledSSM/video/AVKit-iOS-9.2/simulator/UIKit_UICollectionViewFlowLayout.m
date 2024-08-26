#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
	class_addProtocol([UICollectionViewFlowLayout class], @protocol(UICollectionViewFlowLayoutInstanceExports));
	class_addProtocol([UICollectionViewFlowLayout class], @protocol(UICollectionViewFlowLayoutClassExports));
	class_addProtocol([UICollectionViewFlowLayoutInvalidationContext class], @protocol(UICollectionViewFlowLayoutInvalidationContextInstanceExports));
	class_addProtocol([UICollectionViewFlowLayoutInvalidationContext class], @protocol(UICollectionViewFlowLayoutInvalidationContextClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UICollectionViewScrollDirectionVertical"] = @0;
	context[@"UICollectionViewScrollDirectionHorizontal"] = @1;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UICollectionElementKindSectionFooter;
	if (p != NULL) context[@"UICollectionElementKindSectionFooter"] = UICollectionElementKindSectionFooter;
	p = (void*) &UICollectionElementKindSectionHeader;
	if (p != NULL) context[@"UICollectionElementKindSectionHeader"] = UICollectionElementKindSectionHeader;
}
void UIKit_UICollectionViewFlowLayoutProtocols()
{
	(void)@protocol(UICollectionViewDelegateFlowLayout);
}
void load_UIKit_UICollectionViewFlowLayout_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
