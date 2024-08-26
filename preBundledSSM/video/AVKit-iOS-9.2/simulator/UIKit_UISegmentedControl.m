#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UISegmentedControl (Exports)
-(id) jsinitWithItems: (NSArray *) items 
{
	id resultVal__;
	resultVal__ = [[self initWithItems: items ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UISegmentedControl class], @protocol(UISegmentedControlInstanceExports));
	class_addProtocol([UISegmentedControl class], @protocol(UISegmentedControlClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UISegmentedControlStylePlain"] = @0;
	context[@"UISegmentedControlStyleBordered"] = @1;
	context[@"UISegmentedControlStyleBar"] = @2;
	context[@"UISegmentedControlStyleBezeled"] = @3;

	context[@"UISegmentedControlNoSegment"] = @-1;

	context[@"UISegmentedControlSegmentAny"] = @0;
	context[@"UISegmentedControlSegmentLeft"] = @1;
	context[@"UISegmentedControlSegmentCenter"] = @2;
	context[@"UISegmentedControlSegmentRight"] = @3;
	context[@"UISegmentedControlSegmentAlone"] = @4;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UISegmentedControl_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
