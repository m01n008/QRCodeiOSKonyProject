//
//  konyExtensionsRuntime.h
//  konyExtensionsRuntime
//
//  Created by Satya.bobba on 12/11/16.
//  Copyright © 2016 Satya.bobba. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import <Social/Social.h>

@interface konyExtensionsRuntime : NSObject{

}
+ (JSContext*)getContext;
+ (void) setup : (id) obj;
+ (void) setupNameSpace :(id)obj;
+ (void) deleatNameSpace :(id)obj;
+ (void) setExtensionCallbacks:(JSValue*)jscallback;
+ (JSValue *)executeCallback:(NSString*)key;
+ (JSValue *)executeCallback:(NSString*)key withArg:(NSArray *)args;


@end
