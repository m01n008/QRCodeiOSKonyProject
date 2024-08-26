//
//  BoxSkin.h
//  VM
//
//  Created by Uday Bheema on 06/03/12.
//  Copyright (c) 2012 KONY LABS. All rights reserved.
//

#import <CoreComponent/Skin.h>

@interface SegmentedUISkinModel : SkinModel
{
     int shadowColor;
     int shadowXOffset;
     int shadowYOffset;
     int transparency;
    ShadowsModel *textShadow;
}

@property(nonatomic,assign)  int shadowColor;
@property(nonatomic,assign)  int shadowXOffset;
@property(nonatomic,assign)  int shadowYOffset;
@property(nonatomic,assign)  int transparency;
@property(nonatomic,retain) ShadowsModel *textShadow;

@end

@interface SegmentedUISkin : Skin
{
    UIColor *shadowColor;
    unsigned int shadowXOffset;
    unsigned int shadowYOffset;
    unsigned int transparency;
     Shadows *textShadow;
}

@property (nonatomic,retain) UIColor *shadowColor;
@property (nonatomic,assign) unsigned int shadowXOffset;
@property (nonatomic,assign) unsigned int shadowYOffset;
@property (nonatomic,assign) unsigned int transparency;
@property(nonatomic,retain) Shadows *textShadow;
@end
