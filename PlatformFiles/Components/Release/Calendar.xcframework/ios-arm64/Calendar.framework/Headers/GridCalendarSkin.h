//GridCalendarSkin//
//  GridCalendarSkin.h
//  VM
//
//  Created by KH165 on 09/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <CoreComponent/Skin.h>

@interface GridCalendarSkinModel : SkinModel
{
    NSString* gridLineColor;
    int daysFontColor;
    NSInteger daysFontWeight;
    NSString* daysFontStyle;
    NSUInteger daysFontSize;
    NSString* leftNavButtonImage;
    NSString* rightNavButtonImage;
    
}

@property (nonatomic,retain) NSString* gridLineColor;
@property (nonatomic) int daysFontColor;
@property (nonatomic, retain) NSString *daysFontName;
@property (nonatomic) NSInteger daysFontWeight;
@property (nonatomic, retain) NSString* daysFontStyle;
@property (nonatomic) NSUInteger daysFontSize;
@property (nonatomic, retain) NSString* leftNavButtonImage;
@property (nonatomic, retain) NSString* rightNavButtonImage;

@end

@interface GridCalendarSkin : Skin {
    UIColor     *gridLineColor;
    UIFont      *daysFont;
    UIColor     *daysFontColor;
    NSString    *daysFontStyle;
    NSString    *leftNavButtonImage;
    NSString    *rightNavButtonImage;
}
@property (nonatomic, retain) NSString* leftNavButtonImage;
@property (nonatomic, retain) NSString* rightNavButtonImage;

@property (nonatomic, retain) UIColor   *gridLineColor;
@property (nonatomic, retain) UIFont    *daysFont;
@property (nonatomic, retain) UIColor   *daysFontColor;
@property (nonatomic, retain) NSString  *daysFontStyle;

@end

