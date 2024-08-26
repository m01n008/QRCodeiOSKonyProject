//
//  CollapsibleButton.h
//  VM
//
//  Created by Uday Bheema on 25/07/12.
//  Copyright (c) 2012 KONY SOLUTIONS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CollapsibleView.h"

@interface CollapsibleButton : UIButton
{
    TabSkin *skin;
}

@property (nonatomic, retain) TabSkin *skin;

- (id)initWithFrame:(CGRect)frame;
- (void) setTextAlignment:(TabViewCollapsibleTabNameAlignment) textAlignment;
- (void) applySkin : (TabSkin*) aSkin;
- (void) setTextAlignment:(TabViewCollapsibleTabNameAlignment) textAlignment;

@end
