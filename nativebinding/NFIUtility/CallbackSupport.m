//
//  CallbackSupport.m
//  NFIUtility
//
//  Created by KH1128 on 11/10/17.
//  Copyright © 2017 KH1128. All rights reserved.
//

#import "CallbackSupport.h"
#import <CoreComponent/Runtime.h>
#import <CoreComponent/KonyModuleContext.h>
#import <CoreComponent/JSUtil.h>

JSValue* callJSFunction(JSContext* context, JSValue* function, id self, NSArray* arguments)
{
    NSUInteger argumentCount = [arguments count];
    JSValueRef argumentArray[argumentCount];
    Runtime *JSRunTime = [JSUtil getSharedJSRuntime];
    JSValueRef exception = 0;
    
    NSDictionary *NFIConfig = [[[KonyModuleContext sharedContext] moduleInfoDictionary] objectForKey:@"NFIConfig"];
    
    if([[NFIConfig valueForKey:@"implicitKonyConversions"] boolValue]){
        for (unsigned i = 0; i < argumentCount; ++i){
            argumentArray[i] = [JSRunTime convertObject:[arguments[i] toObject] context:[context JSGlobalContextRef] exception:&exception];
        }
    }else{
        for (unsigned i = 0; i < argumentCount; ++i){
            argumentArray[i] = [((JSValue*) arguments[i]) JSValueRef];
        }
    }
    
    JSObjectRef thisObject = JSValueToObject([context JSGlobalContextRef], [[JSValue valueWithObject: self inContext: context] JSValueRef], &exception);
    if (exception)
        return nil;
    
    JSObjectRef object = JSValueToObject([context JSGlobalContextRef], [function JSValueRef], &exception);
    if (exception)
        return nil;
    
    JSValueRef result = JSObjectCallAsFunction([context JSGlobalContextRef], object, thisObject, argumentCount, argumentArray, &exception);
    if (exception){
        if (JSRunTime.uncaughtExceptionHandler) {
            
            id exceptionObj = [JSRunTime convertJSValue:exception exception:nil context:[JSRunTime jsContext]];
            [JSRunTime executeJSFunction:(JSObjectRef)[JSUtil functionRefFromCallback:JSRunTime.uncaughtExceptionHandler] withArguments:[NSArray arrayWithObject:exceptionObj]];
        }
        return nil;
    }
    
    return [JSValue valueWithJSValueRef:result inContext:context];
}

