//
//  KonyTabItem.h
//  KonyCustomTabBarDemo
//
//  Created by KH1244 on 23/05/13.
//  Copyright (c) 2013 Kony Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Skin.h"
#import "KonyTabBarPosition.h"
#import "CustomBadge.h"

@interface KonyTabItem : UIControl

@property (nonatomic, retain) UIImage *image;
@property (nonatomic, retain) UIImage *selectedImage;
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) Skin *skin;
@property (nonatomic, retain) Skin *focusSkin;
@property (nonatomic, retain) CustomBadge *badge;

+ (KonyTabItem *)itemWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage*) selectedImage;
- (void)setSize:(CGSize)size;
- (void) setItemBadge:(NSString*) badgeValue;
- (void) setItemFrame:(CGRect*) frame;

@end
