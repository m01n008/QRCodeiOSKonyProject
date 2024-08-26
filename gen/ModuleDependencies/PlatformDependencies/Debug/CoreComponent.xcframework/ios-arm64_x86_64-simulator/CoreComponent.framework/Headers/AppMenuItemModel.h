//
//  AppMenuItemModel.h
//  VM
//
//  Created by KH206 on 08/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import "CallBack.h"

@interface AppMenuItemModel : NSObject
{
    NSString *itemID;
    NSString *itemName;
    CallBack *itemClosure;
    CallBack *itemPreClosure;
    NSString   *itemImage;
    BOOL      visible;
    NSString *badgeValue;
    NSString *startupForm;
    NSString *itemFocusImage;
}

@property (nonatomic, retain) NSString* itemID;
@property (nonatomic, retain) NSString* itemName;
@property (nonatomic, retain) CallBack* itemClosure;
@property (nonatomic, retain) CallBack* itemPreClosure;
@property (nonatomic, retain) NSString* itemImage;
@property (nonatomic)         BOOL      visible;
@property (nonatomic, retain) NSString* badgeValue;
@property (nonatomic, retain) NSString *startupForm;
@property (nonatomic, retain) NSString *itemFocusImage;
@property (nonatomic, retain) NSString *fontName;
@property (nonatomic, assign) CGFloat fontSize;
@property (nonatomic,strong) NSDictionary *accessibilityConfig;

+ (AppMenuItemModel*) appMenuItemmodelFromArray: (NSArray*) menuItemFields;

@end
