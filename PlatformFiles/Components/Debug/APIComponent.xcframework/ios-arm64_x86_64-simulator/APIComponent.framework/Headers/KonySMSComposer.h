//
//  KonySMSComposer.h
//  VM
//
//  Created by Shiva on 01/04/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SMSData.h"
#import <MessageUI/MFMessageComposeViewController.h>

@interface KonySMSComposer : NSObject
{

}

- (BOOL) composeSMS: (SMSData*) smsData;

@end


@interface KonyURLBasedSMSComposer : KonySMSComposer
{

}

@end



@interface KonyControllerBasedSMSComposer : KonySMSComposer <MFMessageComposeViewControllerDelegate>

{
	
}

- (void) showComposer: (SMSData*) smsData;

@end


