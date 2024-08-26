//
//  KonyCustomAnimationDelegate.h
//  VM
//
//  Created by prabhakar on 16/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol KonyCustomAnimationDelegate
-(void) animationComplete :(NSString *)animationID;
-(void) animationStarted :(NSString *)animationID;
@end
