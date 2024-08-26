#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UITargetedPreview (Exports)
-(id) jsinitWithView: (UIView *) view 
{
	id resultVal__;
	resultVal__ = [[self initWithView: view ] autorelease];
	return resultVal__;
}
-(id) jsinitWithView: (UIView *) view parameters: (__kindof UIPreviewParameters *) parameters 
{
	id resultVal__;
	resultVal__ = [[self initWithView: view parameters: parameters ] autorelease];
	return resultVal__;
}
-(id) jsinitWithView: (UIView *) view parameters: (__kindof UIPreviewParameters *) parameters target: (__kindof UIPreviewTarget *) target 
{
	id resultVal__;
	resultVal__ = [[self initWithView: view parameters: parameters target: target ] autorelease];
	return resultVal__;
}
@end
@implementation UIPreviewTarget (Exports)
-(id) jsinitWithContainer: (UIView *) container center: (CGPoint) center transform: (CGAffineTransform) transform 
{
	id resultVal__;
	resultVal__ = [[self initWithContainer: container center: center transform: transform ] autorelease];
	return resultVal__;
}
-(id) jsinitWithContainer: (UIView *) container center: (CGPoint) center 
{
	id resultVal__;
	resultVal__ = [[self initWithContainer: container center: center ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UITargetedPreview class], @protocol(UITargetedPreviewInstanceExports));
	class_addProtocol([UITargetedPreview class], @protocol(UITargetedPreviewClassExports));
	class_addProtocol([UIPreviewTarget class], @protocol(UIPreviewTargetInstanceExports));
	class_addProtocol([UIPreviewTarget class], @protocol(UIPreviewTargetClassExports));
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
void load_UIKit_UITargetedPreview_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
