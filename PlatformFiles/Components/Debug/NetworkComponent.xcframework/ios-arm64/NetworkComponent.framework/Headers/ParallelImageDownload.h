//
//  ParallelImageDownload.h
//  VM
//
//  Created by Uday Bheema on 26/06/12.
//  Copyright (c) 2012 KONY SOLUTIONS. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ParallelImageDownload;

@protocol ParallelImageDownloadProtocol <NSObject>
- (void) didFinishAllDownload:(ParallelImageDownload *) pdownload;
- (void) didFinishDownload:(NSArray*)paramArray imageAvailable:(BOOL) imageFound;
@optional
- (void) didFinishAllDownload;
@end

@interface ParallelImageDownload : NSObject
{
	NSArray*			imageUrls;//, *receivedImageDataList;
	NSMutableDictionary*	imageRequests, *receivedImageDataList;
@private
	id<ParallelImageDownloadProtocol> __weak delegate;
	NSInteger				noOfCompletedTask;	
	BOOL					workInProgress;
}

//@property (nonatomic, retain) NSMutableArray*		imageUrls;
@property (nonatomic, retain) NSMutableDictionary*	imageRequests,*receivedImageDataList;
@property (assign)			 NSInteger				noOfCompletedTask;
@property (assign)			 BOOL					workInProgress;
@property (weak)			 id<ParallelImageDownloadProtocol> delegate;
@property (nonatomic,strong) NSURLSessionDataTask *task;
-(id)		initWithUrls:(NSArray *)urlList;
-(void)		requestWithUrls:(NSArray *)urlList;
-(NSData *) getDataAtIndex:(NSInteger)idx;
-(void)		cancelAllDownload;
- (NSData *) getDataForUrl:(NSString*) url;

@end
