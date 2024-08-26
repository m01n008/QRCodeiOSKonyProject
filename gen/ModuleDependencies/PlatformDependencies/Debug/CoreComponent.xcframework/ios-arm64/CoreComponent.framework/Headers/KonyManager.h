//
//  KonyManager.h
//  VM
//
//  Created by Sunil Phani Manne on 12/5/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KonyManager : NSObject {
}

+(id) sharedManager;
-(void) oneTimeInitialization;
@end
