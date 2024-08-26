//
//  CameraSkin.h
//  VM
//
//  Created by User Kasturi on 29/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <CoreComponent/Skin.h>

@interface CameraSkinModel : SkinModel 
{
     int shadowColor;   //???
     int shadowXOffset; //???
     int shadowYOffset; //???
    ShadowsModel *textShadow;
    BOOL useNative;
}

@property (nonatomic)  int shadowColor;
@property (nonatomic)  int shadowXOffset;
@property (nonatomic)  int shadowYOffset;
@property (nonatomic, retain)ShadowsModel *textShadow;
@property (nonatomic, assign) BOOL useNative;

@end

@interface CameraSkin : Skin
{
    UIColor *shadowColor;
    unsigned int shadowXOffset;
    unsigned int shadowYOffset;
    Shadows *textShadow;
    BOOL useNative;
}

@property (nonatomic, retain) UIColor *shadowColor;
@property (nonatomic) unsigned int shadowXOffset;
@property (nonatomic) unsigned int shadowYOffset;
@property (nonatomic, retain)Shadows *textShadow;
@property (nonatomic, assign) BOOL useNative;

@end
