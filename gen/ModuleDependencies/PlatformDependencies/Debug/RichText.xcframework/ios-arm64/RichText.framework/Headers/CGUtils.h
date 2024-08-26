//
//  CGUtils.h
//  CoreTextExtensions
//
//  Created by Oliver Drobnik on 1/16/11.
//  Copyright 2011 Drobnik.com. All rights reserved.
//

#import <CoreGraphics/CoreGraphics.h>
#import <Foundation/Foundation.h>

CGPathRef CreatePathForRoundedRect(CGRect rect, CGFloat cornerRadius, BOOL roundTopCorners, BOOL roundBottomCorners);
CGSize sizeThatFitsKeepingAspectRatio(CGSize originalSize, CGSize sizeToFit);
CGPoint CGRectCenter(CGRect rect);
