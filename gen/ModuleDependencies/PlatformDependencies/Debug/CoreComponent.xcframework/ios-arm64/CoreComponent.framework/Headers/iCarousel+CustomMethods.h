//
//  iCarousel+CustomMethods.h
//  VM
//
//  Created by Uday Bheema on 16/12/11.
//  Copyright (c) 2011 KONY LABS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iCarousel.h"

@interface iCarousel (CustomMethods)

@property (nonatomic, assign) UIView *contentView;
//@property (nonatomic, retain) NSDictionary *itemViews;
@property (nonatomic, assign) NSInteger numberOfVisibleItems;
@property (nonatomic, assign) CGFloat scrollOffset;
@property (nonatomic, assign) BOOL scrollEnabled;
@property (nonatomic, assign) CGFloat toggle;

-(void) setViewFrame:(CGRect) rect;
- (id)initWithFrame:(CGRect) frame andContentView:(UIView*) cView;
- (void)setup;



@end
