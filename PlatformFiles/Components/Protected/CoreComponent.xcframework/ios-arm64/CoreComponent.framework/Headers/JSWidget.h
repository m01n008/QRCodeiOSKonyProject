//
//  JSWidget.h
//  VM
//
//  Created by KH206 on 01/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "JSObject.h"
#import "WidgetModel.h"

@class AnimationHandleProxy;
@class KeyFrameAnimationModel;

@interface JSWidget : JSObject <SupportedWidgetType>

-(id) proxyObject;
-(void) print:(NSArray*) arguments;
- (void) setEnabled:(NSArray*) enbld;
- (void) setFocus:(NSArray*) enbld;

-(NSString*) toString;

//Animation call for the widget. This call is asynchronous.
-(AnimationHandleProxy*) animate:(NSArray*) arguments;

//Animation call for the widget. Depending on the argumnet waitUntilDone, the api will be sync/async.
-(AnimationHandleProxy*) animationHelper:(NSArray*) arguments waitUntilDone:(BOOL)waitUntilDone;

+(void) registerJSWrapperClass:(Class)wrapperClass forWidgetType:(KonyWidgetType)aWidgetType withWidgetTypeString:(NSString *)widgetTypeString;

// Return the registered JSWrapper object for aWidgetType
+(id) jsObjectForWidgetModel: (WidgetModel*)widgetModel;

- (id)effectivePlatformObject;

- (void)prepareAnimationConfigForAnimationModel:(KeyFrameAnimationModel *)animModel usingAnimationDict:(NSDictionary *)config;
- (void)prepareAnimationCallbacksForAnimModel:(KeyFrameAnimationModel *)animModel usingCallbackDict:(NSDictionary *)callbackDict;

@end
