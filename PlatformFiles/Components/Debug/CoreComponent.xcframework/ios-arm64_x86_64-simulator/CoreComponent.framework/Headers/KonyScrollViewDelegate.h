//
//  KonyScrollViewDelegate.h
//  VM
//
//  Created by Sunil Phani Manne on 5/24/12.
//  Copyright (c) 2012 Sunil Phani Manne. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CallBack.h"
#import "Widget.h"

#define PULL_TO_REFRESH_HEIGHT 40.0
#define PULL_TO_REFRESH_WIDTH 40.0


#define PULL_VIEW_KEY                                   @"pullView"
#define PULL_RELEASE_VIEW_KEY                           @"releasePullView"
#define PULL_REFRESHING_VIEW_KEY                        @"refreshingPullView"
#define PULL_ANIMATING_VIEW_KEY                         @"pullToRefreshIcon"

#define PUSH_VIEW_KEY                                   @"pushView"
#define PUSH_RELEASE_VIEW_KEY                           @"releasePushView"
#define PUSH_REFRESHING_VIEW_KEY                        @"refreshingPushView"
#define PUSH_ANIMATING_VIEW_KEY                         @"pushToRefreshIcon"

#define DEFAULT_PULL_VIEW_TEXT                          @"Pull to refresh..."
#define DEFAULT_PULL_RELEASE_VIEW_TEXT                  @"Release to refresh..."
#define DEFAULT_PULL_REFRESHING_VIEW_TEXT               @"Refreshing..."
#define DEFAULT_PULL_ANIMATING_VIEW_FILE_NAME           @"konyres_pulltorefresharrow"
#define DEFAULT_PULL_ANIMATING_VIEW_FILE_EXTENSION_NAME @"png"
#define DEFAULT_HSC_PULL_ANIMATING_VIEW_FILE_NAME       @"konyres_leftarrow"

#define DEFAULT_PUSH_VIEW_TEXT                          @"Push to refresh..."
#define DEFAULT_PUSH_RELEASE_VIEW_TEXT                  @"Release to refresh..."
#define DEFAULT_PUSH_REFRESHING_VIEW_TEXT               @"Refreshing..."
#define DEFAULT_PUSH_ANIMATING_VIEW_FILE_NAME           @"konyres_pulltorefresharrow"
#define DEFAULT_HSC_PUSH_ANIMATING_VIEW_FILE_NAME      @"konyres_rightarrow"
#define DEFAULT_PUSH_ANIMATING_VIEW_FILE_EXTENSION_NAME @"png"

#define PARENT_VIEW_VIEWPORT_HEIGHT                     @"height"
#define PARENT_VIEW_VIEWPORT_WIDTH                      @"frameWidth"

@interface KonyScrollViewDelegate:NSObject <UIScrollViewDelegate, CallBackListenerProtocol> {
@private
    
    CGPoint oldContentOffset;
    CGSize originalContentSize;
    
    //BOOL shouldEnableScrollToRefresh;       /** Indicates whether to enable Scroll To Refresh functionality*/
    BOOL isRefreshing;                                  /** Indicates whether the current ScrollView is being Refreshed */
    BOOL isBeingDragged;                            /** Indicates whether the current ScrollView is being Dragged */
    UIView* pullView;                                   /** View to be shown when the user pulls the Scroll View */
    UIView* releasePullView;                             /** View to be shown when the user pulled enough */
    UIView* refreshingPullView;                         /** View to be shown while being refreshed */
    UIImageView* animatingPullImageView;     /** Image to be animated when the user pulls the Scroll View */
    
    UIView* pushView;                                   /** View to be shown when the user pulls the Scroll View */
    UIView* releasePushView;                             /** View to be shown when the user pulled enough */
    UIView* refreshingPushView;                         /** View to be shown while being refreshed */
    UIImageView* animatingPushImageView;     /** Image to be animated when the user pulls the Scroll View */
    
    CallBack *onReachingStart;                      /** CallBack to be executed on reaching the start of the Scroll View */
    CallBack *onReachingEnd;                       /** CallBack to be executed on reaching the end of the Scroll View */
    CallBack *pullToRefreshAction;                /** CallBack to be executed on pulling the Scroll View */
    CallBack *pushToRefreshAction;              /** CallBack to be executed on pushing the Scroll View */ 
}

@property(nonatomic, weak) id <UIScrollViewDelegate> widget;

/*!
 * @brief Parent ScrollView to which the Pull Refresh
 * functionality has to be attached
 */
@property(nonatomic, weak) UIScrollView *parentScrollView;

@property(nonatomic, assign) BOOL shouldEnablePushToRefresh;
@property(nonatomic, assign) BOOL shouldEnablePullToRefresh;
@property(nonatomic, retain) UIView* pullView;
@property(nonatomic, retain) UIView* releasePullView;
@property(nonatomic, retain) UIView* refreshingPullView;
@property(nonatomic, retain) UIImageView* animatingPullImageView;
@property(nonatomic, retain) UIView* pushView;
@property(nonatomic, retain) UIView* releasePushView;
@property(nonatomic, retain) UIView* refreshingPushView;
@property(nonatomic, retain) UIImageView* animatingPushImageView;
@property(nonatomic, retain) CallBack* onReachingStart;
@property(nonatomic, retain) CallBack* onReachingEnd;
@property(nonatomic, retain) CallBack* pullToRefreshAction;
@property(nonatomic, retain) CallBack* pushToRefreshAction;
@property(nonatomic, assign) BOOL arePullViewsConfigured;
@property(nonatomic, assign) BOOL arePushViewsConfigured;

+(KonyScrollViewDelegate*) konyScrollViewDelegate;
-(id) initWithWidget: (Widget*) widget_;
-(id) initWithWidget: (Widget*) widget_ andScrollView: (UIScrollView*) scrollView_;
-(void) setupPullToRefreshViews: (NSDictionary*) viewsDictionary;
-(void) setupPullToRefreshViewsHSC: (NSDictionary*) viewsDictionary;
-(void) setupPushToRefreshViews: (NSDictionary*) viewsDictionary;
-(void) setupPushToRefreshViewsHSC: (NSDictionary*) viewsDictionary;
-(void) updatePullToRefreshViews: (NSDictionary*) viewsDictionary;
-(void) updatePullToRefreshViewsHSC: (NSDictionary*) viewsDictionary;
-(void) updatePushToRefreshViews: (NSDictionary*) viewsDictionary;
-(void) updatePushToRefreshViewsHSC: (NSDictionary*) viewsDictionary;
-(void) clearPullToRefreshViews;
-(void) clearPushToRefreshViews;



@end
