//
//  KonyInputAccessoryViewCancel.h
//  VM
//
//  Created by User on 28/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KonyInputAccessoryView.h"

#define INPUTACCESSORYVIEW_CANCEL_KEY @"platform.canceltoolbar.cancel"

@interface KonyInputAccessoryViewCancel:KonyInputAccessoryView
{
    @private
    NSString *title;
    UIToolbar *bar;
}

@end
