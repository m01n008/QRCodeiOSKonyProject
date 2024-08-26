//
//  JSUser.h
//  VM
//
//  Created by Dhananjay on 14/12/16.
//
//

#import "JSWidget.h"

@interface JSUser : JSWidget

- (void)setUserWidgetContractAfterJSObjectCreation;
/*
 Change component view dynamically by passing the new view.
 */
- (void)changeView:(NSArray *) args;
@end
