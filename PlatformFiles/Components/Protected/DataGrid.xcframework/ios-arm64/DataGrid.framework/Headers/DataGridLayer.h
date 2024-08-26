//
//  DataGridLayer.h
//  VM
//
//  Created by Girish Haniyamballi on 18/02/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//




#import <QuartzCore/QuartzCore.h>
#import "DataGridDelegate.h"

#define GRID_LINE_HALF_WIDTH 1.0
@interface DataGridLayer : CALayer 
{
    NSString* __strong gridLineStyle;
    CGColorRef gridColor;
}

@property (nonatomic) NSString* gridLineStyle;
@property (nonatomic) CGColorRef gridColor;
@property(nonatomic, weak)	id <DataGridDelegate> dataSourcedelegate;

@end
