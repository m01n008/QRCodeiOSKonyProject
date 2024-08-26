//
//  ViewDrawingDelegate.h
//  VM
//
//  Created by KH206 on 31/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

@protocol ViewDrawingDelegate <NSObject>
@required
-(void) drawView : (UIView*) view withContext: (CGContextRef) context inRect: (CGRect) rect; 

@optional
-(CGRect) drawText : (UIView*) view withContext: (CGContextRef) context inRect: (CGRect) rect; 


@end
