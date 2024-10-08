#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSExpression (Exports)
-(id) jsinitWithExpressionType: (NSExpressionType) type 
{
	id resultVal__;
	resultVal__ = [[self initWithExpressionType: type ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
+(NSExpression *) jsexpressionWithFormat: (NSString *) expressionFormat arguments: (NSArray *) args 
{
	NSExpression * resultVal__;
	if ([args count] == 0) resultVal__ = [self expressionWithFormat: expressionFormat ];
	else if ([args count] == 1) resultVal__ = [self expressionWithFormat: expressionFormat , args[0]];
	else if ([args count] == 2) resultVal__ = [self expressionWithFormat: expressionFormat , args[0], args[1]];
	else if ([args count] == 3) resultVal__ = [self expressionWithFormat: expressionFormat , args[0], args[1], args[2]];
	else if ([args count] == 4) resultVal__ = [self expressionWithFormat: expressionFormat , args[0], args[1], args[2], args[3]];
	else if ([args count] == 5) resultVal__ = [self expressionWithFormat: expressionFormat , args[0], args[1], args[2], args[3], args[4]];
	else if ([args count] == 6) resultVal__ = [self expressionWithFormat: expressionFormat , args[0], args[1], args[2], args[3], args[4], args[5]];
	else if ([args count] == 7) resultVal__ = [self expressionWithFormat: expressionFormat , args[0], args[1], args[2], args[3], args[4], args[5], args[6]];
	else if ([args count] == 8) resultVal__ = [self expressionWithFormat: expressionFormat , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]];
	else if ([args count] == 9) resultVal__ = [self expressionWithFormat: expressionFormat , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]];
	else if ([args count] >= 10) resultVal__ = [self expressionWithFormat: expressionFormat , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]];
	return resultVal__;
}
+(NSExpression *) jsexpressionForBlock: (JSValue *) block arguments: (NSArray *) arguments 
{
	id   (^ block_)(id , NSArray  * , NSMutableDictionary * ) = nil;
	if (!block.isUndefined) {
		block_ = ^id(id arg0, NSArray * arg1, NSMutableDictionary * arg2) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, block, self, parameters);
			return [result toObject];
		};
	}
	NSExpression * resultVal__;
	resultVal__ = [self expressionForBlock: block_ arguments: arguments ];
	return resultVal__;
}
-(JSValue *) getJsExpressionBlock
{
	return [JSValue valueWithObject: self.expressionBlock inContext: [JSContext currentContext]];
}
@end
static void addProtocols()
{
	class_addProtocol([NSExpression class], @protocol(NSExpressionInstanceExports));
	class_addProtocol([NSExpression class], @protocol(NSExpressionClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{

	context[@"NSConstantValueExpressionType"] = @0UL;
	context[@"NSEvaluatedObjectExpressionType"] = @1UL;
	context[@"NSVariableExpressionType"] = @2UL;
	context[@"NSKeyPathExpressionType"] = @3UL;
	context[@"NSFunctionExpressionType"] = @4UL;
	context[@"NSUnionSetExpressionType"] = @5UL;
	context[@"NSIntersectSetExpressionType"] = @6UL;
	context[@"NSMinusSetExpressionType"] = @7UL;
	context[@"NSSubqueryExpressionType"] = @13UL;
	context[@"NSAggregateExpressionType"] = @14UL;
	context[@"NSAnyKeyExpressionType"] = @15UL;
	context[@"NSBlockExpressionType"] = @19UL;
	context[@"NSConditionalExpressionType"] = @20UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSExpression_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
