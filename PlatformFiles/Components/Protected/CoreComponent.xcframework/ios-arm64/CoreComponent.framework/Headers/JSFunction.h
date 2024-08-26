//
//  JSFunction.h
//  VM
//
//  Created by Amba on 12/03/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <JavaScriptCore/JSObjectRef.h>
@class Runtime;
@interface JSFunction : NSObject {
    JSObjectRef functionObject;
}

@property(nonatomic,setter = setFunctionObject:) JSObjectRef functionObject;
@property (nonatomic, retain) NSString *applicationID;
@property (nonatomic, weak,setter = setRunTime:) Runtime *runtime;

@end
