//
//  TabSkin.h
//  VM
//
//  Created by KH250 on 16/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/Skin.h>
#import <CoreComponent/SkinManager.h>

@interface TabSkinModel : SkinModel
{
    int transparency;
}

@property (readwrite,assign)  int transparency;

@end

@interface TabSkin : Skin
{
    unsigned int transparency;
}

@property (readwrite,assign) unsigned int transparency;
@property (nonatomic,assign) BOOL useNative;

@end
