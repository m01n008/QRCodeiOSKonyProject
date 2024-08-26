//
//  KonyHTTPBGTransferListenerDelegate.h
//  VM
//
//  Created by Praveen Basu Satyam on 18/06/14.
//  Copyright (c) 2014 Kony, Inc. All rights reserved.
//
//

#import <Foundation/Foundation.h>
#import "KonyPublicKeySSLPinningManger.h"

@interface KonyHTTPBGTransferListenerDelegate : NSObject <NSURLSessionDelegate, NSURLSessionTaskDelegate, NSURLSessionDownloadDelegate>



- (id)initWithController:(id)controller ;


@end
