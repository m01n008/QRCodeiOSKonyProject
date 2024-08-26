//
//  Job.h
//  SampleBinaryDownload
//
//  Created by Chandan Makam on 03/11/15.
//  Copyright © 2015 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Job : NSObject
@property(nonatomic, strong) NSNumber* blobId;
@property(nonatomic, strong) NSString* url;
@property(nonatomic, strong) NSDictionary* headers;
@property(nonatomic, strong) NSDictionary* params;
@property(nonatomic, strong) NSString* imageColumnName;
@property(nonatomic, strong) NSString* requestState;
@property(nonatomic) BOOL requestType;
@property(nonatomic, strong) NSNumber* networkTimeOutInMilliSeconds;
@end
