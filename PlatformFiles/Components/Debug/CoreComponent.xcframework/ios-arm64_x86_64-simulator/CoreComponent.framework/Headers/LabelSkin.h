//
//  LabelSkin.h
//  VM
//
//  Created by User on 22/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Skin.h"

@interface LabelSkinModel : SkinModel
{
    
@private
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

@interface LabelSkin : Skin
{
    UIColor *shadowColor;
    int shadowXOffset;
    int shadowYOffset;
    int transparency;
     Shadows *textShadow;
}

@property (nonatomic,retain) UIColor *shadowColor;
@property (nonatomic,assign) int shadowXOffset;
@property (nonatomic,assign) int shadowYOffset;
@property (nonatomic,assign) int transparency;
@property(nonatomic,retain) Shadows *textShadow;

@end
