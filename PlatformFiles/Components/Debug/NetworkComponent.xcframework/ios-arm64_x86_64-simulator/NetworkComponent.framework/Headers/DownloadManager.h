//
//  DownloadManager.h
//  VM
//
//  Created by Uday Bheema on 26/06/12.
//  Copyright (c) 2012 KONY SOLUTIONS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ParallelImageDownload.h"

@protocol DownloadDelegateProtocol <NSObject>

@optional
-(void) dataDownloadedForURL:(NSString*) downloadURLString withData:(id) downloadData andError:(NSError*) aError;


@end

@interface DownloadManager : NSObject <ParallelImageDownloadProtocol>{
@private
    NSMutableArray *downloadsArray;
}

@property (nonatomic, weak) id<DownloadDelegateProtocol> aDelegate;
@property (nonatomic, readonly) NSMutableDictionary *cache;

+ (instancetype)sharedInstance;
-(void) downloadDataForURLs:(NSArray*) urlArray;
- (BOOL)isUrlExistsInCache:(NSString *)aUrl;
- (NSData *)getDataForUrl:(NSString *)aUrl;

@end
