//
//  KonyCollection.h
//  VM
//
//  Created by Shiva on 29/11/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol KonyCollection

@required
	-(id) getObjectForKey: (id) key;
	-(void) setObject: (id) value forKey: (id) key;

@end
