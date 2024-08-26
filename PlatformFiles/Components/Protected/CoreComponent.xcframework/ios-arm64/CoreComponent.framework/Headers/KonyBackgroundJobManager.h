//
//  KonyBackgroundJobManager.h
//  VM
//
//  Created by Praveen Basu Satyam on 26/06/14.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface KonyBackgroundJobManager : NSObject



@property (atomic, retain) id backgroundFetchCallback;
@property (atomic, retain) id fetchInterval;
@property (atomic, retain) id completionHandler;


+ (id)sharedManager ;
- (void)registerBackgroundFetch:(id)backgroundCallBack withFetchInterval:(id)fetchInterval ;
- (void)setBackgroundFetchCompletionStatus:(NSUInteger)completionStatus ;
- (void)setBackgroundFetchInterval:(id)fetchInterval ;
- (void)performFetchWithCompletionHandler:(void (^)(UIBackgroundFetchResult result))completionHandler ;


@end
