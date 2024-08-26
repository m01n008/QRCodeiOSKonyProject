//
//  TextBoxSkin.h
//  VM
//
//  Created by User Kasturi on 09/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <CoreComponent/Skin.h>


@interface TextAreaSkinModel : SkinModel 
{
    int transparency;
}
@property (readwrite,assign)  int transparency;

@end

@interface TextAreaSkin : Skin
{
    unsigned int transparency;
}

@property (readwrite,assign) unsigned int transparency;
@property (nonatomic,assign) BOOL useNative;

@end
