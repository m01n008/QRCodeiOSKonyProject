//
//  SUIPageBackGroundview.h
//  VM
//
//  Created by KH206 on 05/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuartzCore/QuartzCore.h"

@class SegmentedUISkin;

@interface SUIPageBackGroundview : UIView
{
    NSString *skinIden;
}

@property (nonatomic, retain) NSString *skinIden;

- (void) setViewProperties;
- (BOOL) isColorOpaque : (UIColor*) color;
-(SegmentedUISkin*) getSkinForIdentifier:(NSString*) skinID;

@end
