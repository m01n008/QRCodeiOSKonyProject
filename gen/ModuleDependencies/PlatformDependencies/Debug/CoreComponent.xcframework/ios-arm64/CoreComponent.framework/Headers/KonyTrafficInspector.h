//
//  KonyTrafficInspector.h
//  CoreComponent
//
//  Created by Soumesh Banerjee on 31/08/18.
//  Copyright © 2018 Kony Inc. All rights reserved.
//
#import <dlfcn.h>
#import <objc/message.h>
#import <Foundation/Foundation.h>
#import "KonyModuleContext.h"
#import "KonyTrafficRecordedDataManager.h"

#define AVOID_REQUEST_LOOP_KEY @"KONY_AVOID_REQUEST_LOOP"
#define KONY_TRAFFIC_INSPECTOR_KEY @"KonyTrafficInspector"
#define KONY_TRAFFIC_INSPECTOR_ENABLED_KEY @"enabled"
#define KONY_TRAFFIC_INSPECTOR_RULES_KEY @"Rules"
#define KONY_TRAFFIC_INSPECTOR_WS_HOST @"WSHost"
#define KONY_TRAFFIC_INSPECTOR_WS_PORT @"WSPort"

@interface KonyTrafficInspector : NSURLProtocol <NSURLConnectionDelegate>
@property (nonatomic, strong) NSURLConnection* connection;
@property (nonatomic, strong) NSMutableData* mutableData;
@property (nonatomic, strong) NSHTTPURLResponse* response;
@property (nonatomic, strong) NSDictionary<NSString *, NSString *>* responseHeaders;
@property (nonatomic, strong) NSDate* requestDate;

+(NSNumber*) isEnabled;
+(id)   sharedInspector;
-(void) registerProtocolClassForNSURLSessionConfiguration:(NSArray<Class>*) protocolClasses;
-(void) unregisterInspector;
-(void) registerInspector;
@end
