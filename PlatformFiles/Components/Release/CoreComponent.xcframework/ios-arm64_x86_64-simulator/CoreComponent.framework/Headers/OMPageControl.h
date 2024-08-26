//
//  OMPageControl.h
//  VM
//
//  Created by KH206 on 05/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Skin.h"

@interface OMPageControl : UIPageControl {
	UIImage* mImageNormal;
	UIImage* mImageCurrent;
    NSString *pageActiveTintColor;
    NSString *pageInactiveTintColor;
}

@property (nonatomic, readwrite, retain) UIImage* imageNormal;
@property (nonatomic, readwrite, retain) UIImage* imageCurrent;
@property (nonatomic, readwrite, retain) NSString *pageActiveTintColor;
@property (nonatomic, readwrite, retain) NSString *pageInactiveTintColor;
@property (nonatomic, readwrite, retain) Skin* pageSkin;

@end