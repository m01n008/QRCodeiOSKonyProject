//
//  KonySMS.h
//  VM
//
//  Created by Shiva on 01/04/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SMSData.h"


@interface KonySMS : NSObject {

}

- (BOOL) sendSMS:(SMSData*) smsData;

@end
