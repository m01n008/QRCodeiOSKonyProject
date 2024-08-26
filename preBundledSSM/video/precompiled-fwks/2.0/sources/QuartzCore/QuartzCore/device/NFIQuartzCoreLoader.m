#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFIQuartzCoreModules(JSContext* context)
{
	load_QuartzCore_CABase_symbols(context);
	load_QuartzCore_CALayer_symbols(context);
	load_QuartzCore_CADisplayLink_symbols(context);
	load_QuartzCore_CATiledLayer_symbols(context);
	load_QuartzCore_CAMediaTiming_symbols(context);
	load_QuartzCore_CAMediaTimingFunction_symbols(context);
	load_QuartzCore_CAShapeLayer_symbols(context);
	load_QuartzCore_CAEmitterLayer_symbols(context);
	load_QuartzCore_CAValueFunction_symbols(context);
	load_QuartzCore_CATransform3D_symbols(context);
	load_QuartzCore_CAScrollLayer_symbols(context);
	load_QuartzCore_CATextLayer_symbols(context);
	load_QuartzCore_CAAnimation_symbols(context);
	load_QuartzCore_CATransaction_symbols(context);
	load_QuartzCore_CATransformLayer_symbols(context);
	load_QuartzCore_CAEmitterCell_symbols(context);
	load_QuartzCore_CAEAGLLayer_symbols(context);
	load_QuartzCore_CAReplicatorLayer_symbols(context);
	load_QuartzCore_CAMetalLayer_symbols(context);
	load_QuartzCore_CAGradientLayer_symbols(context);
}

JSValue* extractNFIQuartzCoreStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
	if (strcmp(type, @encode(CATransform3D)) == 0) {
		CATransform3D argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCATransform3D: argument inContext: context];
	}    
    return nil;
}

BOOL setNFIQuartzCoreStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
	if (strcmp(type, @encode(CATransform3D)) == 0) {
		CATransform3D returnValue = value.toCATransform3D;
		[invocation setReturnValue: &returnValue];
		return YES;
	}    
    return NO;
}

