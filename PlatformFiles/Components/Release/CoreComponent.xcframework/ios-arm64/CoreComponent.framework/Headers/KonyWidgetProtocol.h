//
//  KonyWidgetProtocol.h
//  VM
//
//  Created by KH206 on 20/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol KonyWidgetProtocol <NSObject>

-(void) reloadWidget;
-(void) reloadSkins;

@optional
- (void) willAppearOnScreen;
- (void) didAppearOnScreen;
- (void) willDisappearFromScreen;
- (void) didDisappearFromScreen;
- (UIView *)viewForAccessibility;
- (BOOL)isDefaultAccessibilityElement;

@end
