//
//  SMSData.h
//  VM
//
//  Created by Shiva on 31/03/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SMSData : NSObject {
	NSString	*_text;
	NSArray		*_recipients;
}

@property (readonly) NSString*	text;
@property (readonly) NSArray*	recipients;

- (id) initWithText: (NSString*) txt Recipients: (NSArray*) rcpts;

@end
