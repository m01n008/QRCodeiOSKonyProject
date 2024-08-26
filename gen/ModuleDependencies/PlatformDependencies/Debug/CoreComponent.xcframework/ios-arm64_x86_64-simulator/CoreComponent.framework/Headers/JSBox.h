//
//  JSBox.h
//  VM
//
//  Created by Uday Kiran Bheema on 2/21/12.
//  Copyright (c) 2012 Uday Kiran Bheema. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSWidget.h"

/** Proxy object which we will registering as "Box" to the Javscript world */

@interface JSBox : JSWidget {
	
}

- (void) add: (NSArray*) arguments;
-(id) widgets:(NSArray*) arguments;
@end
