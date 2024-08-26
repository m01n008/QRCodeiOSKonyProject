//
//  KonyIdleTimer.h
//  VM
//
//  Created by Amba Babjee Dhanisetti on 24/02/10.
//  Copyright 2010 KonySolutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CallBack.h"

@interface KonyIdleTimer : NSObject {
	NSTimer*		timer;
	BOOL			isIdletimerFired;
	NSTimeInterval	idletime;
	
	NSTimeInterval elapsedIdletime;
	NSTimeInterval appResignedActiveTimestamp;
    CallBack       *idleTimeoutCallBack;
    BOOL            didAppEnterBackground;
    
}

@property (nonatomic, retain) NSTimer*	timer;
@property (nonatomic, assign) BOOL isIdletimerFired;
@property (nonatomic, assign) NSTimeInterval idletime;
@property (readwrite, assign) NSTimeInterval elapsedIdletime;
@property (readwrite, assign) NSTimeInterval appResignedActiveTimestamp;

-(id)	initWithIdleTime:(NSInteger)idletime callback:(id) callback;
-(void) setIdletimeoutHandler:(id) callback;
-(void) idletimeoutHandler;
-(void) handleApplicationDidBecomeActive;
-(void) handleApplicationWillResignActive;
-(void) resetIdleTimer;
-(void) resetIdleTimerTo:(NSTimeInterval) timeInterval;
-(void) cancelTimer;

@end
