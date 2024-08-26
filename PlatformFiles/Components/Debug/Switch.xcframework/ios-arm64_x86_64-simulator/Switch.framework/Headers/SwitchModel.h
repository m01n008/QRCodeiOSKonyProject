//
//  SwitchModel.h
//  VM
//
//  Created by Rajeeva Ranjan on 28/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/WidgetModel.h>

@interface SwitchModel : WidgetModel {
    NSString *leftSideText;
    NSString *rightSideText;
    
	NSString *leftSideBgImgName;
	NSString *rightSideBgImgName;
	NSString *knobImgName;
	NSString *knobPressedImgName;
	NSString *trackImgName;
	NSString *trackPressedImgName;
    
    CallBack *onSlideCallBack;
    
    NSNumber *selectedIndex;
}

@property (nonatomic, retain) NSString *leftSideText;
@property (nonatomic, retain) NSString *rightSideText;

@property (nonatomic, retain) NSString *leftSideBgImgName;
@property (nonatomic, retain) NSString *rightSideBgImgName;
@property (nonatomic, retain) NSString *knobImgName;
@property (nonatomic, retain) NSString *knobPressedImgName;
@property (nonatomic, retain) NSString *trackImgName;
@property (nonatomic, retain) NSString *trackPressedImgName;

@property (nonatomic, retain) CallBack *onSlideCallBack;

@property (nonatomic, retain) NSNumber *selectedIndex;
@property (nonatomic) BOOL nativeThumbLook;

- (void)setSelectedIndexUtil:(NSNumber *)newSelectedIndex;

@end
