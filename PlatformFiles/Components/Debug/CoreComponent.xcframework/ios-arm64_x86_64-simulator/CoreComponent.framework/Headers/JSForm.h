//
//  JSForm.h
//  VM
//
//  Created by Sunil Phani Manne on 2/21/12.
//  Copyright (c) 2012 Sunil Phani Manne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FormModel.h"
#import "FormWidget.h"
#import "FormProxy.h"
#import "JSWidget.h"
#import "JSOldForm.h"
/** Proxy object which we will registering as "Form" to the Javscript world */

@interface JSForm : JSOldForm {
	
}


-(id) removeAt:(NSArray*) arguments;
-(void) addAt:(NSArray*) arguments;
-(id) remove:(NSArray*) arguments;
- (id) widgets:(NSArray*) arguments;

- (void) scrollToWidget:(NSArray*) arguments;
- (void) scrollToBeginning:(NSArray*) arguments;
- (void) scrollToEnd:(NSArray*) arguments;

- (void) setBackgroundImageForNavbar: (NSArray*) arguments;
- (void) setTitleVerticalPositionAdjustment: (NSArray *) arguments;
- (CGFloat) getTitleVerticalPositionAdjustment: (NSArray *) arguments;

- (void) setHidesBackButton: (NSArray *) arguments;
- (void) setLeftBarButtonItems: (NSArray *) arguments;
- (void) setRightBarButtonItems: (NSArray *) arguments;

@end
