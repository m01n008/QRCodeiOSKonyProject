//
//  KonyTabBar.h
//  KonyCustomTabBarDemo
//
//  Created by KH1244 on 23/05/13.
//  Copyright (c) 2013 Kony Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KonyTabBarPosition.h"
#import "Skin.h"
#import "KonyTypes.h"

@interface KonyTabBar : UIScrollView

@property (nonatomic, retain) NSArray *items;
@property (nonatomic, assign) NSUInteger selectedIndex;
@property (nonatomic, assign) KonyTabBarPosition position;
@property (nonatomic, readwrite) NSInteger itemSpacing;
@property (nonatomic, readwrite) AppMenuItemAlignment itemAlignment;

- (void) selectItemAtIndex:(NSUInteger)index;
- (void) deselectSelectedItem;
- (void) applySkin:(Skin*) skin;
- (void) applyFocusSkin:(Skin*) focusSkin;

@end
