//
//  KonyTimer.h
//  VM
//
//  Created by Aravind Perumal on 12/10/08.
//  Copyright 2008 Konylabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreComponent/CallBack.h>

@interface KonyTimer : NSObject {
	NSTimer*	timer;
	BOOL		isTimerSet;
	NSString*	timerId;
	id			callback;
	BOOL		repeatTimer;
	NSTimeInterval	interval;
}

@property (nonatomic, retain) NSTimer*	timer;
@property (nonatomic, assign) BOOL		isTimerSet;
@property (nonatomic, copy)   NSString* timerId;
@property (retain)			  id		callback;
@property (nonatomic, assign) BOOL		repeatTimer;
@property (nonatomic, assign) NSTimeInterval interval;

-(id)	initWithId:(NSString*) timerId callback:(id) callback interval:(double) interval repeat: (BOOL) repeatTimer;
-(void) callLuaFunction;
-(void) cancelTimer;
-(void) setCallBack:(CallBack *) callBack;

@end
