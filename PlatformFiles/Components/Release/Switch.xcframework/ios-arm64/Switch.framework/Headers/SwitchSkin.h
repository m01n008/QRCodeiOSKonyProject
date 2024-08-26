//
//  SwitchSkin.h
//  VM
//
//  Created by KH165 on 01/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <CoreComponent/Skin.h>

@interface SwitchSkinModel : SkinModel {
    
    int leftFontColor;
    int rightFontColor;
    int leftBackgroundColor;
    int rightBackgroundColor;
    int tintColor;
    NSString *leftBackgroundImage;
    NSString *rightBackgroundImage;
    int thumbColor;

}

@property (nonatomic, assign)  int leftFontColor;
@property (nonatomic, assign)  int rightFontColor;
@property (nonatomic, assign)  int leftBackgroundColor;
@property (nonatomic, assign)  int rightBackgroundColor;
@property (nonatomic, assign)  int tintColor;
@property (nonatomic, retain)  NSString *leftBackgroundImage;
@property (nonatomic, retain)  NSString *rightBackgroundImage;
@property (nonatomic, assign)  int thumbColor;

@end

@interface SwitchSkin : Skin {
    
    UIColor *leftFontColor;
    UIColor *rightFontColor;
    UIColor *leftBackgroundColor;
    UIColor *rightBackgroundColor;
    UIColor *tintColor;
    NSString *leftBackgroundImage;
    NSString *rightBackgroundImage;
    UIColor *thumbColor;
}

@property (nonatomic, retain) UIColor *leftFontColor;
@property (nonatomic, retain) UIColor *rightFontColor;
@property (nonatomic, retain) UIColor *leftBackgroundColor;
@property (nonatomic, retain) UIColor *rightBackgroundColor;
@property (nonatomic, retain) UIColor *tintColor;
@property (nonatomic, retain) NSString *leftBackgroundImage;
@property (nonatomic, retain) NSString *rightBackgroundImage;
@property (nonatomic, retain) UIColor *thumbColor;


@end
