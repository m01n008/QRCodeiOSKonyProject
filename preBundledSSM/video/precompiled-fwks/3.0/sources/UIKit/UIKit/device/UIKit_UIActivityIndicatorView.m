#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIActivityIndicatorView (Exports)
-(id) jsinitWithActivityIndicatorStyle: (UIActivityIndicatorViewStyle) style 
{
	id resultVal__;
	resultVal__ = [[self initWithActivityIndicatorStyle: style ] autorelease];
	return resultVal__;
}
-(id) jsinitWithFrame: (CGRect) frame 
{
	id resultVal__;
	resultVal__ = [[self initWithFrame: frame ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIActivityIndicatorView class], @protocol(UIActivityIndicatorViewInstanceExports));
	class_addProtocol([UIActivityIndicatorView class], @protocol(UIActivityIndicatorViewClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIActivityIndicatorViewStyleMedium"] = @100;
	context[@"UIActivityIndicatorViewStyleLarge"] = @101;
	context[@"UIActivityIndicatorViewStyleWhiteLarge"] = @0;
	context[@"UIActivityIndicatorViewStyleWhite"] = @1;
	context[@"UIActivityIndicatorViewStyleGray"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIActivityIndicatorView_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
