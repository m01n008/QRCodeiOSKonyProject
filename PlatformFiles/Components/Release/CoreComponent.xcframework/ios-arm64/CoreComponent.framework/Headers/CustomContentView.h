//
//  CustomContentView.h
//  VM
//
//  Created by Uday Bheema on 25/05/12.
//  Copyright (c) 2012 KONY SOLUTIONS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Skin.h"

@interface CustomContentView : UIView
{
    Skin  *curSkin;
}

@property (nonatomic, retain)	Skin *curSkin;

-(id) initWithFrame:(CGRect) rect withSkin:(Skin *) skin;
@end
