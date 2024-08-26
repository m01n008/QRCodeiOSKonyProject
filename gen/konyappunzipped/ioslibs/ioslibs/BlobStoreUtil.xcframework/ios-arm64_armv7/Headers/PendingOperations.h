//
//  PendingOperations.h
//  SampleBinaryDownload
//
//  Created by Chandan Makam on 03/11/15.
//  Copyright © 2015 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PendingOperations : NSObject
@property (nonatomic, strong) NSMutableDictionary *downloadsInProgress;
@property (nonatomic, strong) NSOperationQueue *downloadQueue;
@end
