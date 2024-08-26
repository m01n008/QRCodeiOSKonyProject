//
//  JSTextBox.m
//  VM
//
//  Created by Krishna Kiran Kasturi on 20/03/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <CoreComponent/RuntimeObject.h>
#import <CoreComponent/JSWidget.h>
#import "TextBoxProxy.h"

/** Proxy object which we will registering as "TextBox" to the Javscript world */

@interface JSTextBox : JSWidget
- (void)setSelection:(NSArray *)positions;
- (NSDictionary *)getSelection;
@end
