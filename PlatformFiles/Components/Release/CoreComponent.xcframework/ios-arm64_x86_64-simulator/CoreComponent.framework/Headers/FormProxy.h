//
//  FormProxy.h
//  VM
//
//  Created by Sunil Phani Manne on 3/6/12.
//  Copyright (c) 2012 Sunil Phani Manne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseProxy.h"
#import "CallBack.h"
#import "FormModel.h"


@interface OldFormProxy : BaseProxy {
}


/** Behavior that gets forwarded to the appropriate responder */
+(id) createWidget: (NSDictionary*) config;
-(void) showForm;
-(void) destroy;
-(NSArray *) addToForm: (NSArray *) parameters withAnimationConfig:(NSDictionary*) animConfig;

-(void) setTitleBarLeftSideButtonWithText: (NSString*) buttonText withImage: (NSString*) image andClosure: (CallBack*) buttonCallBack;
-(void) setTitleBarRightSideButtonWithText: (NSString*) buttonText withImage: (NSString*) image andClosure: (CallBack*) buttonCallBack;
-(void) setTitleBarLeftSideButtonWithText: (NSString*) buttonText withSkin: (NSString*) skin andClosure: (CallBack*) buttonCallBack;
-(void) setTitleBarRightSideButtonWithText: (NSString*) buttonText withSkin: (NSString*) skin andClosure: (CallBack*) buttonCallBack;
-(void) showTitleBar: (BOOL) animate;
-(void) hideTitleBar: (BOOL) animate;
-(void) setBackgroundImageforNavbar:(NSString *) imageSource forBarMetrics:(KonyBarMetrics ) barMetrics;
-(void) setTitleVerticalPositionAdjustment:(NSNumber *) adjustment forBarMetrics:(KonyBarMetrics ) barMetrics;
-(CGFloat) getTitleVerticalPositionAdjustmentForBarMetrics:(KonyBarMetrics) barMetrics;
-(void) setHidesBackButton:(BOOL) hidesBackButton withAnimation:(BOOL) animated;
-(void) setLeftBarButtonItems:(NSMutableArray *) leftBarButtonItems withAnimation:(BOOL) animated;
-(void) setRightBarButtonItems:(NSMutableArray *) rightBarButtonItems withAnimation:(BOOL) animated;

//Redeclared model This avoids unnecessary typecastings in the code!
@property (nonatomic, readonly) FormModel *model;

@end

@interface FormProxy : OldFormProxy {
}


/** Behavior that gets forwarded to the appropriate responder */
+(id) createWidget: (NSDictionary*) config;
-(NSArray *) addWidget: (BaseProxy*) widget at: (NSNumber*) location withAnimationConfig:(NSDictionary*) animConfig;
- (BaseProxy*) removeWidgetAt: (NSNumber*) widgetLocation withAnimationConfig:(NSDictionary*) animConfig;
- (void) removeWidget: (BaseProxy*) widget;
-(NSArray*) widgets;

- (void) scrollToWidget: (BaseProxy*) subWidgetProxy withAnimation:(BOOL) animate;
- (void) scrollToTopWithAnimation:(BOOL) animate;
- (void) scrollToBottomWithAnimation:(BOOL) animate;
- (void)setDefaultUnit:(FlexLayoutDisplayUnit)defaultUnit;
- (void)setAppLevelWidgetConfig:(NSDictionary*) arguments;
- (void)forceLayout;
//- (void)scrollToEndWithAnimation:(BOOL) animate;
- (void)setContentOffset:(NSDictionary*) contentOffset withAnimation:(BOOL) animate;
- (void)setZoomScale:(NSNumber*) zoomScale withAnimation:(BOOL) animate;
- (void)zoomToRect:(NSDictionary*) rectToZoom withAnimation:(BOOL) animate;
- (void)removeAll;


@end
