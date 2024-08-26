//
//  ScrollContainerModelWithNavigation.h
//  VM
//
//  Created by Amba on 27/03/14.
//
//

#import "ScrollContainerModel.h"

@interface ScrollContainerModelWithNavigation : ScrollContainerModel {
    BOOL                titleBar;
    NSString            *titleBarSkin;
    BOOL                renderTitleText;
    BOOL                animateTitleBar;
    NSString			*title; //
	NSString			*titleBarLeftSideView;
	NSString			*labelLeftSideView;
	NSString			*imageLeftSideView;
	NSString			*i18nlabelLeftSideView;
	NSString			*titleBarRightSideView;
	NSString			*labelRightSideView;
	NSString			*imageRightSideView;
	NSString			*i18nlabelRightSideView;
	NSString			*titleBarBackGroundImage;
    
    NSString			*skinIDLeftSideView;
    NSString			*skinIDRightSideView;
    
    NSMutableDictionary *titleBarConfig;
    
	id			closureRightSideView;
	id			closureLeftSideView;
    
    NSMutableDictionary *leftButtonAccessibilityConfig;
    NSMutableDictionary *rightButtonAccessibilityConfig;
}

@property (nonatomic)           BOOL                    titleBar;
@property (nonatomic, retain)	NSString*			titleBarSkin;
@property (nonatomic)           BOOL                    renderTitleText;
@property (nonatomic)           BOOL                    animateTitleBar;
@property (nonatomic, retain)	NSString*				title;
@property (nonatomic, retain)	NSString*				titleBarLeftSideView;
@property (nonatomic, retain)	NSString*				labelLeftSideView;
@property (nonatomic, retain)	NSString*				imageLeftSideView;
@property (nonatomic, retain)	NSString*				i18nlabelLeftSideView;
@property (nonatomic, retain)	NSString*				titleBarRightSideView;
@property (nonatomic, retain)	NSString*				labelRightSideView;
@property (nonatomic, retain)	NSString*				imageRightSideView;
@property (nonatomic, retain)	NSString*				i18nlabelRightSideView;
@property (nonatomic, retain)	NSString*				titleBarBackGroundImage;

@property (nonatomic, retain)	NSString*				skinIDLeftSideView;
@property (nonatomic, retain)	NSString*				skinIDRightSideView;

@property (nonatomic, retain)   NSMutableDictionary*    titleBarConfig;


@property (nonatomic, retain)	id				closureRightSideView;
@property (nonatomic, retain)	id				closureLeftSideView;

@property (nonatomic, retain)   NSMutableDictionary *leftButtonAccessibilityConfig;
@property (nonatomic, retain)   NSMutableDictionary *rightButtonAccessibilityConfig;

-(void) setTitleBarLeftSideButtonWithText: (NSString*) buttonText withImage: (NSString*) image andClosure: (CallBack*) buttonCallBack;
-(void) setTitleBarRightSideButtonWithText: (NSString*) buttonText withImage: (NSString*) image andClosure: (CallBack*) buttonCallBack;

-(void) setTitleBarLeftSideButtonWithText: (NSString*) buttonText withSkin: (NSString*) skin andClosure: (CallBack*) buttonCallBack;
-(void) setTitleBarRightSideButtonWithText: (NSString*) buttonText withSkin: (NSString*) skin andClosure: (CallBack*) buttonCallBack;

- (NSString *)getLeftButtonType;
- (NSString *)getRightButtonType;

-(Skin*) getSkinForIden:(NSString *)iden;

@end
