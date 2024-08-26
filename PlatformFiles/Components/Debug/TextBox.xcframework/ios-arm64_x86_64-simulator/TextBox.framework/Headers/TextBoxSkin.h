//
//  TextBoxSkin.h
//  VM
//
//  Created by User Kasturi on 16/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <CoreComponent/Skin.h>


@interface TextBoxSkinModel : SkinModel 
{
    int transparency;
    BOOL useNative;
}

@property (readwrite,assign)  int transparency;
@property (nonatomic,assign) BOOL useNative;

@end

@interface TextBoxSkin : Skin
{
    unsigned int transparency;
    BOOL useNative;
}

@property (readwrite,assign) unsigned int transparency;
@property (nonatomic,assign) BOOL useNative;

@end
