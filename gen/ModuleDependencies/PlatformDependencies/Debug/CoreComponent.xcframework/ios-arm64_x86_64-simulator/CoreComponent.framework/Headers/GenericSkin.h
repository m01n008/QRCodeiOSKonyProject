//
//  GenericSkin.h
//  VM
//
//  Created by User on 12/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Skin.h"

/**
 *  This is psuedo skin to handle skins without widget types.
 *
 *  Ideally this should be a generated class with properties pumped at runtime !
 */
@interface GenericSkinModel : SkinModel 
{
    int  shadowColor;
    int lineColor;
    int rightFontColor;
    int leftFontColor;
    int contentAlignment;
    int shadowXOffset;
    int shadowYOffset;
    int transparency;

    NSString *leftBackgroundImage;
    NSString *rightBackgroundImage;

    BOOL    useNative;
}

@property (readwrite,assign)  int   shadowColor;
@property (readwrite,assign)  int   lineColor;
@property (readwrite,assign)  int   rightFontColor;
@property (readwrite,assign)  int   leftFontColor;
@property (readwrite,assign)  int   contentAlignment;
@property (readwrite,assign)  int   shadowXOffset;
@property (readwrite,assign)  int   shadowYOffset;
@property (readwrite,assign)  int   transparency;

@property (readwrite,retain) NSString   *leftBackgroundImage;
@property (readwrite,retain) NSString   *rightBackgroundImage;

@property (readwrite,assign)  BOOL  useNative;

@end

@interface GenericSkin : Skin
{
    UIColor  *shadowColor;
    UIColor *lineColor;
    UIColor *rightFontColor;
    UIColor *leftFontColor;

    int contentAlignment;
    int shadowXOffset;
    int shadowYOffset;
    int transparency;
    NSString *leftBackgroundImage;
    NSString *rightBackgroundImage;

    BOOL    useNative;
}

@property (readwrite,assign)  int   contentAlignment;
@property (readwrite,assign)  int   shadowXOffset;
@property (readwrite,assign)  int   shadowYOffset;
@property (readwrite,assign)  int   transparency;
@property (readwrite,assign)  BOOL  useNative;

@property (readwrite,retain)  UIColor   *shadowColor;
@property (readwrite,retain)  UIColor   *lineColor;
@property (readwrite,retain)  UIColor   *rightFontColor;
@property (readwrite,retain)  UIColor   *leftFontColor;

@property (readwrite,retain) NSString   *leftBackgroundImage;
@property (readwrite,retain) NSString   *rightBackgroundImage;

@end
