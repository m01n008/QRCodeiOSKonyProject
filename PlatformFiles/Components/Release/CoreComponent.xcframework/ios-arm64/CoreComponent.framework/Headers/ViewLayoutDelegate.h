//
//  ViewLayoutDelegate.h
//  VM
//
//  Created by KH206 on 31/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ViewLayoutDelegate <NSObject>
@required
-(void) layoutView: (UIView*) view; 
@end
