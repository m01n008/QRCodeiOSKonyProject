//
//  KonyTitleBarSkin.h
//  VM
//
//  Created by KH206 on 10/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface KonyTitleBarSkin : NSObject 
{
@private
    UIColor *tintColor;
    UIColor *textColor;
    NSString *backGroundImage;
    //related to titlebar textattributes

    UIFont  *font;
    NSShadow *shadow;

}

@property (nonatomic, retain) UIColor *tintColor;
@property (nonatomic, retain) UIColor *textColor;
@property (nonatomic, retain) NSString *backGroundImage;
@property (nonatomic, retain) UIColor *fontColor;

@property (nonatomic, retain) NSShadow *shadow;
@property (nonatomic, retain) UIFont *font;

@end
