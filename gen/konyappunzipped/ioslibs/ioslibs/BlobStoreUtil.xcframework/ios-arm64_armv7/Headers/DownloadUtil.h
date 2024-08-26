//
//  DownloadUtil.h
//  SampleView
//
//  Created by Chandan Makam on 02/11/15.
//  Copyright © 2015 kony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CallBack.h"

@interface DownloadUtil : NSObject
+(void) binaryThreadInit:(CallBack*)prepareJobsCallback
                          :(CallBack*)getJobsCallback
                          :(CallBack*)universalSuccessCallback
                          :(CallBack*)universalFailureCallback;

+(void) notifyToPrepareJobs;
+(void) notifyToProcessJobs;
+(CallBack*) getPrepareJobsJSHandler;
+(CallBack*) getGetJobsJSHandler;
+(CallBack*) getUniversalSuccessCallbackHandler;
+(CallBack*) getUniversalErrorCallbackHandler;
+(void) executeUniversalSuccessCallback:(NSMutableArray*)arguments;
+(void) executeUniversalFailureCallback:(NSMutableArray*)arguments;

@end
