//
//  KonyNSURLSessionDelegate.h
//  SimpleBackgroundTransfer
//
//  Created by Praveen Basu Satyam on 18/06/14.
//  Copyright (c) 2014 Kony, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyPublicKeySSLPinningManger.h"
#import "KonyAuthChallengesHandler.h"
@interface KonyNSURLSessionDelegate : NSObject <NSURLSessionDelegate, NSURLSessionTaskDelegate, NSURLSessionDownloadDelegate>

@end
